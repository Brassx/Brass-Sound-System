<?php
	if (isset($_GET['sound']))
	{
		$path = str_replace(array($_SERVER['SERVER_NAME'], "www.", "http://"), "", $_GET['sound']) ;
		if (strpos($path, ".wav") != false || strpos($path, ".mp3") != false)
		{

			if (file_exists($path))
			{
				$sound = file_get_contents($path);
				echo $sound;
			}else
			{
			
				echo "";
			}
		}
	}
	exit(0);
?>