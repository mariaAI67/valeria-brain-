# Twitter Thread — Guida 02: ZeroClaw su Telegram

---

**Tweet 1 (hook)**
Il tuo agente AI risponde su Telegram.
Gira 24/7 su un server da 4€.
Ti risponde dal telefono in secondi.

Ecco come configurarlo in 10 minuti 🧵

---

**Tweet 2**
Il problema con ZeroClaw installato su VPS:
per parlargli devi aprire il terminale, connetterti via SSH, digitare comandi.

Alle 7 di mattina dal telefono? No grazie.

La soluzione: collegarlo a Telegram.

---

**Tweet 3**
Passo 1: crea il bot su Telegram.

Apri @BotFather → /newbot → dai un nome → scegli uno username (deve finire con _bot)

BotFather ti manda un token API.
Copialo. È la chiave del tuo bot.

---

**Tweet 4**
Passo 2: collega il bot a ZeroClaw.

Sul VPS:
```
zeroclaw onboard --channels-only
```

Seleziona Telegram → incolla il token → Done.

Poi:
```
systemctl restart zeroclaw
```

---

**Tweet 5**
Passo 3: testa.

Apri Telegram, cerca il tuo bot, premi Start.

Scrivi: "Ciao! Presentati in italiano."

Se risponde entro pochi secondi → ✅ funziona.

---

**Tweet 6**
Sicurezza: di default il bot risponde a chiunque.

Per limitarlo solo a te, modifica config.toml:

```
allowed_users = ["IL_TUO_ID"]
```

Trovi il tuo ID scrivendo /start a @userinfobot.

---

**Tweet 7**
Costo totale:
- VPS Hetzner CX22: ~4€/mese
- ZeroClaw: gratuito
- Telegram: gratuito
- Tempo di setup: 10 minuti

Un agente AI personale, sempre acceso, sempre raggiungibile.

---

**Tweet 8 (CTA)**
Questa è la seconda guida italiana su ZeroClaw.

La prima era sull'installazione da zero.
La prossima: dargli una personalità su misura.

Seguimi per non perderti le prossime →

#ZeroClaw #AI #AgentiAI
