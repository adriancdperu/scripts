use strict;
use warnings;

my $regex = qr{\((iP\w+(?:\s*Simulator)?);(?: U;)? CPU (?:(?:iPhone )?OS ([0-9_]+) )?like Mac OS X;?\s?([ \)]+)?\)?(?:\s(AppleWebKit/.+))?};
my $str = 'Mozilla/5.0 (iPhone; CPU iPhone OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) CriOS/27.0.1453.10';
if ( $str =~ $regex ) {
print "Match: $1\n";
}
else {
print "fuck!\n";
}
