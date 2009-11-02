#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Math::BigPolynomial' );
}

diag( "Testing Math::BigPolynomial $Math::BigPolynomial::VERSION, Perl $], $^X" );
