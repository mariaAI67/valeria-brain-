# MEMORY.md — Preferenze e Contesto di Antonio

*Ultimo aggiornamento: 2026-03-29 — Rebranding Auramentis/FatturaFacile*
*Questo file viene aggiornato da Valeria ogni sera tramite estrazione memoria.*

---

## Chi è Antonio

**Nome:** Antonio Galante
**Localizzazione:** Germania (timezone: Europe/Berlin)
**Contatto:** Telegram via ZeroClaw
**Progetto:** Auramentis — SaaS FatturaFacile €9/mese per PMI italiane
**Background:** imprenditore, non developer
**Disponibilità:** ~2 ore al giorno, solitamente la sera

---

## Come Lavora Antonio

### Stile di comunicazione
- Messaggi brevi, va al punto
- Non vuole risposte lunghe o verbose
- Preferisce risultati concreti, non spiegazioni teoriche
- Quando qualcosa non funziona: vuole COSA e PERCHÉ, non scuse

### Cosa lo irrita
- Risposte automatiche tipo "Perfetto!" o "Assolutamente!"
- Valeria che finge di aver fatto qualcosa
- Post generici che non fermano lo scroll
- Spiegazioni inutilmente lunghe
- Domande di approvazione per cose che Valeria dovrebbe fare in autonomia

### Cosa apprezza
- Autonomia vera: esegui, poi riporta
- Onestà sugli errori
- Contenuti che insegnano qualcosa di concreto e specifico
- Report brevi e informativi

---

## Decisioni Prese (Non Ridiscutere)

| Decisione | Data | Motivo |
|-----------|------|--------|
| Gemini Flash come modello default | 2026-03 | Gemini Pro bruciava il budget |
| Modelli premium VIETATI | 2026-03 | Costo insostenibile su VPS €4/mese |
| Pubblica in autonomia senza approvazione | 2026-03 | Antonio vuole autonomia totale sui contenuti |
| Publisher ogni ora (non ogni 15 min) | 2026-03 | Troppo frequente rischiava spam |
| Post alle 10:00 e 18:00 (Berlin) | 2026-03 | Orari con engagement più alto |
| Kit Digitale Artigiano €15 — dismesso | 2026-03-29 | Sostituito da FatturaFacile SaaS |
| Remotion: nice-to-have, non ora | 2026-03-29 | Focus sul prodotto core prima |
| Dominio auramentis.com su Cloudflare | 2026-03-29 | Confermato e funzionante |
| Email fatture@auramentis.com attiva | 2026-03-29 | Cloudflare Email Routing configurato |

---

## Il Prodotto — FatturaFacile

**Cosa fa:** riceve fatture PDF via email (fatture@auramentis.com),
estrae automaticamente i dati strutturati tramite n8n, li consegna
alla PMI in formato usabile.

**Chi lo usa:** PMI italiane, artigiani, liberi professionisti
che gestiscono fatture PDF manualmente.

**Prezzo:** €9/mese — abbonamento Stripe, cancellabile quando vuoi.

**Stato attuale:**
- Dominio: ✅ auramentis.com (Cloudflare)
- Email: ✅ fatture@auramentis.com (Cloudflare Email Routing)
- n8n: ✅ installato e attivo (Docker, porta 5678)
- Landing page: ⏳ da costruire
- Workflow n8n fatture: ⏳ da costruire
- Stripe subscription: ⏳ da configurare

---

## Budget e Risorse

- **VPS Hetzner:** 159.69.213.237 — €4/mese
- **Budget OpenRouter:** ~€19/mese disponibili
- **Vincolo modelli AI:** non superare €5/mese
- **Gemini Flash:** ~€0.10-0.30/giorno uso tipico
- **Blotato:** abbonamento attivo
- **Cloudflare:** dominio + email routing attivi
- **Stripe:** da configurare per subscription €9/mese
- **Resend:** da configurare per email post-acquisto

---

## Stack Tecnico

| Componente | Stato | Uso |
|------------|-------|-----|
| ZeroClaw (VPS) | ✅ attivo | Agente operativo, cron, Telegram |
| OpenRouter | ✅ attivo | Modelli AI (Gemini Flash default) |
| Blotato | ✅ attivo | Distribuzione social automatica |
| n8n (Docker) | ✅ attivo | Workflow fatture PDF (da configurare) |
| Cloudflare | ✅ attivo | DNS + email routing |
| GitHub (valeria-brain-sync) | ✅ attivo | Backup notturno memoria |
| Vercel | ⏳ da aggiornare | Landing FatturaFacile (nuovo repo) |
| Stripe | ⏳ da configurare | Subscription €9/mese |
| Resend | ⏳ da configurare | Email conferma abbonamento |
| Tavily | ✅ attivo | Ricerca web per pain points |

---

## Trust Level di Valeria

| Livello | Stato | Significa |
|---------|-------|-----------|
| 1 — Observer | ✅ Superato | Monitora e riporta |
| 2 — Drafter | ✅ Superato | Crea contenuti per approvazione |
| 3 — Publisher | ✅ Attivo | Pubblica in autonomia |
| 4 — Strategist | ⏳ In sviluppo | Propone strategie e pivot |
| 5 — Partner | ⏳ Futuro | Decide la direzione del business |

---

## Note dalla Memoria Giornaliera

*(Aggiornato automaticamente da Valeria ogni sera — formato: data | fatto | fonte | categoria)*

### 2026-03-29
- 2026-03-29 | Rebranding completo: Kit Digitale Artigiano dismesso | Antonio | decisione
- 2026-03-29 | Nuovo prodotto: FatturaFacile SaaS €9/mese | Antonio | prodotto
- 2026-03-29 | Dominio auramentis.com attivo su Cloudflare | Antonio | tecnico
- 2026-03-29 | Email fatture@auramentis.com attiva via Cloudflare Email Routing | Antonio | tecnico
- 2026-03-29 | Bot Telegram era down dal 26 marzo (conflitto porta 409) — riavviato | log sistema | tecnico
- 2026-03-29 | Fase 1 completata: SOUL.md, MEMORY.md, CONTENT_STRATEGY.md aggiornati | sessione | decisione
