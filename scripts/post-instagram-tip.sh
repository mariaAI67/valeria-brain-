#!/bin/bash
# Post giornaliero Instagram via Blotato API
# Account: @valeriaai.zero (ID: 34050)

ACCOUNT_ID="34050"
BLOTATO_API_KEY="blt_KMWMQOMzf8az4pk5ew/zqldS0IvnGt4KRr6B4p6Yq7w="

# Lista di tip rotanti (basata sul giorno dell'anno)
DAY_OF_YEAR=$(date +%j | sed 's/^0*//')
TIPS=(
  "ZeroClaw pesa 3MB. ChatGPT usa 300x più risorse per fare le stesse cose. Meno bloat, più velocità. Il futuro degli agenti AI è leggero. 🦀 #ZeroClaw #AI"
  "Puoi installare un agente AI personale su un VPS da 4€/mese. Nessuna subscription. Nessun dato che va a terzi. Solo tu e la tua AI. 🔒 #ZeroClaw #SelfHosted"
  "ZeroClaw è scritto in Rust: zero garbage collector, zero crash a runtime. La stabilità non è un optional. ⚡ #Rust #ZeroClaw #AgentiAI"
  "Un agente AI che lavora mentre dormi non è fantascienza. È ZeroClaw con un cron job. Svegliati con il lavoro già fatto. 🌙 #Automazione #ZeroClaw"
  "In Italia nessuno parla ancora di ZeroClaw. Questo è il momento giusto per essere i primi. 🇮🇹 #ZeroClaw #FirstMover"
  "La differenza tra ChatGPT e un agente AI: ChatGPT risponde. L'agente agisce. ZeroClaw agisce. 🎯 #AgentiAI #ZeroClaw"
  "Setup ZeroClaw: 15 minuti. Valore generato: ogni giorno. Il miglior investimento di tempo che puoi fare per la tua produttività. ⏱️ #ZeroClaw #Produttività"
  "ZeroClaw può leggere file, scrivere codice, pubblicare contenuti, mandare messaggi. Tutto in automatico. Tutto sotto il tuo controllo. 🤖 #AI #ZeroClaw"
  "Non serve essere developer per usare ZeroClaw. Serve solo sapere cosa vuoi automatizzare. Il resto lo fa lui. 💡 #NoCode #ZeroClaw"
  "Un agente AI ben configurato è come avere un collaboratore che non dorme mai, non si stanca e non chiede aumenti. 😄 #ZeroClaw #Automazione"
)

# Selezione tip del giorno (rotazione ciclica)
TIP_INDEX=$((DAY_OF_YEAR % ${#TIPS[@]}))
TIP_TEXT="💡 Tip del giorno: ${TIPS[$TIP_INDEX]}"

# JSON body
JSON_BODY=$(python3 -c "
import json, sys
tip = sys.argv[1]
body = {
    'post': {
        'accountId': '34050',
        'content': {
            'text': tip,
            'mediaUrls': [],
            'platform': 'instagram'
        },
        'target': {
            'targetType': 'instagram'
        }
    }
}
print(json.dumps(body))
" "$TIP_TEXT")

# Chiamata API Blotato
RESPONSE=$(curl -s -w "\n%{http_code}" -X POST "https://backend.blotato.com/v2/posts" \
  -H "blotato-api-key: ${BLOTATO_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "$JSON_BODY")

HTTP_CODE=$(echo "$RESPONSE" | tail -n1)
BODY=$(echo "$RESPONSE" | head -n-1)

if [ "$HTTP_CODE" = "200" ] || [ "$HTTP_CODE" = "201" ]; then
  echo "✅ Post pubblicato con successo (HTTP $HTTP_CODE)"
  echo "Tip: $TIP_TEXT"
else
  echo "❌ Errore pubblicazione (HTTP $HTTP_CODE)"
  echo "Response: $BODY"
  exit 1
fi
