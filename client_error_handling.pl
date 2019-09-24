#!/usr/bin/perl -w

use strict;
use Socket;

use Try::Tiny;


my $host = shift || 'localhost';
my $port = shift || 7890;
my $server = "localhost";
while (1){
try{
connection();
}
catch{
	chomp $_; # not $@
	#print "$_";
	if($_ eq "bad server"){
		warn "Can't connect to port $port! \n Retrying ... \n";
	}
	else{
		print "$_ \n";
		die $_;
	}
};

	my $line;

	while ($line = <SOCKET>){
	print "$line\n";
	}
	close SOCKET or die "close: $!";

sub connection {
socket(SOCKET,PF_INET,SOCK_STREAM,(getprotobyname('tcp'))[2])
	or die "Can't create a socket $!\n";

connect( SOCKET, pack_sockaddr_in($port, inet_aton($server)))
	#or die "Can't connect to port $port! \n";
	or die "bad server\n";
}

}
