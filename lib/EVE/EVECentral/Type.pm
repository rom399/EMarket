use strict;
use warnings;

package EVE::EVECentral::Type;

sub new
{
    my $class = shift;
    my $self = {
        _id => shift,
        _name => shift,
    };
    bless $self, $class;
    return $self;
}

sub setID {
    my ( $self, $id ) = @_;
    $self->{_id} = $id if defined($id);
    return $self->{_id};
}

sub getID {
    my( $self ) = @_;
    return $self->{_id};
}

sub setName {
    my ( $self, $name ) = @_;
    $self->{_name} = $name if defined($name);
    return $self->{_name};
}

sub getName {
    my( $self ) = @_;
    return $self->{_name};
}

1;