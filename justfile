set shell := ["powershell.exe", "-c"]
just_bin := "C:\Users\luist\AppData\Local\Microsoft\WinGet\Packages\Casey.Just_Microsoft.Winget.Source_8wekyb3d8bbwe\just.exe"

sync:
    git pull
    git pull --rebase upstream main

done message="Update":
    git add .
    git commit -m "{{message}}"
    git push

update:
    git pull --rebase upstream
    