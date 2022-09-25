function Start-Music
{
  $code = {
    $player = New-Object -ComObject 'MediaPlayer.MediaPlayer'
    $player.Open('https://github.com/gnations56/duckyfiles/raw/main/bestofme.mp3')
    $player
  }

  $script:ps = [PowerShell]::Create()
  $script:player = @($ps.AddScript($code).Invoke())[0]
}

Start-Music