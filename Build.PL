use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Math::BigPolynomial',
    license             => 'perl',
    dist_author         => 'Bob Kuo <bobjkuo@gmail.com>',
    dist_version_from   => 'lib/Math/BigPolynomial.pm',
    dist_abstract       => 'Polynomial operations with BigInts',
    build_requires => {
        'Test::More' => 0,
    },
    requires       => {
        'Math::GMPz' => 0.26,
    },
    add_to_cleanup      => [ 'Math::BigPolynomial-*' ],
    create_makefile_pl => 'traditional',
    meta_merge     => {
        resources => {
            repository  => 'http://github.com/bubaflub/math--bigpolynomial/tree/master'
        },
    },
);

$builder->create_build_script();
