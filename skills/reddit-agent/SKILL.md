---
name: reddit-agent
description: Crea post autentici e commenti per Reddit ottimizzati per community italiane e internazionali. Usa questo skill ogni volta che vuoi postare su Reddit, rispondere a thread esistenti, o condividere guide tecniche su subreddit specifici. Specializzato nel tono Reddit: autentico, community-first, zero spam, valore prima di tutto.
---

# Reddit Agent — Contenuti nativi per Reddit

Questo skill produce post, titoli e commenti ottimizzati per Reddit. Reddit odia lo spam e ama l'autenticità — questo skill ti aiuta a fare la differenza.

## Filosofia Reddit

Reddit è la piattaforma più difficile da usare per il marketing, e per questo è la più preziosa. Gli utenti Reddit hanno un radar infallibile per il self-promotion. Se sembri uno che vuole solo traffico, vieni downvotato e bannato. Se porti valore genuino, la community ti amplifica.

**Regole d'oro:**
- Valore prima di tutto — il link al tuo sito viene dopo, se proprio
- Tono umano, non da brand
- Ammetti limiti e incertezze — la perfezione è sospetta
- Rispondi ai commenti — sempre
- Partecipa alla community anche quando non promuovi nulla

## Subreddit target

### Italiano
- `r/italy` — community generale italiana
- `r/italytech` — tech in italiano (se esiste)
- `r/programmazione` — sviluppo software in italiano

### Internazionale
- `r/selfhosted` — perfetto per ZeroClaw su VPS
- `r/artificial` — AI generale
- `r/rust` — community Rust (ZeroClaw è scritto in Rust)
- `r/homelab` — server e automazioni casalinghe
- `r/learnprogramming` — tutorial e guide
- `r/MachineLearning` — ML e AI avanzato
- `r/LocalLLaMA` — LLM locali e self-hosted

## Formati

### Post standard

**Struttura:**
```
Titolo: [descrittivo, specifico, no clickbait]

[Intro: chi sei e perché stai postando — 2-3 righe]

[Corpo: la guida, il problema, la soluzione — con dettagli tecnici]

[Conclusione: cosa hai imparato, cosa non funziona ancora]

[Link opzionale — solo se aggiunge valore, mai come obiettivo principale]
```

**Titoli che funzionano su Reddit:**
- "I built a personal AI agent with ZeroClaw — here's what I learned after 2 weeks"
- "Installed an AI assistant on a €4/month VPS — step by step guide (with mistakes)"
- "ZeroClaw vs alternatives: honest comparison after running both for a month"

**Titoli che NON funzionano:**
- "Check out my new AI tool!" ❌
- "Best AI framework of 2026" ❌
- "You need to try this" ❌

### Commento / risposta

Quando qualcuno chiede qualcosa di pertinente:
- Rispondi con dettagli tecnici reali
- Menziona ZeroClaw solo se è genuinamente la risposta migliore
- Non linkare il tuo blog in ogni commento

### Cross-post

Adatta il tono per ogni subreddit — `r/rust` vuole dettagli tecnici, `r/italy` vuole contesto e storia.

## Processo

1. Identifica il subreddit più adatto al contenuto
2. Leggi le regole del subreddit (spesso nella sidebar)
3. Scrivi il titolo — specifico, no hype
4. Intro: contestualizza senza fare marketing
5. Corpo: dettagli tecnici, errori inclusi — la vulnerabilità crea fiducia
6. Chiudi con domanda aperta alla community
7. Prepara 2-3 risposte ai commenti più probabili

## Output

Salva in `content/[data]/reddit-[subreddit]-[slug].md`:

```markdown
# Reddit Post: r/[subreddit]

**Titolo:** [titolo]

---

[testo completo del post]

---

**Note:** [subreddit scelto, perché, timing consigliato]
**Risposte preparate:**
- Se chiedono X: [risposta]
- Se chiedono Y: [risposta]
```

## Timing

- Orario migliore per `r/italy`: 8-10 mattina, 12-14, 20-22 (fuso italiano)
- Orario migliore per subreddit internazionali: 14-16 CET (mattina USA EST)
- Evita weekend per post tecnici — engagement più basso
