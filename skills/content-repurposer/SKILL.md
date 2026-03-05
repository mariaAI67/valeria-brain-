---
name: content-repurposer
description: Trasforma guide, articoli o testi lunghi in contenuti ottimizzati per Twitter/X, Instagram, Reddit e Substack. Usa questo skill ogni volta che hai un testo da adattare per i social, quando vuoi creare un piano editoriale multi-piattaforma, o quando hai bisogno di post pronti da pubblicare senza riscrivere tutto da zero.
---

# Content Repurposer — Adatta ogni contenuto per tutti i social

Questo skill prende un testo sorgente (guida, articolo, newsletter) e produce versioni ottimizzate per ogni piattaforma.

## Filosofia

Ogni piattaforma ha il suo linguaggio. Lo stesso contenuto non funziona uguale su Twitter e su Reddit. Il tuo compito non è copiare e incollare, ma **estrarre l'essenza** e riformularla nel formato nativo di ogni canale.

## Input atteso

- Testo sorgente (guida, articolo, post)
- Piattaforme target (default: tutte)
- Tono preferito (default: diretto, personale, senza jargon)
- Lingua (default: italiano)

## Output per piattaforma

### Twitter/X
- **Thread** (8-12 tweet): hook forte nel primo tweet, ogni tweet autonomo, ultimo tweet con CTA
- **Tweet singolo**: massimo 280 caratteri, hook + valore + CTA
- **Formato**: niente hashtag in mezzo al testo, al massimo 2-3 alla fine
- **Tono**: diretto, opinione forte, prima persona

### Instagram
- **Caption**: 150-300 parole, hook nelle prime 2 righe (visibili senza "leggi altro")
- **Struttura**: hook → valore → storia personale → CTA
- **Hashtag**: 10-15 rilevanti, separati dal testo con una riga vuota
- **Tono**: più personale e caldo rispetto a Twitter

### Reddit
- **Titolo**: descrittivo, no clickbait, specifico
- **Post**: tono autentico, no spam, valore prima di tutto
- **Subreddit suggeriti**: in base al contenuto (es. r/italy, r/artificial, r/learnprogramming)
- **Tono**: community-first, condivisione genuina, no autoreferenziale

### Substack
- **Newsletter**: formato lungo, intro personale, corpo strutturato, CTA finale
- **Oggetto email**: curioso ma chiaro, max 50 caratteri
- **Tono**: da creator a lettore, come una lettera

## Processo

1. **Leggi il testo sorgente** — identifica: tema principale, punti chiave (max 5), storia/aneddoto personale, dato o fatto sorprendente, CTA naturale
2. **Estrai gli elementi riutilizzabili** — questi sono i mattoni per tutti i formati
3. **Produci i formati richiesti** — uno alla volta, rispettando le regole di ogni piattaforma
4. **Salva i file** — usa nomi chiari: `twitter-thread-[titolo].md`, `instagram-[titolo].md`, etc.

## Regole generali

- **Hook prima di tutto**: le prime parole determinano se qualcuno legge o scorre
- **Un'idea per formato**: non cercare di dire tutto, scegli l'angolo più forte
- **Autenticità > perfezione**: tono umano, non da brand corporate
- **CTA sempre presente**: iscrizione, commento, condivisione — scegli una sola azione

## Esempio di hook efficace

❌ "In questa guida vedremo come installare ZeroClaw..."
✅ "Ho installato un'AI personale su un server da 5€. Nessuno in Italia lo sa ancora fare."

## File di output

Salva sempre i contenuti prodotti in `content/[data]/` con questa struttura:
```
content/
└── 2026-03-05/
    ├── twitter-thread-guida-01.md
    ├── instagram-guida-01.md
    ├── reddit-guida-01.md
    └── substack-guida-01.md
```
