# Il tuo agente AI risponde su Telegram. In 10 minuti.

*Guida pratica per chi ha già installato ZeroClaw — e vuole parlargli dal telefono.*

---

La settimana scorsa ti ho mostrato come installare ZeroClaw su un VPS da 4€.

Funziona. È veloce. Usa pochissima RAM.

Ma c'è un problema: per parlargli devi aprire il terminale, connetterti via SSH, e digitare comandi. Non esattamente comodo dal telefono alle 7 di mattina.

La soluzione è semplice: **collegarlo a Telegram**.

Da quel momento, il tuo agente AI è sempre raggiungibile — dal telefono, dal tablet, da qualsiasi dispositivo. Mandi un messaggio, lui risponde. Niente terminali, niente SSH.

Ecco come farlo in tre passaggi.

---

## Cosa ti serve prima di iniziare

- ZeroClaw già installato e funzionante sul VPS (se non l'hai ancora fatto, [segui prima la guida-01](#))
- Telegram installato sul telefono o desktop
- 10 minuti

---

## Passo 1 — Crea il tuo bot su Telegram (2 minuti)

Telegram ha un sistema ufficiale per creare bot. Si chiama **BotFather** — ed è lui che ti dà le chiavi del regno.

**Apri Telegram** e cerca `@BotFather` nella barra di ricerca. Seleziona il profilo verificato (ha la spunta blu ✓) e premi **Start**.

Poi invia questo comando:

```
/newbot
```

BotFather ti chiede due cose:

**1. Il nome del bot** — quello che appare nella chat. Metti quello che vuoi, ad esempio:
```
Valeria AI
```

**2. Lo username** — deve essere unico su Telegram e finire con `_bot`:
```
valeria_ai_bot
```

Se è già preso, prova con varianti: `valeria_creator_bot`, `valeria_ai_2026_bot`, ecc.

Quando il bot è creato, BotFather ti manda un **token API** — una stringa lunga che sembra questa:

```
7384920156:AAHxKj2mN8pQrT5vWzYcBdEfGhIjKlMnOpQ
```

**Copiala e tienila al sicuro.** Chi ha questo token controlla il tuo bot.

---

## Passo 2 — Collega il bot a ZeroClaw (5 minuti)

Torna al terminale del tuo VPS (connettiti via SSH se non sei già collegato).

**Avvia la configurazione canali:**

```bash
zeroclaw onboard --channels-only
```

Si apre una procedura guidata. Usa le frecce della tastiera per navigare, Invio per confermare.

1. Seleziona **Telegram** dalla lista
2. Quando chiede il **bot token**, incolla quello che ti ha dato BotFather
3. Per i parametri opzionali, premi `*` e Invio per usare i valori predefiniti
4. Seleziona **Done** per concludere

**Riavvia ZeroClaw** per applicare la configurazione:

```bash
systemctl restart zeroclaw
```

Poi controlla i log per confermare che Telegram sia attivo:

```bash
journalctl -u zeroclaw -f
```

Quando vedi questa riga, sei a posto:

```
Telegram channel listening for messages...
```

Premi `Ctrl+C` per uscire dai log.

---

## Passo 3 — Testa il bot (3 minuti)

Torna su Telegram. Usa il link che ti ha dato BotFather (tipo `t.me/valeria_ai_bot`) oppure cerca il nome del tuo bot.

Premi **Start** e manda un messaggio:

```
Ciao! Presentati in italiano.
```

Se risponde entro pochi secondi, hai finito. ✅

---

## Se non risponde — diagnostica rapida

Apri i log mentre mandi un messaggio:

```bash
journalctl -u zeroclaw -f
```

| Cosa vedi | Soluzione |
|---|---|
| `ignoring message from unauthorized user` | Aggiungi il tuo Telegram ID a `allowed_users` in `config.toml` |
| `Telegram poll error` | Verifica la connessione internet del VPS |
| Nessun log dopo il messaggio | Esegui `systemctl start zeroclaw` |

> **Trovare il tuo Telegram ID:** scrivi `/start` al bot `@userinfobot` su Telegram — ti risponde con il tuo ID numerico.

---

## Un consiglio sulla sicurezza

Di default, ZeroClaw accetta messaggi da chiunque conosca il nome del tuo bot.

Se vuoi che risponda solo a te, apri il file di configurazione:

```bash
cat ~/.zeroclaw/config.toml
```

E sostituisci `"*"` con il tuo Telegram ID numerico:

```toml
[channels_config.telegram]
bot_token = "il-tuo-token"
allowed_users = ["123456789"]
```

Poi riavvia: `systemctl restart zeroclaw`.

---

## Cosa puoi fare adesso

Hai un agente AI che risponde su Telegram, gira 24/7 sul tuo VPS, e costa meno di un caffè al mese.

Nelle prossime guide vedremo:

- **Dargli una personalità** — non un chatbot generico, ma un assistente costruito su misura per te
- **Aggiungere skills** — moduli specializzati per task specifici
- **Automatizzare task ricorrenti** — report, promemoria, workflow

Se vuoi seguire il percorso, iscriviti qui sotto.

---

*Questa è la seconda guida italiana su ZeroClaw. Se conosci qualcuno che potrebbe trovarla utile, condividila.*

*— Valeria*

---

**Comandi di riferimento rapido**

| Comando | Cosa fa |
|---|---|
| `zeroclaw onboard --channels-only` | Configura i canali (Telegram, ecc.) |
| `systemctl restart zeroclaw` | Riavvia il servizio |
| `journalctl -u zeroclaw -f` | Log in tempo reale |
| `cat ~/.zeroclaw/config.toml` | Verifica la configurazione |
| `/new` (in chat Telegram) | Inizia una nuova conversazione |
| `/models` (in chat Telegram) | Mostra i modelli AI disponibili |
