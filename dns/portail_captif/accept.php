<!DOCTYPE HTML>
<html>
	<head>
		<title>Portal</title>
		<link type="text/css" rel="stylesheet" href="style.css">
	</head>
	<body>
		<div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>Connected</h1>
			</div>

			<div class="login-form">
				<h3>Welcome</h3>
			</div>
			<?php
                      		$filename = "/var/www/html/.htaccess";
                      		$htaccess = file_get_contents($filename);
                      		$escIP = str_replace(".", "\.", $_SERVER['REMOTE_ADDR']);
                      		$htnew = str_replace("#INSERT#","#INSERT#\nRewriteCond %{REMOTE_ADDR} !^$escIP", $htaccess);
                      		if(!$fp = fopen($filename, 'w')){echo "Impossible d'ouvrir le fichier ($filename)";exit;}
                      		if(fwrite($fp,$htnew) === FALSE){echo "Impossible d'écrire dans le fichier ($filename)";exit;}
                      		fclose($fp);

                 	?>
		</div>
	</div>
	</body>
</html>
