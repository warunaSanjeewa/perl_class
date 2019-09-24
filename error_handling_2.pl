use strict;
use warnings;

my $code = q|
	my $text = "Hello";
	
	print "$text\n";
	
	#deliberately introduce an error
	ijlillk

|;

my $result = eval($code);

unless($result){
	print $@;
}
