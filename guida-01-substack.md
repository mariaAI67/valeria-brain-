# Ho installato un'AI personale su un server da 5€. Ecco come farlo in 15 minuti.

*ZeroClaw è il framework AI che nessuno in Italia conosce ancora — e questo è un vantaggio.*

---

Qualche settimana fa ho scoperto ZeroClaw.

Non ne avevo mai sentito parlare. In italiano non c'era letteralmente nulla — nessuna guida, nessun tutorial, nessuna community. Solo documentazione in inglese e qualche thread su Reddit.

Eppure quando l'ho installato e l'ho visto girare sul mio VPS da 4€/mese, ho capito che stavo guardando qualcosa di diverso.

**Pesa meno di 9MB. Si avvia in 10 millisecondi. Usa 5MB di RAM.**

Per confronto: il suo principale concorrente usa oltre 1GB di RAM e impiega quasi 10 minuti per avviarsi.

Oggi ti mostro come installarlo. Non serve saper programmare. Serve solo un po' di pazienza e 15 minuti.

---

## Prima di iniziare: cosa ti serve

**Se vuoi installarlo su Windows** (per provarlo sul tuo PC):
- Windows 10 o 11, 64-bit
- Una chiave API da [openrouter.ai](https://openrouter.ai) — gratuito da registrare, poi paghi solo quello che usi

**Se vuoi installarlo su un VPS** (per tenerlo sempre attivo, 24/7):
- Un server Ubuntu — consiglio **Hetzner CX22**, circa 4€/mese
- Accesso SSH al server
- La stessa chiave API OpenRouter

Nessun'altra dipendenza. Nessun Docker, nessun Node.js, nessuna roba complicata.

---

## Installazione su Windows

### Passo 1 — Scarica il binario

Vai su [github.com/zeroclaw-labs/zeroclaw/releases](https://github.com/zeroclaw-labs/zeroclaw/releases), clicca sull'ultima versione stabile e scarica `zeroclaw-x86_64-pc-windows-msvc.zip`.

Estrai il file ZIP in una cartella semplice, ad esempio `C:\zeroclaw\`.

### Passo 2 — Aggiungi ZeroClaw al PATH

Questo passaggio ti permette di usare il comando `zeroclaw` da qualsiasi cartella.

1. Premi `Windows + S` → cerca **"Variabili d'ambiente"**
2. Clicca su **"Variabili d'ambiente..."**
3. Nella sezione **"Variabili utente"**, seleziona `Path` → **"Modifica"**
4. Clicca **"Nuovo"** e inserisci il percorso dove hai estratto ZeroClaw (es. `C:\zeroclaw\`)
5. OK su tutto

### Passo 3 — Verifica

Apri il prompt dei comandi (`Windows + R` → `cmd`) e digita:

```
zeroclaw --version
```

Se vedi `zeroclaw 0.1.7`, sei a posto. ✅

### Passo 4 — Configura

```
zeroclaw onboard --interactive
```

Ti chiederà provider AI (scegli `openrouter`), la tua chiave API e il canale. Per iniziare scegli `cli` — potrai aggiungere Telegram dopo.

---

## Installazione su VPS Linux (Ubuntu)

Questo è il setup che uso io. L'agente gira 24/7 sul server e risponde su Telegram.

### Connettiti al server

```bash
ssh root@IP_DEL_TUO_SERVER
```

### Aggiorna il sistema

```bash
apt update && apt upgrade -y
```

### Scarica il binario pre-compilato

Il metodo più veloce — nessuna compilazione, nessuna attesa:

```bash
cd /tmp
curl -L https://github.com/zeroclaw-labs/zeroclaw/releases/download/v0.1.7/zeroclaw-x86_64-unknown-linux-musl.tar.gz -o zeroclaw.tar.gz
tar -xzf zeroclaw.tar.gz
mv zeroclaw /usr/local/bin/
chmod +x /usr/local/bin/zeroclaw
```

Verifica:
```bash
zeroclaw --version
```

### Configura

```bash
zeroclaw onboard --interactive
```

Stessa procedura di Windows. Se vuoi usarlo via Telegram, scegli `telegram` come canale e inserisci il token del tuo bot.

### Avvialo come servizio permanente

Per farlo girare anche quando chiudi il terminale:

```bash
cat > /etc/systemd/system/zeroclaw.service << 'EOF'
[Unit]
Description=ZeroClaw AI Agent
After=network.target

[Service]
Type=simple
User=root
WorkingDirectory=/root/.zeroclaw/workspace
ExecStart=/usr/local/bin/zeroclaw daemon
Restart=on-failure
RestartSec=5
Environment=HOME=/root

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable zeroclaw
systemctl start zeroclaw
```

Verifica che sia attivo:
```bash
systemctl status zeroclaw
```

Se vedi `active (running)` in verde, il tuo agente AI è vivo. ✅

---

## Primo test

```bash
zeroclaw agent -m "Ciao! Presentati in italiano."
```

Dovresti ricevere una risposta entro pochi secondi.

Se qualcosa non va, questo comando ti dice esattamente cosa c'è che non va:
```bash
zeroclaw doctor
```

---

## Cosa puoi fare adesso

ZeroClaw installato è solo il punto di partenza. Nelle prossime guide vedremo:

- **Collegarlo a Telegram** — parla con il tuo agente AI dal telefono, ovunque tu sia
- **Dargli una personalità** — non un chatbot generico, ma un assistente costruito su misura per te
- **Aggiungere skills** — moduli specializzati per task specifici

Se vuoi seguire il percorso, iscriviti qui sotto. Le guide escono ogni settimana.

---

*Questa è la prima guida italiana su ZeroClaw. Se conosci qualcuno che potrebbe trovarla utile, condividila — aiuta molto.*

*— Valeria*

---

**Comandi di riferimento rapido**

| Comando | Cosa fa |
|---|---|
| `zeroclaw onboard --interactive` | Configurazione iniziale guidata |
| `zeroclaw agent -m "testo"` | Invia un messaggio all'agente |
| `zeroclaw daemon` | Avvia il runtime completo |
| `zeroclaw doctor` | Diagnostica problemi |
| `systemctl restart zeroclaw` | Riavvia il servizio (Linux) |
| `journalctl -u zeroclaw -f` | Log in tempo reale (Linux) |
