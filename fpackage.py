import os
import shutil
import json
import sys

from zipfile import ZipFile
from glob import glob
from pathlib import Path

mods_folder = os.path.expandvars(sys.argv[1])
cwd = os.getcwd()

dbg = False

if dbg:
    print("Mods Folder: " + mods_folder)
    print("Working Dir: " + cwd)

mod_version = "0.0.0"

with open(cwd + "/info.json") as info:
    json_file = json.load(info)
    mod_version = json_file["version"]

mod_name = os.path.basename(cwd)
mod_full_name = mod_name + "_" + mod_version

if dbg:
    print("Mod: " + mod_full_name)

mod_output_path = cwd + "/" + mod_full_name + ".zip"

if dbg:
    print("Output: " + mod_output_path)

if os.path.exists(mod_output_path):
    os.remove(mod_output_path)

with ZipFile(mod_output_path, 'w') as f:
    for root, dirs, files in os.walk(cwd):
        zip_root = mod_full_name + "/" + Path(root).relative_to(cwd).as_posix()
        for file_name in files:
            if not (".git" in file_name or file_name.endswith(".zip") or ".git" in root or file_name.endswith(".bat") or ".vscode" in root or file_name.endswith(".py") or "factorio-images" in root):
                f.write(root + "/" + file_name, zip_root + "/" + file_name)

mods = os.listdir(mods_folder)
for mod in mods:
    if mod_name + "_" in mod:
        if dbg:
            print(mods_folder + "/" + mod)
        os.remove(mods_folder + "/" + mod)

shutil.copyfile(mod_output_path, mods_folder + "/" + mod_full_name + ".zip")

print("Packaged and copied mod.")