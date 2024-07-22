echo "Installing necesary packages and program..."
pacman -S --needed ${MINGW_PACKAGE_PREFIX}-toolchain \
	git ${MINGW_PACKAGE_PREFIX}-git-lfs \
	${MINGW_PACKAGE_PREFIX}-cmake ${MINGW_PACKAGE_PREFIX}-ccmake \
	${MINGW_PACKAGE_PREFIX}-make \

echo "================== Finish =================="

echo "Setup .bashrc ..."

cp ./config/.bashrc ~
cp ./config/.minttyrc ~

echo "================== Finish =================="
