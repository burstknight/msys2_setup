echo "Installing necesary packages and program..."
pacman -S --needed ${MINGW_PACKAGE_PREFIX}-toolchain
pacman -S --needed vim git ${MINGW_PACKAGE_PREFIX}-python ${MINGW_PACKAGE_PREFIX}-python-pip tmux

echo "================== Finish =================="

