#!/bin/bash -e
# Script for saving and recovering file timestamps. It has to be called
# from directory containing directory .git (in the root of repository).
# To save timestamps of file, prior to uploading files to git call
#   ./missing-timestamps.sh --store
# To update timestamps after downloading checking out git repository call
#   ./missing-timestamps.sh --apply
cd "$(dirname "$0")"
case "$1" in
  --apply) source .missing_timestamps ;;
  --store)
    STAT='stat -c %Y'
    $STAT .git > /dev/null 2>&1 || STAT='stat -f %m'  # OSX
    _date() { date +%Y%m%d%H%M.%S -d@$1; }
    _date 12345 > /dev/null 2>&1 || _date() { date -r$1 +%Y%m%d%H%M.%S; }  # OSX
    while read -d $'\0' FILE; do
      [[ "$FILE" == . ]] && continue
      TIME=$(_date $($STAT "$FILE"))
      echo "touch -c -t ${TIME} \"${FILE}\""
    done < <(find . -name '.git' -prune -o -name '*' -print0) > .missing_timestamps
  ;;
  *) exit 42 ;;
esac
