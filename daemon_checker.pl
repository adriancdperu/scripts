#!/usr/bin/env perl
use strict;
use warnings;

use Investometrica::Config::Base;
use Investometrica;

_check_process();

sub _check_process {
    my $daemons = [
        +{
            name => &config->current->{'daemon_plackup'}->{'name'},
        },
        +{
            name => &config->current->{'daemon_log_sender'}->{'name'},
        },
    ];

    for my $daemon (@$daemons) {

        my $process_name = $daemon->{name};

        if (`ps -aef | grep -v grep $process_name`) {
            print "Process is running!\n";
        }
        else {
            print "Not running\n";
        }

    }
}

1;
