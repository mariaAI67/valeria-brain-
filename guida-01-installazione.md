# Come installare ZeroClaw su Windows e VPS in 15 minuti

**Guida per creator italiani — nessuna esperienza di programmazione richiesta**

---

## Introduzione

ZeroClaw è il framework AI più leggero che esiste: scritto in Rust, pesa meno di 9MB, si avvia in meno di 10 millisecondi e consuma meno di 5MB di RAM. Per capire quanto sia straordinario, considera che il suo principale concorrente (OpenClaw) usa oltre 1GB di RAM e impiega quasi 10 minuti ad avviarsi.

In pratica: puoi far girare ZeroClaw su un server da 5€/mese o persino su un Raspberry Pi da 10€. È l'assistente AI personale che puoi davvero possedere e controllare — senza dipendere da abbonamenti costosi o piattaforme di terzi.

In questa guida ti mostro come installarlo in due scenari:
- **Windows** (per iniziare a sperimentare sul tuo PC)
- **VPS Linux** (per tenerlo sempre attivo, 24/7)

Tempo stimato: **15 minuti**.

---

## Requisiti

### Per Windows
- Windows 10 o Windows 11 (64-bit)
- Connessione internet
- Almeno 2GB di spazio libero su disco (serve per la compilazione)
- Una chiave API di un provider AI — consiglio **OpenRouter** (gratuito da registrare, poi paghi solo quello che usi)

### Per VPS Linux
- Un server Ubuntu 22.04 o 24.04 (consiglio **Hetzner CX22** a ~4€/mese)
- Accesso SSH al server
- Una chiave API OpenRouter (o Anthropic, OpenAI, ecc.)

