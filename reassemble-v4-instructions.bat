@echo off
REM Rename this file's extension from .txt to .bat after downloading
REM (View tab -> check "File name extensions" -> right-click -> Rename),
REM then run it from the same folder as all 6 wardogs-offline-installer-v4.exe.NNN parts.
REM
REM Expected part sizes (check these in File Explorer BEFORE reassembling -
REM if any part doesn't match exactly, re-download that part, don't reassemble yet):
REM   .001  314,572,800 bytes  (307,200 KB)
REM   .002  314,572,800 bytes  (307,200 KB)
REM   .003  314,572,800 bytes  (307,200 KB)
REM   .004  314,572,800 bytes  (307,200 KB)
REM   .005  314,572,800 bytes  (307,200 KB)
REM   .006  166,780,958 bytes  (162,872 KB)

echo Reassembling WARDOGS Artillery Calculator offline installer (v4)...
copy /b "wardogs-offline-installer-v4.exe.001" + "wardogs-offline-installer-v4.exe.002" + "wardogs-offline-installer-v4.exe.003" + "wardogs-offline-installer-v4.exe.004" + "wardogs-offline-installer-v4.exe.005" + "wardogs-offline-installer-v4.exe.006" "WARDOGS Artillery Calculator Setup (offline v4).exe"

if exist "WARDOGS Artillery Calculator Setup (offline v4).exe" (
    echo Done! You can now run "WARDOGS Artillery Calculator Setup (offline v4).exe"
) else (
    echo Something went wrong - check that all 6 .exe.NNN parts are in this folder.
)
pause
