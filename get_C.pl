#!/usr/bin/perl

$key = getc(STDIN);
print "Entered value is $key\n";

rename("report.txt", "report.csv");

unlink("test_delete.txt");