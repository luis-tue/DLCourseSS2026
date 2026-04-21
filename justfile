set shell := ["powershell.exe", "-c"]

sync:
    git pull
    git pull --rebase upstream main

done message="Update":
    git add .
    git commit -m "{{message}}"
    git push

update:
    git pull --rebase upstream
    