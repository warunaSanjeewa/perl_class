
sub dispSymbols{
	my($hashRef) = shift;
	my(%symbols);
	my(@symbols);
	
	%symbols = %{$hashRef};
	@symbols = sort(keys(%symbols));
	foreach (@symbols){
		printf("%-10.10s| %s\n", $_, $symbols{$_});
	}
}

dispSymbols(\%Foo::);
package Foo;
	$bar = 2;
	sub baz {
		$bar++;
	}
	$new_one = "hi";
	sub new_one {
		print "new hello";
	}
	@new_one = ('2','3');