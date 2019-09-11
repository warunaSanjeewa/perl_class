#!/usr/bin/perl

use warnings;
use strict;

use Data::Dumper qw(Dumper);

my %grades;

$grades{"Foo Bar"}{Mathamatics} = 97;
$grades{"Foo Bar"}{Literatuer} = 67;
$grades{"Peti Bar"}{Literatuer} = 88;
$grades{"Peti Bar"}{Mathamatics} = 82;
$grades{"Peti Bar"}{Art} = 99;
 
 print Dumper \%grades;
 print "------------------\n";
 
 
 foreach my $name (sort keys %grades) {
	foreach my $subject (keys %{$grades{$name}}){
		print "$name, $subject: $grades{$name}{$subject}\n";
	}
 }