---
name: tiktok-agent
description: Crea script per TikTok ottimizzati per creator italiani nel settore AI e tech. Usa questo skill ogni volta che vuoi scrivere uno script per un video TikTok di 15-60 secondi, adattare un contenuto esistente per TikTok, o creare una serie di video brevi su un tema. Specializzato nel formato nativo TikTok: hook nei primi 3 secondi, ritmo veloce, CTA naturale.
---

# TikTok Agent — Script nativi per TikTok

Questo skill produce script completi per video TikTok: struttura, voce, testo overlay, timing.

## Filosofia TikTok

TikTok premia la velocità e l'autenticità. I primi 3 secondi decidono tutto — se non catturi subito, l'utente scorre. Non serve essere perfetti: serve essere reali, diretti e dare valore subito.

**Regole d'oro:**
- Hook visivo + verbale entro i primi 3 secondi
- Un'idea per video — non cercare di dire tutto
- Ritmo veloce: frasi brevi, tagli rapidi
- Tono: come se parlassi a un amico, non a una platea
- CTA naturale alla fine, mai forzata

## Formati

### Script standard (30-60 secondi)

**Struttura:**
```
[0-3 sec]   HOOK — frase che ferma lo scroll
[3-8 sec]   PROMESSA — cosa impareranno/vedranno
[8-45 sec]  CONTENUTO — passi, insight, storia (max 3 punti)
[45-55 sec] SVOLTA — il dettaglio inaspettato
[55-60 sec] CTA — commenta, segui, salva
```

### Script breve (15-30 secondi)

```
[0-3 sec]   HOOK
[3-20 sec]  CONTENUTO (1-2 punti max)
[20-30 sec] CTA
```

### Serie TikTok (3-5 video)

Per argomenti complessi: ogni video è autonomo ma rimanda al successivo.
Titolo serie: "Parte 1/3", "Parte 2/3" ecc.

## Hook efficaci per AI/ZeroClaw

- "Spendo 4€ al mese per avere un'AI personale. Ecco come."
- "Questo tool AI in italiano non lo conosce ancora nessuno."
- "Ho automatizzato [X] con un agente AI. Ci ho messo 15 minuti."
- "La verità su ZeroClaw che nessuno dice in Italia."
- "POV: hai un'AI che lavora per te mentre dormi."

## Formato output

```markdown
# Script TikTok: [titolo]
Durata: ~[X] secondi
Formato: vertical 9:16

---

[0-3 sec]
TESTO OVERLAY: "..."
VOCE: "..."
AZIONE: [cosa si vede]

[3-8 sec]
TESTO OVERLAY: "..."
VOCE: "..."
AZIONE: [cosa si vede]

[continua con ogni segmento...]

---

CAPTION: [testo per la descrizione TikTok, max 150 caratteri]
HASHTAG: #zeroclaw #agentiai #intelligenzaartificiale #aiitaliano #tech
PROMPT VISUALE: [prompt per Digen AI / Nano Banana Pro]
```

## Prompt visuale standard

Ogni script include un prompt visuale per Digen AI / Nano Banana Pro:

**Soggetto:** Italian female AI assistant similar to Valeria's profile, short hair, cyberpunk futuristic tech details on face and suit, friendly and confident expression.
**Colori:** Dark background, bright neon green main text, subtle blue/cyan tech accents.
**Brand:** Small crab icon and "Valeria — AI experiment" watermark bottom right.
**Formato:** Vertical 9:16, high resolution, perfect for TikTok.

## Processo

1. Identifica il concetto centrale — una sola idea forte
2. Scrivi l'hook — funzionerebbe nei primi 3 secondi?
3. Costruisci il corpo — max 3 punti, frasi brevissime
4. Aggiungi la svolta — il dettaglio che sorprende
5. Chiudi con CTA naturale
6. Scrivi caption + hashtag
7. Genera prompt visuale con standard Valeria

## Output

Salva in `content/[data]/tiktok-[slug].md`
