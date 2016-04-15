use strict;
use warnings;
use Test::Simple tests => 3;

use Data::Dumper;

use EVE::EVECentral::Type;

my $type = EVE::EVECentral::Type->new();
    
ok( defined($type) && ref $type eq 'EVE::EVECentral::Type',  'new() works' );
   
   $type->setID(530);
    
ok( $type->getID() == 530, 'getID() works');
    
   $type->setName("Small Energy Nosferatu I");

ok( $type->getName() eq "Small Energy Nosferatu I", 'getName() works');


print Dumper($type);