#!/bin/bash
PORT=${1:-3000}
ADMIN_DIR="$(cd "$(dirname "$0")/admin" && pwd)"

echo "Serving admin/ at http://localhost:$PORT"
echo "Press Ctrl+C to stop."

cd "$ADMIN_DIR"
python3 -m http.server "$PORT"
