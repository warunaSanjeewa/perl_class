use strict;
use warnings;

my $result = eval {
	my $wrong = 5/0;
	
	print "Value: $wrong\n";
};

print "script is still running!\n";

unless($result) {
	print $@;
}