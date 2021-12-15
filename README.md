# Spotify Playlist Updater

This script aims to workaround the annoying issue that Spotify has due their approach of removing playlists title, description and image as soon as anyone "reports" the playlist, which many users are experiencing very often and for no reason.

After the initial setup, a double click on the customised ".cmd" file will restore your content in no time.

I've experienced myself this issue, with my playlist contents being wiped as often as once every 3 minutes for days, and with this script after a few hours they eventually stopped.

# Setup

In order to use the script you have to do the following:
- go to your spotify dashboard at https://developer.spotify.com/dashboard/
- login with your normal spotify account
- create an "app"
    - you will need an "app ID" and a "client secret" in order to access the Spotify API: these two pieces of information MUST BE KEPT FOR YOURSELF
- now you need your Spotify playlist ID, the easiest way to get it is by using the test console for the API
    - switch to the "Console" tab and then "Playlists"
    - click on "GET /v1/me/playlists"
    - click on "get token" at the bottom, then "try it"
    - on the right part of the screen you'll see a JSON file is returned, search for the desired playlist in the JSON (you might look for the title) and grab the corresponding ID

Now you have all the needed information.

Create a copy of the "update_playlist.cmd" file you find in this folder and rename it as you wish (I would use something related to the playlist name)
Edit the renamed file with a text editor (notepad will do) and replace the placeholders with the values you gathered before:
- <YOUR_CLIENT_ID> - the client ID of the app you created
- <YOUR_CLIENT_SECRET> - the client secret of the app you created
- <PLAYLIST_ID> - the playlist ID you found but invoking the GET api 
- <PLAYLIST_TITLE> - the title you want for your playlist
- <PLAYLIST_DESCRIPTION> - the description you want for your playlist
- <PLAYLIST.JPG> - the name of a JPG file (that must be in the same folder as the script) that will become the image of your playlist

Pay attention, the values you put in must still be surrounded by quotes as they are in the original template file
Ensure the image file is in the same folder as the script.

Ready to go, just double click on the CMD file and your playlist metadata will be udpated in no time.

I hope it helps!
