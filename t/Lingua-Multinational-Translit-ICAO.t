#!/usr/bin/env perl -w

use strict;
use warnings;

my @modules = qw/
    Lingua::Multinational::Translit::ICAO
/;

## no critic (ProhibitStringyEval,RequireCheckingReturnValueOfEval)
eval 'use Test::More';
if ($@) {
## no critic (ProhibitStringyEval,RequireCheckingReturnValueOfEval)
    eval 'use Test; plan tests => ' . scalar @modules;
    skip('Test::More is required for testing "require"');
} else {
    Test::More::plan('tests' => scalar @modules);
    require Test::More;
    require_ok($_) foreach (@modules);
}
