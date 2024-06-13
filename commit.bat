@REM setup and commit
SET /P msg=Commit message:
cd maps
dmxconvert -i de_nuke_custom.vmap -o de_nuke_custom.vmap-txt -oe keyvalues2 -of vmap
dmxconvert -i de_nuke_custom_prefab.vmap -o de_nuke_custom_prefab.vmap-txt -oe keyvalues2 -of vmap
cd ..
git add .
git commit -m "%msg%"
timeout /t 5