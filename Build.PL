use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Math::BigPolynomial',
    license             => 'perl',
    dist_author         => 'Bob Kuo <bobjkuo@gmail.com>',
    dist_version_from   => 'lib/Math/BigPolynomial.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Math::BigPolynomial-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
