package Product;

use strict;
use warnings;

# init product with serial, name and price

sub new{
	my ($class,$args) = @_;
	my $self = bless{ serial => $args->{serial},
					  name => $args->{name},
					  price => $args->{price},
					  model => $args->{model}
					}, $class;
}

#get name of the product

sub get_name{
	my $self = shift;
	return $self->{name};
}

sub set_name{
	my ($self,$new_name) = @_;
	$self->{name} = $new_name;
}

sub get_price{
	my $self = shift;
	return $self->{price};
}
	
sub set_price{
	my ($self,$new_price) =@_;
	$self->{pirce} = $new_price;
}

sub get_serial{
	my $self = shift;
	return $self->{serial};
}
	
sub set_serial{
	my ($self,$new_serial) =@_;
	$self->{serial} = $new_serial;
}

sub get_model{
	my $self = shift;
	return $self->{model};
}
	
sub set_model{
	my ($self,$new_model) =@_;
	$self->{model} = $new_model;
}


# return formatted string of the product

sub to_string{
	my $self = shift;
	return "Serial: $self->{serial}\nName: $self->{name}\nPrice: $self->{price} USD\nModel: $self->{model}";
}

1;