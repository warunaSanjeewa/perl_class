use Storable;
use Data::Dumper;


$a = [100,200, {'foo' => 'bar'}];

Dumper($a);
eval {
	store($a, 'test.dat');
};

print "Error wirting to file: $@" if $@;

$a = retrieve('test.dat');
Dumper ($a);

