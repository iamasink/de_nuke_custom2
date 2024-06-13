@REM setup and commit
cd maps
dmxconvert -i de_nuke_custom.vmap -o de_nuke_custom.vmap-txt -oe keyvalues2 -of vmap
dmxconvert -i de_nuke_custom_prefab.vmap -o de_nuke_custom_prefab.vmap-txt -oe keyvalues2 -of vmap
git add .
SET /P msg=Commit message:
git commit -m "%msg%"
timeout /t 5