#!/usr/bin/perl
use Mysql;

# HTTP HEADER
print "Content-type: text/html \n\n";

# conf
$host = "https://sg2nlsmysqladm1.secureserver.net/grid50/129";
$database = "guestbook123";
$user = "guestbook123";
$pw = "IloveFortran1!";

# PERL MYSQL CONNECT
$connect = Mysql->connect($host, $database, $user, $pw);
