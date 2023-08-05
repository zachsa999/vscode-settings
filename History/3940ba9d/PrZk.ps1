for ($i = 1; $i -lt 40; $i++) {
    (new-object -com wscript.shell).SendKeys([char]175) 
}

for ($i = 1; $i -lt 3600; $i++) {
  Write-Output "Sleeping for $i seconds"
  Start-Sleep -Seconds $i
}

Add-Type -AssemblyName presentationCore
$mediaPlayer = New-Object system.windows.media.mediaplayer 
$mediaPlayer.open("C:\Users\Zach\Downloads\Telegram Desktop\James Canupp Looking for a city 1.mp3")
$mediaPlayer.Play()


