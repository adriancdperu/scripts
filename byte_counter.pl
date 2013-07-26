#!/usr/bin/perl -w
use strict;

# Byte counter

my %total_bytes;

while (<>) {
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
}

for my $source (sort keys %total_bytes) {
    for my $destination (sort keys %{ $total_bytes{$source} }){
        print "$source => $destination:",
        "$total_bytes{$source}{$destination} bytes\n";
    }
}
