use 5.010;

use Net::Ping;
use IO::Socket;
use IO::Select;

#my $p = Net::Ping->new();
#if ($p->ping('perlmaven.com')){
#	say 'alive';
#}

sub check_alive {	
	my $site_name = $_[0];
	my $p = Net::Ping->new();
	if ($p->ping($site_name)){
		say 'alive';
	}
	return 0;
}


my @site_array = ( 'perlmaven.com' ,'www.perlmonks.org' ,'apache.org' );

foreach my $site (@site_array){
	print "$site : ";
	check_alive($site);
}