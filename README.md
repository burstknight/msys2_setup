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
4. Restart the `msys2` terminal.

## Setup for right-click context menu
In order to run `msys2` terminal here from the right-click context menu, we can need do something to setup. You can select one of the ways to setup:
1. Edit `Registry` by `regedit.exe`
2. Use the `.reg` files.

### Using `regedit.exe`
We use these steps to use `regedit.exe` to setup:
1. Click keys `WIN + R`, and then launch `regedit.exe`.
2. Reach to the path `HKEY_CLASS_ROOT\Directory\Background\shell`.
3. Click mouse right button on `shell`, and then select `New>Key`. Name this key `MSYS2`.
4. Click mouse right button on `MSYS2`, and then select `New>Key`. Name this key `command`.
5. Select `command` and then double click `(Default)`. We suppose `msys2` installed in `C:\`, so set the `Value data` of `(Default)` to `"C:\msys64\msys2_shell.cmd"  "-here"`.

If you want to run `mingw64`terminal on here, you can create the key `mingw64` in `HKEY_CLASS_ROOT\Directory\Background\shell`. Of course, `mingw64` also need create the key `command`, but `Value data` of `(Default)` in `command` must set `"C:\msys64\msys2_shell.cmd" "-here" "-mingw64"`.

### Using `.reg` files
The directory `regedit_files` has `.reg` files. We can double click each `.reg` file in the directory to setup.

