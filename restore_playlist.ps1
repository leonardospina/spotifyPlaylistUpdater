
param (
  [Parameter(Mandatory=$true)]
  [string] $clientId,

  [Parameter(Mandatory=$true)]
  [string] $clientSecret,

  [Parameter(Mandatory=$true)]
  [string] $playlistId,

  [Parameter(Mandatory=$true)]
  [string] $playlistTitle,

  [Parameter(Mandatory=$true)]
  [string] $playlistDescription,

  [string] $playlistImage = "playlist.jpg"
)

Write-Host "Ensure Spotishell Module is installed (Install-Module -Name Spotishell)"
Install-Module -Name Spotishell
Import-Module Spotishell

try {
  New-SpotifyApplication -ClientId $clientId -ClientSecret $clientSecret
}
catch {
    
}
finally {
    
}

$playlist = Get-Playlist -id $playlistId
if (([System.Web.HttpUtility]::HtmlDecode($playlist.name)) -ne $playlistTitle -or ([System.Web.HttpUtility]::HtmlDecode($playlist.description)) -ne $playlist_description) {
    Write-Host "Updating playlist metadata"
    Set-Playlist -id $playlistId -Name $playlistTitle -Description $playlistDescription
    Send-PlaylistCoverImage -Id $playlistId -ImagePath $playlistImage
} else {
    Write-Host "Playlist is ok."
}
