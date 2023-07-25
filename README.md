# msys2_setup
This repo help me use shell script file to setup the enviroment for `msys2`.

## Usage
Please follow these steps to setup the enviroment for `msys2`.
1. Use the command to upgrade the system.
```sh
pacman -Syu
```
2. The terminal will automatically close if `msys2` finish upgrading. Now, please use the same command to continue upgrading.
```sh
pacman -Syu
```
3. Use the shell script file in this repo to setup the enviroment.
```sh
sh setup.sh
```

