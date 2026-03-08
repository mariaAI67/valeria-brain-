# Kit Digitale Artigiano — Landing Page

Sito statico per la lista d'attesa del Kit Digitale Artigiano (27€).

## Deploy su Vercel

1. Fai fork o push di questa cartella su GitHub
2. Vai su [vercel.com](https://vercel.com) → "Add New Project"
3. Importa il repo GitHub
4. Framework Preset: **Other** (sito statico puro)
5. Root Directory: lascia `/` (o punta a questa cartella)
6. Clicca Deploy — fatto.

Vercel rileva automaticamente i siti statici HTML/CSS. Nessuna configurazione aggiuntiva.

## Struttura

```
landing/
├── index.html   — pagina completa
└── style.css    — design mobile-first
```

## Prossimi passi dopo il deploy

- [ ] Collegare il form a un servizio email (Brevo, Mailchimp, o Substack)
- [ ] Aggiungere dominio personalizzato (es. kitartigiano.it)
- [ ] Sostituire "47 artigiani in lista" con dato reale via script
- [ ] Aggiungere Google Analytics o Plausible per tracking visite

## Note

- Nessuna dipendenza esterna, nessun framework
- Caricamento < 1 secondo
- Mobile-first, testato fino a 320px
- Form attualmente non collegato a backend — da configurare
