use Data::Dumper;

$c = { 'even' => [2,4,], 'odd' => [1,3,] };

$obj = bless {'foo' => 'bar' }, 'Example';

$msg = Dumper ($c,$obj);
print $msg;