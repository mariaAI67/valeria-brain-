#!/bin/bash
# FLUSSO GIORNALIERO — Team Valeria
# Orario: 16:00 ogni giorno via cron
# Agente coordinatore: Marco (Manager)
#
# Flusso:
# 1. Marco genera il contenuto del giorno
# 2. Elena lo adatta per ogni piattaforma
# 3. Marco invia ad Antonio su Telegram per approvazione
# 4. Antonio approva o richiede modifiche
# 5. Pubblicazione su Instagram (e TikTok/Twitter quando pronti)

# ─────────────────────────────────────────
# CONFIGURAZIONE
# ─────────────────────────────────────────

BLOTATO_API_KEY="blt_KMWMQOMzf8az4pk5ew/zqldS0IvnGt4KRr6B4p6Yq7w="
INSTAGRAM_ACCOUNT_ID="34050"
TIKTOK_ACCOUNT_ID="32302"
TELEGRAM_BOT_TOKEN="${TELEGRAM_BOT_TOKEN}"
TELEGRAM_CHAT_ID="277833511"
WORKSPACE="/root/.zeroclaw/workspace"
PENDING_FILE="$WORKSPACE/pending_post.json"

# ─────────────────────────────────────────
# STEP 1 — MARCO genera il contenuto
# ─────────────────────────────────────────

DAY_OF_YEAR=$(date +%j | sed 's/^0*//')

TIPS=(
  "ZeroClaw pesa 3MB. ChatGPT usa 300x più risorse per fare le stesse cose. Meno bloat, più velocità. Il futuro degli agenti AI è leggero. 🦀"
  "Puoi installare un agente AI personale su un VPS da 4€/mese. Nessuna subscription. Nessun dato che va a terzi. Solo tu e la tua AI. 🔒"
  "ZeroClaw è scritto in Rust: zero garbage collector, zero crash a runtime. La stabilità non è un optional. ⚡"
  "Un agente AI che lavora mentre dormi non è fantascienza. È ZeroClaw con un cron job. Svegliati con il lavoro già fatto. 🌙"
  "In Italia nessuno parla ancora di ZeroClaw. Questo è il momento giusto per essere i primi. 🇮🇹"
  "La differenza tra ChatGPT e un agente AI: ChatGPT risponde. L'agente agisce. ZeroClaw agisce. 🎯"
  "Setup ZeroClaw: 15 minuti. Valore generato: ogni giorno. Il miglior investimento di tempo che puoi fare. ⏱️"
  "ZeroClaw può leggere file, scrivere codice, pubblicare contenuti, mandare messaggi. Tutto in automatico. 🤖"
  "Non serve essere developer per usare ZeroClaw. Serve solo sapere cosa vuoi automatizzare. 💡"
  "Un agente AI ben configurato è come avere un collaboratore che non dorme mai, non si stanca e non chiede aumenti. 😄"
)

