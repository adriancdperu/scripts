# Restrict the use of global variables
use strict;
# use warnings; | Debug
# Exporter module will export functions from MyFistModule::name into main::name
# to make them available to scripts that use MyFirstModule
use :Exporter;
# For fetching files and other thingies
use File::Find;
use vars qw/$VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS/;

    # Variables

    $VERSION      = 1.00;
    # http://perldoc.perl.org/5.12.2/Class/ISA.html
    our @ISA      = qw/Exporter/;
    # Export by default
    @EXPORT       = ();
    # Export on demand
    @EXPORT_OK    = qw/func1 func2/;
    # 2 sets of export tags
    %EXPORT_TAGS  = ( DEFAULT => [qw(&func1)],
                      Both    => [qw(&func1 &func2)]
                    );

    # Functions

    sub func1 {

        sub sub_func1 {
        my $TOTAL_SIZE = 0;
        return (sub {$TOTAL_SIZE += -s if -f}, sub { return $TOTAL_SIZE});
        }

        my ($COUNT_THEM, $GET_RESULTS) = sub_func1();
        find($COUNT_THEM, '.');
        my $TOTAL_SIZE = &$GET_RESULTS();
        print "Total size of your files is: $TOTAL_SIZE bytes!\n";

    }

    sub func2 { print "Thank you for using me!\n"; }

# Always True

1;

