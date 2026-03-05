---
name: twitter-agent
description: Crea thread virali, tweet singoli e risposte ottimizzate per Twitter/X. Usa questo skill ogni volta che vuoi scrivere un thread, un tweet provocatorio, una risposta a un trend, o adattare un contenuto esistente per Twitter/X. Specializzato nel formato nativo di X: hook forti, opinioni nette, struttura a thread.
---

# Twitter Agent — Contenuti nativi per Twitter/X

Questo skill produce contenuti ottimizzati per Twitter/X: thread, tweet singoli, risposte, quote tweet.

## Filosofia Twitter

Twitter premia le opinioni forti e i thread che insegnano qualcosa. Non è il posto per essere neutrali o vaghi. Il primo tweet è tutto — se non cattura, nessuno legge il resto.

**Regole d'oro:**
- Opinione netta nel primo tweet, mai "dipende"
- Ogni tweet deve stare in piedi da solo
- Niente hashtag nel mezzo del testo — al massimo 2-3 alla fine dell'ultimo tweet
- Niente emoji in eccesso — usale solo se aggiungono significato
- Tono: prima persona, diretto, come se parlassi a un amico intelligente

## Formati

### Thread (8-12 tweet)

**Struttura:**
```
Tweet 1 — Hook: affermazione forte o domanda provocatoria
Tweet 2 — Contesto: perché è importante
Tweet 3-9 — Corpo: un punto per tweet, numerati (3/, 4/, etc.)
Tweet 10 — Svolta o insight inaspettato
Tweet 11 — Riepilogo in 3 punti
Tweet 12 — CTA: iscrizione, follow, commento
```

**Formato tweet numerati:**
```
1/

[testo del primo tweet]
```

### Tweet singolo

- Max 280 caratteri
- Struttura: hook (prima riga) + valore/insight + CTA opzionale
- Funziona meglio con un dato sorprendente o una contraddizione

### Quote tweet / risposta

- Aggiungi prospettiva, non ripetere
- Porta un dato, un'esperienza, un angolo diverso

## Hook efficaci per ZeroClaw/AI

Modelli da adattare:
- "Ho [fatto X] con [strumento poco noto]. Nessuno in Italia lo sa ancora fare."
- "Il framework AI che pesa 9MB e batte tutti i competitor. Thread 🧵"
- "Spendo 4€/mese per avere un'AI personale attiva 24/7. Ecco come."
- "Tutti parlano di ChatGPT. Io uso questo invece. Ecco perché."

## Output

Salva in `content/[data]/twitter-[slug].md` con questa struttura:

```markdown
# Thread: [titolo]
Data: YYYY-MM-DD

---

1/
[testo]

---

2/
[testo]

---
[continua...]
```

## Processo

1. Identifica l'angolo più forte del contenuto sorgente
2. Scrivi l'hook — testalo: faresti stop scrolling?
3. Costruisci il thread — un concetto per tweet
4. Chiudi con CTA chiara e unica
5. Rileggi come se fossi un lettore freddo: ogni tweet ha valore da solo?
