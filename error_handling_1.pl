package T;

require Exporter;
@ISA = qw/Exporter/;

@EXPORT = qw/function/;

#use Carp qw(cluck);
use Carp;

sub function{
	#warn "Error in module!";
	#cluck "Error in module!";
	croak "Error in module!";
}

function();

1;