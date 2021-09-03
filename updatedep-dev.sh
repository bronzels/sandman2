#!/bin/bash
cp ~/pip/pip-local.ini ~/pip/pip.ini
. venv/Scripts/activate
pip uninstall -y libpycommon
pip install libpycommon
