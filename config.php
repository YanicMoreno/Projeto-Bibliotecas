<?php
	define('HOST', 'localhost');
	define('USER', 'root');
	define('PASS', '');
	define('BASE', 'biblioteca.sql');

	$conn = new MySQLi(HOST,USER,PASS,BASE);
	