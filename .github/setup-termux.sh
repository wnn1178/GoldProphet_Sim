# 1. Create and activate a virtual environment (optional but recommended)
python -m venv venv
source venv/bin/activate  # On Android use: venv\Scripts\activate

# 2. Install the core requirements
pip install fastapi uvicorn transformers torch websockets
#running the app
python main.py

PYTHON="${PYTHON:-python3}"

if [ -d "/data/data/com.termux" ] || [ -n "${PREFIX:-}" ] && [[ "$PREFIX" == /data/data/com.termux* ]]; then
 echo "Detected Termux environment."
 echo "If you haven't installed Python and build tools, run:"
 echo " pkg update && pkg upgrade && pkg install python git clang make pkg-config"
fi

if ! command -v "$PYTHON" >/dev/null 2>&1; then
  echo "Error: $PYTHON not found. Install Python (e.g. in Termux: pkg install python) and retry."
 exit 1
fi

if [ ! -d "venv" ]; then
 "$PYTHON" -m venv venv
fi
