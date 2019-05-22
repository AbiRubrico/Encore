<?php
// Create connection to MySQL
try{
    $db = new PDO("mysql:host=localhost;dbname=webtek19", "root", "");
    // Set the PDO error mode to exception
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}
