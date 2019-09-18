$a = 10;
*b = *a;
$r = \$a; $$r++;

@array = (10,20);
DoublEachEntry(*array);
print "@array \n";

sub DoublEachEntry{
	local *copy = shift;
	foreach $element (@copy){
		$element *= 2;
}
}