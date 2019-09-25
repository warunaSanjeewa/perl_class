#!/usr/bin/perl

use strict;
use warnings;

use Product;

my $iphone = Product->new({
							serial => 100,
							name => "iphone",
							price => 650.00,
							model => "7.0.1"
						});
					
my $nexus = Product->new({
							serial => 101,
							name => "nexus",
							price => 299.00,
							model => "4.0.22"
						});
						
print $iphone->to_string();
print "\n------------------------\n";
print $nexus->to_string();
print "\n--------------------------------------------------\n";

$iphone->set_name('Nokia');
print $iphone->get_name();
