# va# PROGETTO VALERIA — DOCUMENTO MASTER
### Versione 1.0 — Marzo 2026

---

## VISIONE

Valeria è un agente AI pubblico che aiuta le PMI italiane ad adottare l'intelligenza artificiale e automatizzare i processi aziendali. Vende guide pratiche, workflow pronti all'uso, automazioni chiavi in mano e siti web. Cresce organicamente sui social, costruisce fiducia, poi converte.

**Antonio** impara insieme al progetto, supervisiona le decisioni chiave e dedica le sue 2 ore giornaliere solo a ciò che i tool non possono fare.

---

## NICCHIA E PUBBLICO

| Voce | Dettaglio |
|---|---|
| Nicchia | Workflow automation e AI per PMI italiane |
| Pubblico primario | Titolari e manager di PMI italiane (10-50 dipendenti) |
| Problema che sentono | Troppo lavoro manuale, processi non digitalizzati, non sanno da dove iniziare con l'AI |
| Lingua | Italiano (mercato meno saturo dell'inglese) |
| Canali social | Substack, X/Twitter, Instagram, TikTok |

---

## CHI FA COSA — RUOLI E RESPONSABILITÀ

### 🧑 ANTONIO — Founder e supervisore
**Dedica:** 2 ore/giorno  
**Fa lui:**
- Approva ogni contenuto prima della pubblicazione
- Approva ogni spesa (anche €1)
- Decide la direzione strategica quando ci sono dubbi
- Collega tool e sistemi quando i bot non arrivano
- Porta la voce umana dove serve (eventuale video o foto)

**NON fa:**
- Scrivere post da zero
- Cercare manualmente trend e idee
- Editare PDF e guide
- Postare manualmente sui social

---

### 🤖 CLAUDE (questo progetto) — Stratega e Operations
**Strumento:** Claude Pro + Projects (questa conversazione)  
**Fa:**
- Propone la strategia e aggiorna il piano
- Crea documenti, guide, script, automazioni
- Risolve problemi tecnici che Valeria segnala
- Scrive contenuti di qualità (guide PDF, post, script)
- Collega i puntini tra tutti i tool

**Come usarlo:** Antonio porta qui le decisioni da prendere, i problemi tecnici, le guide da creare

---

### 🤖 VALERIA (ZeroClaw su VPS) — Agente operativo quotidiano
**Strumento:** ZeroClaw v0.1.7 su VPS Hetzner + Telegram Bot  
**Team interno:** Marco (manager), Elena (repurposing), Luca (Twitter), Sofia (Instagram), Zara (TikTok)  
**Fa:**
- Routine notturna alle 02:00 → ricerca con Tavily, aggiorna il diario
- Report mattutino alle 08:00 via Telegram ad Antonio
- Proposta contenuti giornalieri alle 16:00
- Bozze di post per tutti i canali (da approvare)
- Aggiorna PROJECT_DIARY.md e VALERIA_RULES.md

**NON pubblica MAI senza approvazione esplicita di Antonio**

---

### 🔬 PERPLEXITY PRO — Ricerca e Intelligence
**Spazio:** "ValeriaAI" su Perplexity  
**Fa:**
- Ogni lunedì: report su 5 nicchie emergenti per PMI italiane
- 2-3 volte a settimana: aggiornamenti su AI, automazioni, tool nuovi
- Approfondimenti su richiesta

**Output:** Testi che vanno a Valeria come input per i contenuti

---

### 📚 NOTEBOOKLM — Biblioteca tecnica
**Come lo usa Antonio:** Carica video tutorial, PDF di guide, articoli tecnici su automazioni  
**Fa:**
- Risponde a domande tecniche specifiche basandosi sui materiali caricati
- Genera sintesi dei tutorial
- Estrae step operativi dai video

**Comunicazione con il resto del sistema:** Antonio copia le risposte rilevanti e le porta su Claude o Valeria

---

### 📢 BLOTATO — Distribuzione contenuti
**Fa:**
- Prende le bozze approvate da Antonio
- Le pubblica su tutti i canali (Substack, X, Instagram, TikTok)
- Gestisce il Content Calendar
- Account configurati: Instagram ✅ — X/Twitter (OAuth in attesa) — TikTok (ID 32302, da configurare) In alternativa Buffer, per costi minori e maggiore semplicità.

---

### ⚙️ N8N — Automazione flussi
**Gira su:** Docker, VPS Hetzner (già attivo)  
**Fa:**
- Collega tool diversi (Stripe → email, form → CRM, ecc.)
- Gestisce la consegna automatica dei prodotti via Resend
- Backup notturno workspace Valeria su GitHub

---

## PRODOTTI DA VENDERE (pipeline)

| Tipo prodotto | Prezzo indicativo | Stato |
|---|---|---|
| Guide PDF pratiche (20-30 pag) | €15–29 | Da creare |
| Workflow n8n pronti all'uso | €29–49 | Da creare |
| Automazioni chiavi in mano per PMI | €99–299 | Fase 2 |
| Siti web con AI integrata | €500–1500 | Fase 3 |

**Primo prodotto target:** Guida su come integrare l'AI in un processo aziendale specifico (es. gestione email, preventivi automatici, risposta clienti)

---

## FLUSSO OPERATIVO GIORNALIERO

```
02:00  Valeria — ricerca notturna con Tavily, aggiorna diario
08:00  Valeria — invia report su Telegram ad Antonio
08:15  Antonio — legge report (5 minuti), risponde con approvazioni/blocchi
16:00  Valeria — propone contenuti del giorno
16:15  Antonio — approva o modifica (10 minuti)
16:30  Blotato — pubblica i contenuti approvati
```

---

## FLUSSO SETTIMANALE

| Giorno | Attività |
|---|---|
| Lunedì | Perplexity → report nicchie; Antonio → revisione strategia settimanale |
| Martedì–Giovedì | Produzione contenuti + lavoro su prodotti |
| Venerdì | Claude → revisione settimana, piano settimana successiva |
| Ogni notte | n8n → backup workspace Valeria su GitHub |

---

## STACK TECNOLOGICO COMPLETO

| Tool | Ruolo | Stato |
|---|---|---|
| ZeroClaw v0.1.7 | Agente Valeria su VPS | ✅ Attivo |
| Claude Pro + Projects | Strategia + operations | ✅ Attivo |
| Blotato | Distribuzione social | ✅ Attivo (Instagram OK) |
| Perplexity Pro | Ricerca intelligence | ✅ Attivo |
| NotebookLM | Biblioteca tecnica | ✅ Attivo |
| n8n (Docker VPS) | Automazioni flussi | ✅ Attivo |
| Gemini Plus | Supporto AI aggiuntivo | ✅ Attivo |
| Tavily | Ricerca web per Valeria | ✅ Attivo |
| GitHub valeria-memory | Backup memoria | ✅ Creato |
| Stripe | Pagamenti | ⏳ Fase 2 |
| Resend | Email automatiche | ⏳ Fase 2 |
| Vercel | Landing page | ⏳ Fase 2 |
| VS Code / Cursor | Sviluppo tecnico | ✅ Disponibile |

---

## PROSSIMI PASSI IN ORDINE

### QUESTA SETTIMANA — Completare la base
1. **Configurare Tavily** in ZeroClaw (20 min) → Valeria può cercare autonomamente
2. **Creare USER.md** nel workspace di Valeria → sa chi è Antonio e le regole
3. **Configurare TikTok su Blotato** (account ID 32302) → flusso completo
4. **Riprovare OAuth X/Twitter** (@ValeriaAizero) → sono passati 2 giorni
5. **Costruire flusso-giornaliero.sh** → automatizza la routine delle 16:00

### SETTIMANA PROSSIMA — Primo prodotto
6. Valeria fa ricerca con Tavily → 3 bisogni concreti delle PMI italiane
7. Antonio sceglie il bisogno su cui lavorare
8. Claude scrive la prima guida PDF (20 pagine)
9. Antonio legge e approva
10. Valeria crea la landing page su Vercel

### MESE 2 — Lancio e prima vendita
11. Configurare Stripe con dati reali di Antonio
12. Configurare Resend per consegna automatica PDF
13. Primo post di lancio su tutti i canali
14. Monitoraggio e analisi risultati

---

## REGOLE NON NEGOZIABILI

1. Nessun contenuto pubblicato senza approvazione esplicita di Antonio
2. Nessuna spesa senza approvazione (anche €1)
3. Dati fiscali reali di Antonio ovunque ci siano contratti o pagamenti
4. Kill switch testato prima di ogni lancio: `zeroclaw daemon stop`
5. Aggiornare PROJECT_DIARY.md dopo ogni sessione
6. Ogni errore di Valeria va documentato in VALERIA_RULES.md — è materiale di training

---

## KPI PER VALUTARE LE NICCHIE (usati da Valeria)

- Almeno 50 post/mese su Reddit con problema non risolto
- Google Trends volume > 50
- Meno di 3 prodotti diretti in italiano sotto €30
- Profitto stimato > €1.500/mese (obiettivo primo lancio)

---

*Documento da caricare in: Claude Projects | Workspace Valeria (USER.md) | Space Perplexity ValeriaAI*  
*Aggiornare dopo ogni cambio strategico importante*leria-brain-
(conoscenze espandibili)
