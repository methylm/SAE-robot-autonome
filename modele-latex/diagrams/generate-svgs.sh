#!/usr/bin/env bash

set -euo pipefail

SOURCE=""
OUTPUT=""

usage() {
    echo "Usage : $0 -p <dossier_source> -s <dossier_sortie>"
    exit 1
}

while getopts ":p:s:h" opt; do
    case "$opt" in
        p) SOURCE="$OPTARG" ;;
        s) OUTPUT="$OPTARG" ;;
        h) usage ;;
        *) usage ;;
    esac
done

if [[ -z "$SOURCE" || -z "$OUTPUT" ]]; then
    usage
fi

if [[ ! -d "$SOURCE" ]]; then
    echo "Erreur : dossier source inexistant : $SOURCE"
    exit 1
fi

if ! command -v plantuml >/dev/null 2>&1; then
    echo "Erreur : PlantUML n'est pas installé."
    exit 1
fi

mkdir -p "$OUTPUT"

SOURCE="$(realpath "$SOURCE")"
OUTPUT="$(realpath "$OUTPUT")"

COUNT=0

while IFS= read -r -d '' file; do
    echo "[EXPORT] $file"
    plantuml -charset UTF-8 -tsvg -o "$OUTPUT" "$file"
    COUNT=$((COUNT + 1))
done < <(find "$SOURCE" -type f -name "*.puml" -print0)

echo "----------------------------------------"
echo "Fichiers traités : $COUNT"
echo "Destination     : $OUTPUT"