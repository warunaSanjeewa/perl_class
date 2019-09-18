#!/usr/bin/perl -w

open( FILE, "names_groups.txt" ) || die "Enable to open test file";

$char = getc( FILE );
print "First Character is $char\n";

$char = getc( FILE );
print "Second charactor is $char\n";

$position = tell(FILE);

print "Position with in file $position\n";
close(FILE);