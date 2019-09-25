use strict;
use warnings;

use Calculator;

my $calc = Calculator->new({
							num1 => 22,
							num2 => 2,
							operator => '/'
						   });

print $calc->execute();
$calc->set_operator('*');
print "\n---------------------------\n";
print $calc->execute();

$calc->set_operator('+');
print "\n---------------------------\n";
print $calc->execute();

$calc->set_operator('-');
print "\n---------------------------\n";
print $calc->execute();
#print $calc->to_string();