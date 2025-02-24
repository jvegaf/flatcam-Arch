#!/bin/sh
# ###############################
# Arch Linux packages

# Save current directory
START_DIR=$(pwd)

# Move to home directory
cd ~

# Install system dependencies
sudo pacman -S --needed python python-pip python-virtualenv python-pipenv

# ###############################
# Setup Python venv

if [ ! -d "venv" ]; then
    python -m venv venv
fi

# Activate venv
source ~/venv/bin/activate

# ################################
# Python packages

pip install --upgrade \
	pip \
	numpy \
	shapely \
	rtree \
	tk \
	lxml \
	cycler \
	python-dateutil \
	kiwisolver \
	dill \
	vispy \
	pyopengl \
	setuptools \
	svg.path \
	freetype-py \
	fontTools \
	rasterio \
	ezdxf \
	matplotlib \
	qrcode \
	pyqt6 \
	reportlab \
	svglib \
	pyserial \
	pikepdf \
	foronoi \
	ortools \
	pyqtdarktheme \
	darkdetect \
	svgtrace \
	simplejson

# ################################
# Auto-activate venv

BASHRC="$HOME/.bashrc"
PYTHON_FUNCTION='
python() {
    if [ -z "$VIRTUAL_ENV" ]; then
        source ~/venv/bin/activate
    fi
    command python "$@"
}'

if ! grep -q "python() {" "$BASHRC"; then
    echo "$PYTHON_FUNCTION" >> "$BASHRC"
    echo "Added auto-activation for Python."
fi

# Reload shell configuration
echo "Reloading shell configuration..."
source "$BASHRC"

# Return to the original directory
cd "$START_DIR"

echo "Setup complete. Virtual environment activated."

