#!/bin/bash

# Enable error handling
set -e

# Get the current directory where the script is placed
DEMO_DIR="$(pwd)/openvino_build_deploy/demos/the_narrator_demo"

# Navigate to the The The Narrator Demo directory
cd "$DEMO_DIR"

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "ERROR: Virtual environment not found! Please run ./install.sh first."
    exit 1
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Run the application
echo "Running The Narrator Demo..."
python main.py --stream 0

# Final message
echo ""
echo "========================================"
echo "The Narrator Demo execution completed."
echo "========================================"
