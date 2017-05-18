BR_SOUND_SYSTEM = {};
BR_SOUND_SYSTEM.URL = "http://www.yourUrlHere.com/";
// Do note, the URL must be the same domain the PHP script is on.
function BR_SOUND_SYSTEM:DownloadSound(url)
	print("Downloading sound..");
	http.Fetch( BR_SOUND_SYSTEM.URL.."brsnd.php?sound="..url,
		function( body, len, headers, code )
			file.CreateDir("br_soundcache"); 
			file.Write("br_soundcache/"..util.CRC(url)..".txt", body);
			print("Sound file cached..");
		end,
		function( error )
			-- We failed. =(
		end
	 )
end

function BR_SOUND_SYSTEM:PlaySound(_sound, flags, func)
	if (file.Exists("br_soundcache/"..util.CRC(_sound)..".txt", "DATA")) then
		--print("Playing form cache..");
		sound.PlayFile("data/br_soundcache/"..util.CRC(_sound)..".txt", flags, func);
	else
		--print("Playing sound URL.."..tostring(_sound).."/"..tostring(flags).."/"..tostring(func));
		sound.PlayURL (_sound, flags, func);
		BR_SOUND_SYSTEM:DownloadSound(_sound);
	end
end
