#!/bin/bash
# GESTORE RISPOSTE — Antonio approva, modifica o annulla
# Uso:
#   ./approva.sh              → approva e pubblica
#   ./approva.sh modifica "nuovo testo instagram" "nuovo testo tiktok"
#   ./approva.sh annulla      → salta oggi

WORKSPACE="/root/.zeroclaw/workspace"
PENDING_FILE="$WORKSPACE/pending_post.json"
ACTION="${1:-approva}"

case "$ACTION" in
  approva)
    python3 -c "
import json
with open('$PENDING_FILE') as f:
    data = json.load(f)
data['status'] = 'approved'
with open('$PENDING_FILE', 'w') as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
print('✅ Approvato.')
"
    ;;

  modifica)
    NEW_IG="${2}"
    NEW_TT="${3}"
    python3 -c "
import json, sys
with open('$PENDING_FILE') as f:
    data = json.load(f)
data['status'] = 'modified'
if sys.argv[1]: data['instagram'] = sys.argv[1]
if sys.argv[2]: data['tiktok'] = sys.argv[2]
with open('$PENDING_FILE', 'w') as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
print('✏️ Modifiche salvate.')
" "$NEW_IG" "$NEW_TT"
    ;;

  annulla)
    python3 -c "
import json
with open('$PENDING_FILE') as f:
    data = json.load(f)
data['status'] = 'cancelled'
with open('$PENDING_FILE', 'w') as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
print('❌ Annullato.')
"
    ;;

  *)
    echo "Uso: $0 [approva|modifica|annulla]"
    exit 1
    ;;
esac
