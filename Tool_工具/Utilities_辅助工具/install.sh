#!/bin/bash
chmod +x *.sh *.py
mkdir -p ~/.local/bin
ln -sf "$(pwd)/RemoteRepositoryURL.sh" ~/.local/bin/rru
ln -sf "$(pwd)/RemoteRepositoryURL_Color.sh" ~/.local/bin/rru-color
ln -sf "$(pwd)/RemoteRepositoryURL.py" ~/.local/bin/rru-py
ln -sf "$(pwd)/RemoteRepositoryURL_Color.py" ~/.local/bin/rru-py-color
echo "Tools installed to ~/.local/bin/"
