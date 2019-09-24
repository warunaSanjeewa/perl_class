use 5.010;
use warnings;

my $from_file = $ARGV[0]|| die "filename error 1";
my $to_file = $ARGV[1]|| die "filename error 2";

print "\n$from_file $to_file";

	foreach my $line (read_from($from_file)){
		write_to($to_file,$line);
	}

close ;

sub read_from{
	my $filename = shift;
	my output = open(F,$filename)||die{"Could not open $filename"};
	return output;
}
	
sub write_to{
	my $filename = $_[0];
	my $line = $_[1];
	open(my $fh,'>>',$filename) or die "Couldn't open file $filename $!";
	print $fh "$line";
}