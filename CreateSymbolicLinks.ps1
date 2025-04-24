Remove-Item -Path "$env:LocalAppData\Google\Chrome\*" -Recurse -Force
cmd /c mklink /d "$env:LocalAppData\Google\Chrome\User Data" "D:\AppData\Chrome\User Data"
cmd /c mklink /d "$env:AppData\Lesta" "D:\AppData\Lesta"