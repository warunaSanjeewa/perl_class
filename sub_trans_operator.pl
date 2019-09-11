#!/usr/bin/perl

$string = "The cat sat on the mat";

$string =~ s/cat/dog/;

print "$string\n";


######################################################
#!/usr/bin/perl
$string = 'The cat sat on the mat';
$string =~ tr/a/o/;

print "$string\n";

####################################################

$string = "The cat sat on the mat";

$string =~ tr/a-c/b/d;

print "$string\n";

####################################################

$string = "food";

$string =~ tr/a-z/a-z/s;

print "$string\n";


####################################################

$string = "Cats go Catatonic\nWhen given Catnip";
($start) = ($string =~ /^(\w+)/);#/\A(.*?)/);
@lines = $string =~ /^(.*?)/gm;

print "First Word: $start\n","Line starts: @lines\n";


####################################################

$string = "The time is: 12:31:02 on 4/12/00";
$string =~ /:\s+/g;
($time) = ($string =~ /\G(\d+:/\d+:)

print "$string\n";


#write a perl code to find possition of "R" in the sentence "WHO RUN THIS COUNTRY"













