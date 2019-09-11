#!/usr/bin/perl

use warnings;
use strict;

my $x = 10;

my $xr = \$x;

# change $ via $xr
$$xr = $$xr*2;

print ("$x\n");
print ("$$xr \n");
print ("$xr\n");