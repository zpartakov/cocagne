<?php
/*
 * connection with the DB, do not change anything here
 */
if(preg_match($server_dns_regexp,$referent)){
$dbHostname = $zedbHostname;                       //your mysql webserver name, usually mysql.yourwebserver or localhost
} else {
$dbHostname = "localhost"; //useful if install on localhost and prod dbhostname differs
}
  ?>
