use strict;
use warnings;
use Test::More;

eval "use Test::Perl::Critic; 1" or do {
    plan skip_all => "Test::Perl::Critic is not installed.";
};
Test::Perl::Critic->import( -profile => 'xt/perlcriticrc' );

all_critic_ok(qw( bin lib t xt ));
