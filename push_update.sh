#!/bin/bash

compile_py.sh ../minecraft_mod_updater_src/images/icon.ico ../minecraft_mod_updater_src/config_ui.py
compile_py.sh ../minecraft_mod_updater_src/images/icon.ico ../minecraft_mod_updater_src/config_ui_admin.py
compile_py.sh ../minecraft_mod_updater_src/images/icon.ico ../minecraft_mod_updater_src/main_ui.py

cp -r ../minecraft_mod_updater_src/dist/config_ui/* ./
cp -r ../minecraft_mod_updater_src/dist/config_ui_admin/* ./
cp -r ../minecraft_mod_updater_src/dist/main_ui/* ./
#cp -r ../minecraft_mod_updater_src/dist/combined/* ./
mv main_ui.exe update_mod.exe
git_ready.sh update
