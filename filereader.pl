#!/usr/bin/perl
use strict;
use warnings;
use POSIX 'strftime';
use List::Util qw( max );
use FileHandle;
use Carp;
use Time::Local;

my $home_dir = $ENV{"HOME"};
my $log_dir = '/log';
my $dirs = $home_dir . $log_dir;
my $current_date = strftime "%Y%m%d", localtime;

my $log_name = "/log.$current_date";
my $file_location = $home_dir . $log_dir . $log_name;

my $receiver = $home_dir . '/apollo/script/data.txt'; # File were data is sent
my $time = localtime;

my %output;

# Loop & Regex for matching game id and start
# For 500,000 lines about 600 milisecs
open my $infile, "<", $file_location or die("$!: $file_location");
while (<$infile>) {
    if (/game_id:(\d+)\s*,\s*start/) {
        $output{$1}++;
    }
}
close $infile;

# Send
open my $outfile, '>>', $receiver or die("$!: $receiver");;
print { $outfile } "$time \n";
for my $item(keys %output) {
print { $outfile } "$item -> $output{$item}\n";
}
close $outfile;
