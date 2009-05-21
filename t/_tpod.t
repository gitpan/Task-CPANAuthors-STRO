#!/usr/bin/env perl -w

use strict;
use warnings;

## no critic (ProhibitStringyEval,RequireCheckingReturnValueOfEval)
eval 'use Test::More';
if ($@) {
    ## no critic (ProhibitStringyEval,RequireCheckingReturnValueOfEval)
    eval 'use Test; plan tests => 1;';
    skip('Test::More is required for testing POD',);
} else {
    require Test::More;
    eval 'use Test::Pod 1.00';
    plan (skip_all => 'Test::Pod is required for testing POD') if $@;
    my @poddirs = qw( blib script );
    all_pod_files_ok( all_pod_files( @poddirs ) );
}