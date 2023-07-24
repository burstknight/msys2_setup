echo "Installing necesary packages and program..."
pacman -S --needed ${MINGW_PACKAGE_PREFIX}-toolchain
pacman -S --needed vim git ${MINGW_PACKAGE_PREFIX}-python ${MINGW_PACKAGE_PREFIX}-python-pip tmux

echo "================== Finish =================="

echo "Setup python enviroment..."
python -m pip install --upgrade pip
pip install virtualenv
echo "================== Finish =================="

echo "Setup .bashrc ..."
if ! [ -f "${HOME}/.bashrc" ]; then
	touch ${HOME}/.bashrc
fi

echo "export LESS_TERMCAP_mb=$'\e[1;32m'" >> ${HOME}/.bashrc
echo "export LESS_TERMCAP_md=$'\e[1;32m'" >> ${HOME}/.bashrc
echo "export LESS_TERMCAP_me=$'\e[1;0m'" >> ${HOME}/.bashrc
echo "export LESS_TERMCAP_se=$'\e[1;0m'" >> ${HOME}/.bashrc
echo "export LESS_TERMCAP_so=$'\e[01;33m'" >> ${HOME}/.bashrc
echo "export LESS_TERMCAP_ue=$'\e[0m'" >> ${HOME}/.bashrc
echo "export LESS_TERMCAP_us=$'\e[1;4;31m'" >> ${HOME}/.bashrc
echo ""

echo "alias ll='ls -alF --color=auto'" >> ${HOME}/.bashrc
echo "alias ls='ls --color=auto'" >> ${HOME}/.bashrc

source ${HOME}/.bashrc

echo "================== Finish =================="
