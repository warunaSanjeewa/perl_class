use 5.010;
our $foo = "foo";

our $bar;

say ref *foo{SCALAR};
say ${*foo{SCALAR}};

*bar = *foo;

say $bar;
$bar = 'egg';

say $foo;