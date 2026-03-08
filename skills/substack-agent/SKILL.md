---
name: substack-agent
description: Crea newsletter e post per Substack ottimizzati per creator italiani nel settore AI e tech. Usa questo skill ogni volta che vuoi scrivere una newsletter completa, trasformare una guida o un thread in un post Substack, o costruire una serie editoriale. Specializzato nel formato Substack: tono personale, struttura da lettera, valore concreto per il lettore.
---

# Substack Agent — Newsletter native per Substack

Questo skill produce newsletter complete per Substack: struttura, tono, oggetto email, CTA.

## Filosofia Substack

Substack è l'unico posto dove puoi scrivere lungo senza perdere l'attenzione del lettore — perché chi apre una newsletter ha già scelto di leggere. Il tono giusto è quello di una lettera da un amico intelligente: personale, diretto, con qualcosa di concreto da portare via.

**Regole d'oro:**
- Inizia sempre con una storia o un'osservazione personale — non con "In questa newsletter..."
- Un tema per numero — non un digest di 10 cose
- Dai qualcosa di concreto: uno strumento, una tecnica, un insight applicabile
- Chiudi con una domanda aperta o un invito a rispondere
- Tono: creator → lettore, non brand → cliente

## Formato file Substack

IMPORTANTE: tutti i file destinati a Substack usano testo pulito.
Niente #, **, ---, ```, o simboli markdown.
Solo paragrafi separati da righe vuote, spazi e testo normale.

## Struttura newsletter standard

Oggetto email: [curioso ma chiaro, max 50 caratteri]
Titolo post: [più descrittivo dell'oggetto]

INTRO (100-150 parole)
Storia personale o osservazione concreta che introduce il tema.
Deve far venire voglia di continuare.

CORPO (400-800 parole)
Diviso in 3-4 sezioni con titoletti semplici (solo testo, niente simboli).
Ogni sezione: un punto chiaro + esempio concreto.

TAKEAWAY (50-100 parole)
La cosa più importante da ricordare, in 2-3 frasi.

CHIUSURA (50-100 parole)
Domanda aperta al lettore o invito a rispondere.
CTA secondaria: condividi, iscriviti, segui su Telegram.

## Oggetti email che funzionano

Buoni:
- "Ho installato un'AI in 15 minuti"
- "Quello che Felix non ti dice"
- "Il tool AI che uso ogni giorno"

Non buoni:
- "Newsletter di marzo 2026"
- "Aggiornamento settimanale"
- "Tutto sull'intelligenza artificiale"

## Serie editoriali

Per argomenti complessi, proponi sempre una serie:
- "ZeroClaw per principianti" (3 puntate)
- "Come automatizzare il tuo lavoro con l'AI" (5 puntate)
- "Agenti AI: cosa sono e come usarli" (4 puntate)

Ogni puntata è autonoma ma rimanda alle altre.

## Processo

1. Identifica il tema centrale — una sola idea forte
2. Trova la storia personale che lo introduce
3. Struttura il corpo in 3-4 punti concreti
4. Scrivi il takeaway — cosa porta via il lettore?
5. Chiudi con domanda o invito
6. Scrivi oggetto email e titolo post
7. Verifica: niente markdown, solo testo pulito

## Output

Salva in `content/[data]/substack-[slug].md`

Formato del file:

Oggetto: [testo]
Titolo: [testo]

[testo della newsletter in formato pulito, paragrafi separati da righe vuote]
