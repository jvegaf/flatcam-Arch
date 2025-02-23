#!/bin/sh -e
# ###############################
# Arch Linux packages

sudo pacman -S python python-pip

# ###############################
# Setup Python venv

python -m  venv venv; 



# ################################
# Python packages

sudo -H python3 -m pip install --upgrade\
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
	svgtrace
# OR-TOOLS package is now optional
# ################################
