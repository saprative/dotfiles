export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export WORKON_HOME=$HOME/.virtualenvs
export MSYS_HOME=/c/msys/1.0
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3.5
source /usr/local/bin/virtualenvwrapper.sh
alias python=python3.5
export PYTHONPATH=/usr/bin/pyton3.5
export PYTHONPATH="/home/utal/.local/lib/python3.5/site-packages/":"${PYTHONPATH}"
#export PIP_PYTHON_PATH=/usr/bin/pyton3.5
#alias pip=pip3.6


[[ -s "/home/utal/.gvm/scripts/gvm" ]] && source "/home/utal/.gvm/scripts/gvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# added by Anaconda3 4.4.0 installer
#export PATH="/home/utal/anaconda3/bin:$PATH"
