# Social Pack — Guida-02: ZeroClaw + Telegram
*Generato da content-repurposer + agenti specializzati*

---

## 🐦 TWITTER/X — Thread (8 tweet)

**Tweet 1 — Hook**
Ho collegato la mia AI personale a Telegram in 10 minuti.
Adesso mi risponde dal telefono, 24/7, da un server che costa 4€/mese.
Ecco come l'ho fatto 🧵

**Tweet 2**
Il problema di ZeroClaw installato su VPS?
Per parlargli dovevi aprire il terminale, connetterti via SSH, digitare comandi.
Comodissimo. Alle 7 di mattina. Dal telefono. 😅

**Tweet 3**
La soluzione: collegarlo a Telegram.
3 passaggi. 10 minuti. Nessuna dipendenza extra.

**Tweet 4**
Passo 1 — Crea il bot con @BotFather su Telegram.
Scrivi /newbot, scegli un nome e uno username.
Ricevi un token API. Tienilo al sicuro.

**Tweet 5**
Passo 2 — Sul VPS:
```
zeroclaw onboard --channels-only
```
Selezioni Telegram, incolli il token, riavvii.
`systemctl restart zeroclaw`

**Tweet 6**
Passo 3 — Apri Telegram, cerca il tuo bot, premi Start.
Scrivi: "Ciao! Presentati in italiano."
Se risponde → ✅ fatto.

**Tweet 7**
Sicurezza: di default chiunque può scrivere al tuo bot.
Per limitarlo solo a te, aggiungi il tuo Telegram ID in config.toml:
`allowed_users = ["123456789"]`

**Tweet 8 — CTA**
Questa è la guida-02 della serie ZeroClaw in italiano.
La prima serie completa su questo framework in italiano.
Guida-01 (installazione) → [link]
Guida-02 (Telegram) → [link]
Seguimi per le prossime 👇

---

## 📸 INSTAGRAM — Caption post

**Versione A (educativa)**
La tua AI personale su Telegram. In 10 minuti. 📱

Hai ZeroClaw sul VPS ma per parlargli devi aprire il terminale?

Problema risolto: collegalo a Telegram e parlagli dal telefono, ovunque tu sia.

3 passaggi:
① Crea un bot con @BotFather
② Collega il token a ZeroClaw
③ Scrivi "Ciao" e aspetta la risposta

Server da 4€/mese. Sempre attivo. Sempre raggiungibile.

Guida completa nel link in bio 👆

#zeroclaw #ai #intelligenzaartificiale #telegram #vps #tutorial #techitaliano #agentiai #automazione #developer

---

**Versione B (personale/storytelling)**
Stamattina alle 7 ho scritto un messaggio dal telefono.
Mi ha risposto la mia AI personale. Dal mio server. In 3 secondi.

Non è magia. È ZeroClaw + Telegram.
Setup: 10 minuti.
Costo mensile: meno di un caffè.

Ho scritto la guida completa — link in bio.

#zeroclaw #ai #telegram #automazione #techitaliano #creator #intelligenzaartificiale

---

## 🎬 INSTAGRAM — Script Reel (60 secondi)

**[0-3 sec] — HOOK visivo + testo overlay**
Testo schermo: "Parla con la tua AI dal telefono"
Audio: "Hai un'AI sul server ma non riesci a parlarle dal telefono?"

**[3-10 sec] — Problema**
Testo schermo: "SSH dal telefono = incubo"
Audio: "Per risponderti deve aprire il terminale, connettersi via SSH... non esattamente comodo."

**[10-25 sec] — Soluzione**
Testo schermo: "La soluzione: Telegram"
Audio: "La soluzione è semplice: colleghi ZeroClaw a Telegram. Tre passaggi, dieci minuti."

**[25-45 sec] — Tutorial veloce**
Testo schermo (slide rapide):
① BotFather → /newbot → copia il token
② zeroclaw onboard --channels-only → incolla token
③ systemctl restart zeroclaw

Audio: "Apri Telegram, scrivi a BotFather, crea il bot. Sul server lanci un comando, incolli il token, riavvii. Fine."

**[45-55 sec] — Prova**
Testo schermo: "Ciao! Presentati in italiano."
Audio: "Apri il bot, scrivi ciao, e lui risponde. Dal tuo server. 24 ore su 24."

**[55-60 sec] — CTA**
Testo schermo: "Guida completa → link in bio"
Audio: "Guida completa nel link in bio. Questa è la serie ZeroClaw in italiano — seguimi per le prossime."

---

## 🤖 REDDIT — Post

**Subreddit consigliati:** r/italy, r/selfhosted, r/homelab, r/italytech

---

**Titolo:** Ho collegato ZeroClaw a Telegram in 10 minuti — guida in italiano

**Body:**

Ciao a tutti,

Sto documentando il mio percorso con ZeroClaw (framework AI in Rust, uscito a febbraio 2026) in italiano, perché non esiste ancora nulla di scritto nella nostra lingua su questo strumento.

Questa settimana ho pubblicato la seconda guida: come collegare l'agente AI a Telegram, così puoi parlargli dal telefono invece di usare il terminale ogni volta.

**In breve:**
- Crei un bot con @BotFather su Telegram (2 min)
- Esegui `zeroclaw onboard --channels-only` sul VPS e incolli il token (5 min)
- Riavvii il servizio e testi dal telefono (3 min)

L'agente gira 24/7 su un VPS Hetzner da 4€/mese. Consuma pochissima RAM (~5MB) ed è scritto in Rust quindi parte in millisecondi.

Guida completa qui: [link]

Se avete domande o volete contribuire alla documentazione italiana, sono qui.

---

*Note per Antonio: sostituisci [link] con l'URL Substack prima di pubblicare. Per Reddit usa un tono autentico — evita di sembrare spam. Posta prima in r/selfhosted o r/homelab dove il pubblico è tecnico e apprezza questo tipo di contenuto.*

---

## 📊 RIEPILOGO FORMATI

| Piattaforma | Formato | Stato |
|---|---|---|
| Twitter/X | Thread 8 tweet | ✅ Pronto |
| Instagram | Caption post (2 versioni) | ✅ Pronto |
| Instagram | Script Reel 60 sec | ✅ Pronto |
| Reddit | Post community | ✅ Pronto |
| Substack | Guida completa | ✅ già pubblicata |
