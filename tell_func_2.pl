#!/usr/bin/perl -w

use Fcntl qw( SEEK_SET );

open IN, "<./seek.txt";
seek(IN,2,SEEK_SET);
$position = tell( IN );
print "Position with in file $position\n";
read IN, $temp, 5;
print "read from 2-5 is '$temp'\n";
$position = tell(IN);
print "position with in file $position\n";

close(IN);