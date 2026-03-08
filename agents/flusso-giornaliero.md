# Flusso Giornaliero — Team Multi-Agente

## Orario: ogni giorno alle 16:00

## Schema

```
CRON 16:00
   ↓
MARCO (Manager)
   → genera contenuto del giorno
   → invia ad Antonio per approvazione
   → attende feedback (modifiche o OK)
   ↓ approvato
ELENA (Repurposer)
   → adatta il contenuto per ogni piattaforma
   ↓
LUCA          SOFIA          ZARA
(Twitter)     (Instagram)    (TikTok)
   ↓             ↓              ↓
Thread/Tweet  Caption        Script video
   ↓             ↓              ↓
        Blotato API → pubblica
```

## Regole operative

### Marco — approvazione obbligatoria
- Genera il contenuto del giorno (tip, guida breve, insight)
- Manda ad Antonio su Telegram con il messaggio:
  > "Ecco il contenuto di oggi. Approvi o vuoi modifiche?"
- Se Antonio dice **OK** → passa ad Elena
- Se Antonio chiede **modifiche** → Marco le applica e rimanda
- NON pubblica mai senza approvazione esplicita

### Elena — adattamento
- Riceve il contenuto approvato da Marco
- Produce versione per ogni piattaforma attiva:
  - Instagram (caption + hashtag)
  - TikTok (script video)
  - Twitter (thread o tweet singolo) — quando X sarà attivo

### Luca / Sofia / Zara — pubblicazione
- Ricevono il contenuto adattato da Elena
- Pubblicano via Blotato API
- Confermano a Marco l'avvenuta pubblicazione

### Marco — report finale
- Invia ad Antonio su Telegram:
  > "Pubblicato su [piattaforme]. Ecco i link."

## Account IDs Blotato
- Instagram @valeriaai.zero → ID: 34050
- TikTok @valeriaia01 → ID: 32302
- Twitter @ValeriaAizero → ID: 13608 (in attesa OAuth)

## Stato attuale
- Instagram: ✅ attivo
- TikTok: ⏳ da configurare
- Twitter: ⏳ account giovane, riprovare tra qualche giorno
