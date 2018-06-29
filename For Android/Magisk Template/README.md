## SYSTEM/LESS MODULE TEMPLATE

This template is a modified version of the original one.
Its purpose is to make Magisk Modules install in either Magisk (as a module) or directly in `/system.`


### How to Create a System/Less Module
1. Clone / download this repo
2. Open `config.sh`, follow the instructions written at the beginning of the file. You should at least change `config.sh` and `module.prop`
3. Zip your files, the zipped file is a flashable zip for both Magisk Manager and custom recoveries
4. Please check **Notes** for precautions


You can make a module from this template almost the same as you can make one in the Original template.
It should be easy to transition from there to here.

### Tips for developers
 - To automate the detection (system/less), set SYSTEMINSTALL and MAGISKINSTALL to blank and ERROREXIT to false
 - To make a module android version specific, set MINAPI and MAXAPI with the same SDK
 - Installation is configurable in **config.sh.** You can control the variables (starting in **_line 95_**) that will help you how to configure your module.
 ```
 Variables:
MAGISKINSTALL - forces magisk installation (might conflict with SYSTEMINSTALL) (values: true or false)
SYSTEMINSTALL - forces system installation (might conflict with MAGISKINSTALL) (values: true or false)
INITPATH - sets path to install scripts (post-fs-data.sh, service.sh) if system install (values: directories)
BUILDPROP - sets properties from system.prop directly to build.prop (values: true or false)
PERMANENTDELETE - PERMANENTLY delete folders in $REPLACE (values: true or false)
ERROREXIT - exits with an error on every failed attempt to install to Magisk (enabled by default) (values: true or false)
 ```
- **set_permissions_system** </br>
It behaves like set_permissions, but it sets them on whatever file you want and will be executed in **system install only.**
- **System Install** </br>
The directories in **_system_** folder will correspond to which directory the files will be copied.
Ex. if you put in the zip /system/example.file, it will be copied to /system/example.file.

### Tips for users
- If a module is based on this template, you can also configure it's installation.
The variables that is in **/dev/.config** will overwrite the dev's setting for the module.
```
Variables:
MAGISKINSTALL - forces magisk installation (might conflict with SYSTEMINSTALL) (values: true or false)
SYSTEMINSTALL - forces system installation (might conflict with MAGISKINSTALL) (values: true or false)
INITPATH - sets path to install scripts (post-fs-data.sh, service.sh) if system install (values: directories)
BUILDPROP - sets properties from system.prop directly to build.prop (values: true or false)
PERMANENTDELETE - PERMANENTLY delete folders in $REPLACE (values: true or false)
```
- They need to be in **/dev/.config** to be read by the installer.</br>
To enter them, just create the file and then add.</br>
**How to do it on Terminal:**
```
Example:

echo "SYSTEMINSTALL=TRUE" >> /dev/.config
```
- You can add them in different lines to be valid.</br>
I put it in /dev/.config to make it a temporary file.</br> So whenever a module is flashed, the file will be gone and won't interrupt the installation process of the currently installing module.