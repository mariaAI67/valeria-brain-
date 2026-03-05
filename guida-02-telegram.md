# Collega ZeroClaw a Telegram in 10 minuti

**Guida per creator italiani — nessuna esperienza di programmazione richiesta**

---

## Introduzione

ZeroClaw installato sul server è già potente. Ma finché lo usi solo dal terminale, sei costretto ad aprire una connessione SSH ogni volta che vuoi parlargli.

Collegarlo a Telegram cambia tutto.

Da quel momento in poi, il tuo agente AI è sempre raggiungibile: dal telefono, dal tablet, dal PC — ovunque tu abbia Telegram. Mandi un messaggio, lui risponde. Niente terminali, niente SSH, niente complicazioni.

In questa guida ti mostro come farlo in tre passaggi:
1. Creare il bot su Telegram (2 minuti)
2. Collegarlo a ZeroClaw (5 minuti)
3. Testare che tutto funzioni (3 minuti)

**Prerequisiti:** ZeroClaw già installato e funzionante sul tuo VPS. Se non l'hai ancora fatto, segui prima la [guida-01 sull'installazione](#).

---

## Passo 1 — Crea il tuo bot su Telegram

Telegram ha un sistema ufficiale per creare bot: si chiama **BotFather** ed è lui che gestisce tutto.

### 1.1 Apri BotFather

1. Apri Telegram (da telefono o da desktop, va bene uguale)
2. Nella barra di ricerca digita `@BotFather`
3. Seleziona il profilo verificato (ha la spunta blu ✓)
4. Premi **Start** (o `/start` se non lo vedi)

### 1.2 Crea il nuovo bot

Invia questo comando a BotFather:

```
/newbot
```

BotFather ti chiederà due cose:

**Nome del bot** — è il nome che appare nella chat. Può essere qualsiasi cosa, ad esempio:
```
Valeria AI
```

**Username del bot** — deve essere unico su Telegram e finire obbligatoriamente con `_bot`. Ad esempio:
```
valeria_ai_bot
```

> Se l'username è già preso, prova ad aggiungere numeri o varianti: `valeria_ai_2026_bot`, `valeria_creator_bot`, ecc.

### 1.3 Copia il token

Quando il bot è creato, BotFather ti manda un messaggio con il **token API**. Sembra una stringa del tipo:

```
7384920156:AAHxKj2mN8pQrT5vWzYcBdEfGhIjKlMnOpQ
```

**Copialo e tienilo da parte** — ti servirà tra poco. Non condividerlo con nessuno: chi ha questo token controlla il tuo bot.

---

## Passo 2 — Collega il bot a ZeroClaw

Ora torna al terminale del tuo VPS (connettiti via SSH se non sei già collegato).

### 2.1 Avvia la configurazione canali

```bash
zeroclaw onboard --channels-only
```

Si apre una procedura guidata interattiva. Usa le **frecce della tastiera** per navigare e **Invio** per confermare.

1. Seleziona **Telegram** dalla lista dei canali disponibili
2. Premi Invio per confermare

### 2.2 Incolla il token

Quando il wizard ti chiede il **bot token**, incolla quello che ti ha dato BotFather:

```
Bot token: 7384920156:AAHxKj2mN8pQrT5vWzYcBdEfGhIjKlMnOpQ
```

Premi Invio. ZeroClaw si connette a Telegram e verifica che il token sia valido. Se tutto va bene, vedrai il nome del bot confermato.

### 2.3 Completa il wizard

Quando il wizard chiede altri parametri opzionali, puoi premere `*` e poi Invio per usare i valori predefiniti. Poi seleziona **Done** per concludere.

### 2.4 Configura il file config.toml (opzionale ma consigliato)

Il wizard ha già scritto la configurazione per te, ma puoi verificarla o personalizzarla aprendo il file:

```bash
cat ~/.zeroclaw/config.toml
```

Dovresti vedere una sezione simile a questa:

```toml
[channels_config.telegram]
bot_token = "7384920156:AAHxKj2mN8pQrT5vWzYcBdEfGhIjKlMnOpQ"
allowed_users = ["*"]
```

> **Nota su `allowed_users = ["*"]`:** Questo significa che chiunque può scrivere al tuo bot. Va bene per iniziare, ma se vuoi che risponda solo a te, sostituisci `"*"` con il tuo Telegram ID numerico. Lo trovi scrivendo `/start` al bot `@userinfobot` su Telegram.

### 2.5 Riavvia ZeroClaw

Se ZeroClaw è già in esecuzione come servizio systemd, riavvialo per applicare la nuova configurazione:

```bash
systemctl restart zeroclaw
```

Poi controlla i log per confermare che Telegram sia attivo:

```bash
journalctl -u zeroclaw -f
```

Dovresti vedere questa riga tra i log:

```
Telegram channel listening for messages...
```

Quando appare, il canale è attivo. Premi `Ctrl+C` per uscire dai log.

---

## Passo 3 — Testa il bot

### 3.1 Apri la chat con il tuo bot

Torna su Telegram. Usa il link che ti ha dato BotFather (tipo `t.me/valeria_ai_bot`) oppure cerca il nome del tuo bot nella barra di ricerca.

Premi **Start**.

### 3.2 Manda il primo messaggio

Scrivi qualcosa di semplice:

```
Ciao! Presentati in italiano.
```

Entro pochi secondi dovresti ricevere una risposta dall'agente AI. Se risponde, il collegamento funziona. ✅

### 3.3 Se non risponde — diagnostica rapida

Controlla i log in tempo reale mentre mandi un messaggio:

```bash
journalctl -u zeroclaw -f
```

| Cosa vedi nei log | Cosa significa | Soluzione |
|---|---|---|
| `Telegram channel listening for messages...` | Il canale è attivo | Controlla il token e `allowed_users` |
| `Telegram: ignoring message from unauthorized user` | Il tuo ID non è nella lista | Aggiungi il tuo Telegram ID a `allowed_users` |
| `Telegram poll error` | Problema di connessione | Verifica la connessione internet del VPS |
| Nessun log dopo il messaggio | Il daemon non è in esecuzione | Esegui `systemctl start zeroclaw` |

---

## Comandi utili in chat

Una volta collegato, puoi usare questi comandi direttamente nella chat Telegram con il tuo bot:

| Comando | Cosa fa |
|---|---|
| `/new` | Cancella la cronologia e inizia una nuova conversazione |
| `/models` | Mostra i provider AI disponibili e quello attualmente selezionato |
| `/model claude-sonnet-4-...` | Cambia il modello AI per questa sessione |

---

## Riepilogo

| Passo | Comando / Azione |
|---|---|
| Crea il bot | `@BotFather → /newbot` su Telegram |
| Configura il canale | `zeroclaw onboard --channels-only` sul VPS |
| Riavvia il servizio | `systemctl restart zeroclaw` |
| Controlla i log | `journalctl -u zeroclaw -f` |
| Verifica la config | `cat ~/.zeroclaw/config.toml` |

---

## Prossimi passi

Ora che il tuo agente risponde su Telegram, puoi:

1. **Personalizzare la personalità** — modifica `SOUL.md` e `IDENTITY.md` nella cartella `~/.zeroclaw/workspace/` per dare al tuo agente un carattere preciso
2. **Aggiungere skills** — estendi le capacità del tuo agente con moduli specializzati
3. **Limitare l'accesso** — sostituisci `"*"` in `allowed_users` con il tuo Telegram ID per sicurezza

Le guide su questi argomenti arrivano presto. Seguimi per non perdertele.

---

*Guida scritta da Valeria — la prima risorsa italiana su ZeroClaw*
*Versione: ZeroClaw v0.1.7 | Marzo 2026*
