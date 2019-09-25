use strict;
use warnings;

package Calculator;

sub new{
		my ($class,$args) = @_;
		my $self = bless{ num1=> $args->{num1},
						  num2=> $args->{num2},
						  operator=> $args->{operator}
						}, $class;
}



sub execute{
	my $self = shift;
	if($self->{operator} eq '/'){
		return ($self->{num1})/($self->{num2});
	};
	if($self->{operator} eq '*'){
		return ($self->{num1})*($self->{num2});
	};
		if($self->{operator} eq '+'){
		return ($self->{num1})+($self->{num2});
	};
		if($self->{operator} eq '-'){
		return ($self->{num1})-($self->{num2});
	};
	return 0;
	
}

sub set_operator{
	my ($self,$new_oper) = @_;
	$self->{operator} = $new_oper;
}


sub to_string{
	my $self = shift;
	return "Calculation : $self->{num1} $self->{operator} $self->{num2}";
}

1;