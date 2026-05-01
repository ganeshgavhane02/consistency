#!/usr/bin/env bash
set -euo pipefail

DATE="$(date +%F)"
DIR="entries"
FILE="$DIR/$DATE.md"

mkdir -p "$DIR"

if [[ -f "$FILE" ]]; then
  echo "Entry already exists: $FILE"
  exit 0
fi

cat > "$FILE" <<EOF
# Daily Learning - $DATE

Date: $DATE

Summary:

What I learned today:

- 

Code samples:

\`\`\`js
// Add code here
\`\`\`

Images:

- Add images to \`entries/images/$DATE/\` and reference here: ![example](images/$DATE/example.png)
EOF

echo "Created: $FILE"
