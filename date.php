<!DOCTYPE html>
<?php
$variable1=" PHP 7";
?>
<html lang="fr">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<?php
echo "<title> Une page PHP</title>";
?>
	</head>
	<body>
	<script language="php">
echo '<h1>BONJOUR A TOUS </h1>';
</script>
<?php
echo "<h2>Titre écrit en PHP </h2>";
$variable2="MySQL";
?>
<p>Utilisation de variables PHP<br />Vous allez découvrir également
<?php
echo $variable2
?>
</p>
<?="<div><big>Bonjour de $variable2 </big></div>" ?>


		<?php
		echo "<h3> Aujourd'hui nous sommes le  ". date('d / M / Y H:m:s')."</h3><hr /> <hr />";
		echo "<h2>Bienvenue sur le site PHP 7</h2>";
		?>
	</body>
</html>
