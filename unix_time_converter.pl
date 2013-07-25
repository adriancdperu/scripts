#!/usr/bin/env perl

my $time = 1365087540;
my @months = ("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
my ($sec, $min, $hour, $day,$month,$year) = (localtime($time))[0,1,2,3,4,5];
# You can use 'gmtime' for GMT/UTC dates instead of 'localtime'
my $new_year = $year+1900;

print "Unix time ".$time." converts to ".$months[$month]." ".$day.", ".($year+1900);
print " ".$hour.":".$min.":".$sec."\n";

my ($my_time_localized) = "$months[$month] $day $new_year";
print $my_time_localized;
