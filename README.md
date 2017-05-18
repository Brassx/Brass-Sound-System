# Brass-Sound-System
A LUA/PHP Sound system for GMOD. Allowing you to stream sounds from a URL AND Cache them on the client to save web bandwidth and prevent sound delays after the first play. Do note, the URL must be the same domain the PHP script is on.

Normally, when you play a sound from a URL, there is a slight delay when streaming the sound. This helps get around that and save bandwidth by caching the sound file on the client, and it will attempt to play the sound from that cached file BEFORE trying to play from the supplied URL. Making the sound have no delay after playing it the first time.

You can always trigger the client to download your sounds ahead of time while playing so it pre-caches them before playing if you want to avoid any delays at all.

How to setup:

All you need to do is upload the brsnd.php script to your webhost(the same webhost the sounds you want to play are on), and change the URL in the cl_br_sndsystem.lua file to your fast DL webhost. Then you're done!

Do note, the URL must be the same domain the PHP script is on.
