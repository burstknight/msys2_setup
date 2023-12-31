echo "Installing necesary packages and program..."
pacman -S --needed ${MINGW_PACKAGE_PREFIX}-toolchain
pacman -S --needed vim git ${MINGW_PACKAGE_PREFIX}-python ${MINGW_PACKAGE_PREFIX}-python-pip tmux make

echo "================== Finish =================="

echo "Setup python enviroment..."
python -m pip install --upgrade pip
pip install virtualenv
echo "================== Finish =================="

echo "Setup .bashrc ..."

cp ./config/.bashrc ~
cp ./config/.minttyrc ~

echo "================== Finish =================="
