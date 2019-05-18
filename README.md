# Brass-Sound-System
A simple Lua Sound system for GMod. Allowing you to stream sounds from a URL AND Cache them on the client to save web bandwidth and prevent sound delays after the first play

Normally, when you play a sound from a URL, there is a slight delay when streaming the sound. This helps get around that and save bandwidth by caching the sound file on the client, and it will attempt to play the sound from that cached file BEFORE trying to play from the supplied URL. Making the sound have no delay after playing it the first time.

You can always trigger the client to download your sounds ahead of time while playing so it pre-caches them before playing if you want to avoid any delays at all.

Some Advantages:
No longer need to download sounds upon join, and you can have the player download them only when needed.
Only need to upload sounds to a webhost, handy if you have a bunch of servers.