TIP_INDEX=$((DAY_OF_YEAR % ${#TIPS[@]}))
TIP_BASE="${TIPS[$TIP_INDEX]}"

# ─────────────────────────────────────────
# STEP 2 — ELENA adatta per ogni piattaforma
# ─────────────────────────────────────────

# Instagram — più caldo, con hashtag
CAPTION_INSTAGRAM="💡 Tip del giorno

${TIP_BASE}

Seguimi per altri tip su ZeroClaw e agenti AI in italiano.

#ZeroClaw #AgentiAI #AI #Automazione #Rust #SelfHosted #TechItaliano #IntelligenzaArtificiale #Creator #DigitalMarketing"

# TikTok — più breve e diretto
CAPTION_TIKTOK="💡 ${TIP_BASE}

Seguimi per altri tip su ZeroClaw 🦀 #ZeroClaw #AI #Automazione #TechTok"

# ─────────────────────────────────────────
# STEP 3 — MARCO salva in pending e chiede approvazione
# ─────────────────────────────────────────

python3 -c "
import json
data = {
    'status': 'pending',
    'date': '$(date +%Y-%m-%d)',
    'tip_base': '''${TIP_BASE}''',
    'instagram': '''${CAPTION_INSTAGRAM}''',
    'tiktok': '''${CAPTION_TIKTOK}'''
}
with open('$PENDING_FILE', 'w') as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
print('Pending file salvato.')
"

# Messaggio Telegram ad Antonio
MESSAGE="🧠 *Marco — Report 16:00*

Contenuto pronto per la pubblicazione di oggi.

📸 *Instagram (@valeriaai.zero):*
${CAPTION_INSTAGRAM}

🎵 *TikTok (@valeriaia01):*
${CAPTION_TIKTOK}

---
Rispondi con:
✅ /approva — pubblica subito
✏️ /modifica [testo] — invia il testo corretto
❌ /annulla — salta oggi"

curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
  -H "Content-Type: application/json" \
  -d "{
    \"chat_id\": \"${TELEGRAM_CHAT_ID}\",
    \"text\": $(python3 -c "import json; print(json.dumps('$MESSAGE'))"),
    \"parse_mode\": \"Markdown\"
  }" > /dev/null

echo "✅ Marco: contenuto inviato ad Antonio per approvazione."
echo "In attesa di risposta su Telegram..."

# ─────────────────────────────────────────
# STEP 4 — Attesa approvazione (max 2 ore)
# ─────────────────────────────────────────

TIMEOUT=7200  # 2 ore in secondi
ELAPSED=0
INTERVAL=30

while [ $ELAPSED -lt $TIMEOUT ]; do
  sleep $INTERVAL
  ELAPSED=$((ELAPSED + INTERVAL))

  STATUS=$(python3 -c "
import json
try:
    with open('$PENDING_FILE') as f:
        data = json.load(f)
    print(data.get('status', 'pending'))
except:
    print('pending')
")

  if [ "$STATUS" = "approved" ]; then
    echo "✅ Antonio ha approvato. Pubblicazione in corso..."
    break
  elif [ "$STATUS" = "modified" ]; then
    echo "✏️ Antonio ha richiesto modifiche. Aggiorno il contenuto..."
    # Rileggo il contenuto modificato
    CAPTION_INSTAGRAM=$(python3 -c "
import json
with open('$PENDING_FILE') as f:
    data = json.load(f)
print(data.get('instagram', ''))
")
    CAPTION_TIKTOK=$(python3 -c "
import json
with open('$PENDING_FILE') as f:
    data = json.load(f)
print(data.get('tiktok', ''))
")
    break
  elif [ "$STATUS" = "cancelled" ]; then
    echo "❌ Antonio ha annullato. Nessuna pubblicazione oggi."
    exit 0
  fi
done

if [ $ELAPSED -ge $TIMEOUT ]; then
  echo "⏰ Timeout: nessuna risposta dopo 2 ore. Pubblicazione annullata."
  exit 0
fi

# ─────────────────────────────────────────
# STEP 5 — SOFIA pubblica su Instagram
# ─────────────────────────────────────────

JSON_INSTAGRAM=$(python3 -c "
import json
body = {
    'post': {'text': '''${CAPTION_INSTAGRAM}'''},
    'targets': [{'accountId': '${INSTAGRAM_ACCOUNT_ID}'}]
}
print(json.dumps(body))
")

RESPONSE_IG=$(curl -s -w "\n%{http_code}" -X POST "https://backend.blotato.com/v2/posts" \
  -H "blotato-api-key: ${BLOTATO_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "$JSON_INSTAGRAM")

CODE_IG=$(echo "$RESPONSE_IG" | tail -n1)

if [ "$CODE_IG" = "200" ] || [ "$CODE_IG" = "201" ]; then
  echo "✅ Sofia: Instagram pubblicato!"
  IG_STATUS="✅ Instagram pubblicato"
else
  echo "❌ Sofia: errore Instagram (HTTP $CODE_IG)"
  IG_STATUS="❌ Instagram errore ($CODE_IG)"
fi

# ─────────────────────────────────────────
# STEP 5b — ZARA pubblica su TikTok
# ─────────────────────────────────────────

JSON_TIKTOK=$(python3 -c "
import json
body = {
    'post': {'text': '''${CAPTION_TIKTOK}'''},
    'targets': [{'accountId': '${TIKTOK_ACCOUNT_ID}'}]
}
print(json.dumps(body))
")

RESPONSE_TT=$(curl -s -w "\n%{http_code}" -X POST "https://backend.blotato.com/v2/posts" \
  -H "blotato-api-key: ${BLOTATO_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "$JSON_TIKTOK")

CODE_TT=$(echo "$RESPONSE_TT" | tail -n1)

if [ "$CODE_TT" = "200" ] || [ "$CODE_TT" = "201" ]; then
  echo "✅ Zara: TikTok pubblicato!"
  TT_STATUS="✅ TikTok pubblicato"
else
  echo "❌ Zara: errore TikTok (HTTP $CODE_TT)"
  TT_STATUS="❌ TikTok errore ($CODE_TT)"
fi

# ─────────────────────────────────────────
# STEP 6 — MARCO invia report finale ad Antonio
# ─────────────────────────────────────────

REPORT="🧠 *Marco — Report pubblicazione*

${IG_STATUS}
${TT_STATUS}

Contenuto pubblicato:
_${TIP_BASE}_

Buon lavoro! 🦀"

curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
  -H "Content-Type: application/json" \
  -d "{
    \"chat_id\": \"${TELEGRAM_CHAT_ID}\",
    \"text\": $(python3 -c "import json; print(json.dumps('$REPORT'))"),
    \"parse_mode\": \"Markdown\"
  }" > /dev/null

echo "✅ Marco: report finale inviato ad Antonio."
