# MEMORY.md — Preferenze e Contesto di Antonio

*Ultimo aggiornamento: 2026-04-11*
*Questo file viene aggiornato da Valeria ogni sera tramite estrazione memoria.*

---

## Chi è Antonio

**Nome**: Antonio Galante
**Localizzazione**: Germania (timezone: Europe/Berlin)
**Contatto**: Telegram via ZeroClaw
**Progetto attuale**: **PMI.italia** — Dashboard SaaS per imprenditori italiani
**Background**: imprenditore, non developer
**Disponibilità**: ~2 ore al giorno, solitamente la sera

---

## Il Progetto: PMI.italia

**Cos'è**: Dashboard SaaS completa per le PMI italiane — suite per digitalizzare la gestione aziendale.
**Prodotto core**: PMI.italia — include dashboard realtime incassi, preventivi 2clic, fatture, pagamenti e scadenze automatiche.
**Prezzo**: A partire da €29/mese (piano base 1 utente), €59/mese (multi-utente).
**Target**: micro-imprese e artigiani italiani (1-10 dipendenti)
**Fase attuale**: costruzione dashboard + posizionamento contenuti social

**Roadmap a grandi linee:**
1. PMI.italia dashboard più performante e completa → IN SVILUPPO
2. Valeria stabile e autonoma nei processi → IN CORSO
3. Sistema di lead scraping per trovare clienti PMI → FUTURO
4. Outreach automatizzato → FUTURO

---

## Come Lavora Antonio

### Stile di comunicazione con Valeria
- Messaggi brevi, va al punto
- Non vuole risposte lunghe o verbose
- Preferisce vedere risultati concreti, non spiegazioni teoriche
- Quando qualcosa non funziona, vuole sapere COSA e PERCHÉ — non scuse

### Cosa lo irrita
- Valeria che dice \"Perfetto!\" o \"Assolutamente!\" in automatico
- Valeria che finge di aver fatto qualcosa
- Post generici che non fermano lo scroll
- Spiegazioni inutilmente lunghe
- Domande di approvazione per cose che dovrebbe fare in autonomia

### Cosa apprezza
- Autonomia vera: pubblica, esegui, poi riporta
- Onestà sugli errori
- Contenuti che insegnano qualcosa di concreto
- Report brevi e informativi

---

## Decisioni Prese (Non Ridiscutere)

| Decisione | Data | Motivo |
|-----------|------|--------|
| Modello default: x-ai/grok-4.1-fast | 2026-04-06 | Veloce, vision, economico |
| Gemini Pro VIETATO | 2026-03 | Costo insostenibile |
| Pubblica in autonomia senza approvazione | 2026-03 | Antonio vuole autonomia totale |
| Publisher ogni ora (non ogni 15 min) | 2026-03 | Troppo frequente rischiava spam |
| Post alle 13:00 e 18:00 | 2026-03 | Orari ottimali engagement |
| Pipeline immagini: HTML template → Puppeteer | 2026-04-06 | €0, nessuna API esterna |
| Template ruota settimanalmente (4 template) | 2026-04-06 | Brand coerente senza costi |
| Blotato: mantenere fino a maggio 2026 | 2026-04-06 | Abbonamento attivo fino al 3 maggio |
| Migrazione n8n dopo maggio | 2026-04-06 | Replacement gratuito Blotato |

---

## Preferenze Contenuti