### Cosa ti serve in entrambi i casi
- Un account su [openrouter.ai](https://openrouter.ai) per ottenere la chiave API
- 10-15 minuti di tempo

> **Nota:** Non devi sapere programmare. Dovrai copiare e incollare alcuni comandi, ma ti spiego ogni passaggio.

---

## Installazione passo-passo

### OPZIONE A — Windows

#### Passo 1: Scarica il binario pre-compilato

Il modo più semplice su Windows è scaricare direttamente il file eseguibile, senza compilare nulla.

1. Vai su [github.com/zeroclaw-labs/zeroclaw/releases](https://github.com/zeroclaw-labs/zeroclaw/releases)
2. Clicca sull'ultima versione stabile (es. `v0.1.7`)
3. Nella sezione **Assets**, scarica `zeroclaw-x86_64-pc-windows-msvc.zip`
4. Estrai il file ZIP in una cartella a tua scelta, ad esempio `C:\zeroclaw\`

#### Passo 2: Aggiungi ZeroClaw al PATH di sistema

Questo passaggio permette di usare il comando `zeroclaw` da qualsiasi cartella.

1. Premi `Windows + S` e cerca **"Variabili d'ambiente"**
2. Clicca su **"Modifica le variabili d'ambiente relative al sistema"**
3. Clicca su **"Variabili d'ambiente..."**
4. Nella sezione **"Variabili utente"**, seleziona `Path` e clicca **"Modifica"**
5. Clicca **"Nuovo"** e inserisci il percorso dove hai estratto ZeroClaw (es. `C:\zeroclaw\`)
6. Clicca OK su tutte le finestre

#### Passo 3: Apri il terminale e verifica

1. Premi `Windows + R`, digita `cmd` e premi Invio
2. Digita:
```
zeroclaw --version
```
Se vedi un numero di versione (es. `zeroclaw 0.1.7`), l'installazione è riuscita. ✅

#### Passo 4: Configura ZeroClaw

Avvia la procedura guidata interattiva:
```
zeroclaw onboard --interactive
```

Ti verrà chiesto:
- **Provider AI:** scegli `openrouter`
- **API Key:** incolla la tua chiave da openrouter.ai
- **Canale:** scegli `cli` per iniziare (potrai aggiungere Telegram o Discord dopo)

ZeroClaw creerà automaticamente la cartella di configurazione in `C:\Users\TuoNome\.zeroclaw\`.

---

### OPZIONE B — VPS Linux (Ubuntu)

#### Passo 1: Connettiti al server

Apri il terminale (su Windows usa PowerShell o scarica [PuTTY](https://putty.org)) e connettiti:
```bash
ssh root@IP_DEL_TUO_SERVER
```

Sostituisci `IP_DEL_TUO_SERVER` con l'indirizzo IP che ti ha dato Hetzner (o il tuo provider VPS).

#### Passo 2: Aggiorna il sistema

```bash
apt update && apt upgrade -y
```

---

#### 🟢 METODO RAPIDO — Binario pre-compilato (consigliato)

Il modo più veloce: scarica direttamente il binario già pronto da GitHub, senza installare Rust né compilare nulla.

**Passo 3a: Scarica il binario**

```bash
cd /tmp
curl -L https://github.com/zeroclaw-labs/zeroclaw/releases/download/v0.1.7/zeroclaw-x86_64-unknown-linux-musl.tar.gz -o zeroclaw.tar.gz
tar -xzf zeroclaw.tar.gz
mv zeroclaw /usr/local/bin/
chmod +x /usr/local/bin/zeroclaw
```

Verifica che funzioni:
```bash
zeroclaw --version
```
Dovresti vedere `zeroclaw 0.1.7`. ✅ Vai direttamente al **Passo 4**.

---

#### 🔧 METODO AVANZATO — Compilazione da sorgente (opzionale)

Scegli questo percorso solo se vuoi l'ultima versione non ancora rilasciata, o se il binario pre-compilato non funziona sul tuo sistema.

**Passo 3b: Installa le dipendenze e Rust**

```bash
apt install -y build-essential pkg-config git curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Quando ti chiede le opzioni, premi `1` (installazione predefinita) e poi Invio. Poi attiva Rust nella sessione corrente:

```bash
source $HOME/.cargo/env
```

**Passo 3c: Scarica e compila ZeroClaw**

```bash
git clone https://github.com/zeroclaw-labs/zeroclaw.git
cd zeroclaw
cargo build --release --locked
cargo install --path . --force --locked
```

> ⏱️ **Attenzione:** La compilazione richiede 5-10 minuti su un VPS standard. È normale — succede solo la prima volta. Puoi andare a farti un caffè ☕

---

#### Passo 4: Configura ZeroClaw

```bash
zeroclaw onboard --interactive
```

La procedura guidata ti chiederà:
- **Provider:** `openrouter` (o `anthropic` se hai una chiave Claude)
- **API Key:** incolla la tua chiave API
- **Canale:** scegli `telegram` se vuoi usarlo via Telegram, oppure `cli` per testare dal terminale

#### Passo 5: Avvia come servizio permanente (systemd)

Per far girare ZeroClaw 24/7 anche quando chiudi il terminale, devi creare un servizio systemd manualmente. Copia e incolla questi comandi uno alla volta:

**1. Crea il file di servizio:**

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
```

**2. Attiva e avvia il servizio:**

```bash
systemctl daemon-reload
systemctl enable zeroclaw
systemctl start zeroclaw
```

**3. Verifica che sia attivo:**

```bash
systemctl status zeroclaw
```

Se vedi `active (running)` in verde, ZeroClaw è attivo e si riavvierà automaticamente anche dopo un riavvio del server. ✅

**Comandi utili per gestire il servizio:**

```bash
systemctl stop zeroclaw      # Ferma il servizio
systemctl restart zeroclaw   # Riavvia (utile dopo modifiche alla config)
journalctl -u zeroclaw -f    # Visualizza i log in tempo reale
```

---

## Primo test

Ora verifichiamo che tutto funzioni.

### Test rapido da riga di comando

```bash
zeroclaw agent -m "Ciao! Presentati in italiano."
```

Dovresti ricevere una risposta dall'AI entro pochi secondi.

### Test diagnostico

Se qualcosa non va, questo comando ti dice esattamente cosa c'è che non va:

```bash
zeroclaw doctor
```

ZeroClaw controllerà la connessione al provider AI, la configurazione dei canali e la memoria. Ogni voce mostrerà ✅ o ❌ con una spiegazione.

### Dove si trova la configurazione

Il file di configurazione principale è:
- **Windows:** `C:\Users\TuoNome\.zeroclaw\config.toml`
- **Linux:** `~/.zeroclaw/config.toml`

Puoi aprirlo con qualsiasi editor di testo. Cambiare il modello AI, ad esempio, è semplice come modificare una riga:

```toml
default_model = "anthropic/claude-sonnet-4-20250514"
```

---

## Riepilogo comandi utili

| Comando | Cosa fa |
|---|---|
| `zeroclaw onboard --interactive` | Configurazione guidata iniziale |
| `zeroclaw agent -m "testo"` | Invia un messaggio all'agente |
| `zeroclaw agent` | Modalità chat interattiva |
| `zeroclaw daemon` | Avvia il runtime completo (tutti i canali) |
| `zeroclaw status` | Mostra lo stato del sistema |
| `zeroclaw doctor` | Diagnostica problemi |
| `systemctl restart zeroclaw` | Riavvia il servizio su Linux |
| `journalctl -u zeroclaw -f` | Log in tempo reale su Linux |

---

## Prossimi passi

Ora che ZeroClaw è installato e funzionante, puoi:

1. **Collegarlo a Telegram** — ricevi e manda messaggi al tuo agente AI direttamente da Telegram
2. **Personalizzare la personalità** — modifica i file `SOUL.md` e `IDENTITY.md` nella cartella workspace
3. **Aggiungere skills** — estendi le capacità del tuo agente con moduli specializzati

Le guide su questi argomenti arrivano presto. Seguimi per non perdertele.

---

*Guida scritta da Valeria — la prima risorsa italiana su ZeroClaw*
*Versione: ZeroClaw v0.1.7 | Marzo 2026*
