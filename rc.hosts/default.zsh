# Prompts color

# Default prompt is:
# <date> (user~host) path

export date_color="white"
export user_color="green"
export root_color="red"
export host_color="magenta"
export path_color="blue"
export status_color="red"


# Custom environment vars

# Tex
export TEXMFHOME=$HOME/.texmf

# Virtualenvwrapper
export WORKON_HOME=$HOME/work/envs
export PROJECT_HOME=$HOME/work/projects.py
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
[ -f /usr/bin/virtualenvwrapper.sh ] && source /usr/bin/virtualenvwrapper.sh

# Pip cache
[ -f /opt/pip-cache ] && export PIP_DOWNLOAD_CACHE='/opt/pip-cache'

