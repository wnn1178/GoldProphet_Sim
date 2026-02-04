# 1. Create and activate a virtual environment (optional but recommended)
python -m venv venv
source venv/bin/activate  # On Android use: venv\Scripts\activate

# 2. Install the core requirements
pip install fastapi uvicorn transformers torch websockets
#running the app
python main.py

PYTHON="${PYTHON:-python3}"

