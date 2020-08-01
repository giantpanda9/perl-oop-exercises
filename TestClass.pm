#!/usr/bin/perl

package TestClass; {
use Math::Currency;

	
	sub new {
		my($class) = @_;	
	
		my $self = {
			name => 'TestClass',
			version => '1.0',
		};
    
		bless $self, $class;
		return $self;
	}
	
	sub getName {
		my($self) = @_;
		return $self->{name};
	}
	
	sub getAPLUSB {
		my $self = shift;
		my $a = shift;
		my $b = shift;

		return int($a) + int($b);
	}
	
	sub getAPLUSBFloat {
		my $self = shift;
		my $a = shift;
		my $b = shift;
		$a = Math::Currency->new($a);
		$b = Math::Currency->new($b);
		return $a->as_float() + $b->as_float();
	}
}

1;