### Cosa Antonio vuole vedere nei post
- Hook forte nella prima riga — DEVE fermare lo scroll
- Dati concreti o esempi reali (es. \"47 minuti → 120€ risparmiati\")
- Punto di vista controintuitivo (non il solito)
- CTA chiara e contestuale
- Immagine premium allegata (template settimanale PMI.italia)

### Cosa NON vuole vedere
- \"L'AI è il futuro!\" (troppo generico)
- Liste di 10 cose ovvie
- Post senza un angolo specifico
- Immagini brutte o placeholder

### Piattaforme prioritarie
1. Instagram (immagini + carousel)
2. LinkedIn (professionisti B2B)
3. Twitter/X (velocità, discussione)
4. TikTok (video — da sviluppare)
5. Substack (newsletter — Antonio pubblica manualmente)

---

## Budget e Risorse

- **Budget OpenRouter**: ~€19/mese
- **Vincolo**: non superare €5/mese in modelli AI
- **Grok 4.1 Fast**: ~€0.30 input / €0.90 output per milione token (economico)
- **Blotato**: abbonamento attivo fino al 3 maggio 2026
- **ZeroClaw VPS**: Hetzner 159.69.213.237

---

## Trust Level di Valeria

Basato su Felix Craft framework:

| Livello | Stato | Significa |
|---------|-------|-----------|
| 1 — Observer | ✅ Superato | Valeria monitora e riporta |
| 2 — Drafter | ✅ Superato | Crea contenuti per approvazione |
| 3 — Publisher | ✅ Attivo | Pubblica in autonomia |
| 4 — Strategist | ⏳ In sviluppo | Propone strategie e pivot |
| 5 — Partner | ⏳ Futuro | Decide la direzione del business |

---

## Note dalla Memoria Giornaliera

### 2026-03-25
- Dato interessante: contrasto tra uso dichiarato (16%) e nascosto (32%) di AI nelle PMI
- Tema \"nascosto anche quando vietata\" confermato come molto efficace per catturare attenzione

### 2026-04-04
- Articolo Substack creato con successo
- Post social mattina e sera creati e salvati in `content/ready-to-publish/`
- Estrazione memoria giornaliera completata
- Backup notturno eseguito correttamente

### 2026-04-06
- AUDIT VPS completato: sistema funzionante, identificati e risolti 4 problemi
- Modello cambiato: qwen → x-ai/grok-4.1-fast (tutti i 6 cron jobs aggiornati)
- Pipeline immagini NUOVA installata: HTML template + Puppeteer (€0, 4 template rotativi)
- Chromium installato sul VPS per screenshots headless
- Prossimo obiettivo: PMI.italia dashboard + lead generation system

### 2026-04-06 (Estrazione Giornaliera)
Nessun fatto duraturo identificato oggi. Contenuti temporanei: 6 post social pubblicati su FatturaFacile (tema: automazione fatture PDF per PMI, 16-32 ore/mese risparmiate).

### 2026-04-07 (Estrazione Giornaliera)
Nessun fatto duraturo identificato oggi. Contenuti temporanei: 6 post social pubblicati su FatturaFacile (tema: automazione fatture PDF per PMI, 260 ore/anno ISTAT, dashboard realtime incassi).

### 2026-04-09
2026-04-09 | Sanzione €270 per fattura elettronica (FE) in ritardo di soli 2 giorni | post Twitter mattina | prodotto
2026-04-09 | PMI italiane perdono 260 ore/anno in burocrazia manuale (PDF fornitori, Excel, scadenze) | post Instagram/LinkedIn mattina | prodotto
2026-04-09 | Automatizzazione fatture risparmia 208 ore/anno (da 260 totali) | post Instagram/LinkedIn sera | prodotto
2026-04-09 | Gestione manuale PDF fornitori ruba 4-6 ore/settimana | post Instagram mattina | prodotto

### 2026-04-10
2026-04-10 | Sanzione €270 per fattura elettronica (FE) in ritardo di soli 2 giorni | post multipli Twitter/Instagram/LinkedIn | prodotto
2026-04-10 | PMI italiane perdono 260 ore/anno in burocrazia manuale (PDF fornitori, Excel, scadenze) | post Instagram/LinkedIn mattina | prodotto
2026-04-10 | Automatizzazione fatture risparmia tempo significativo (es. 4-6 ore/settimana su PDF fornitori) | post Instagram/LinkedIn sera | prodotto

### 2026-04-11
Nessun nuovo fatto duraturo identificato oggi. I post ripetono statistiche già note (sanzione €270, 260 ore/anno ISTAT, 4-6h/settimana PDF manuali), confermate ma non nuove.