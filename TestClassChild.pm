#!/usr/bin/perl

package TestClassChild; {
	use base TestClass;
	
	sub new {
		my($class) = @_;
		my $self = TestClass::new($class);
		$self->{name} = "IamChild";
		$self->{surname} = "IamChild1";
		return $self;
	}
	
	sub getName {
		my($self) = @_;
		return $self->{name} . " - From Child Class";
	}
	
	sub getNameSurname {
		my($self) = @_;
		return $self->{name} . " " . $self->{surname};
	}
	
	sub getSurname {
		my($self) = @_;
		return $self->{surname};
	}
}

1;
