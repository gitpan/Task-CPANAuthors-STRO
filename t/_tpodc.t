#!/usr/bin/env perl -w

use strict;
use warnings;

eval 'use Test::More';

## no critic (ProhibitStringyEval,RequireCheckingReturnValueOfEval)
if ($@) {
    ## no critic (ProhibitStringyEval,RequireCheckingReturnValueOfEval)
    eval 'use Test; plan tests => 1;';
    skip('Test::More is required for testing POD coverage',);
} else {
    require Test::More;
    ## no critic (ProhibitStringyEval,RequireCheckingReturnValueOfEval)
    eval 'use Test::Pod::Coverage 1.00';
    plan (skip_all => 'Test::Pod::Coverage is required for testing POD coverage') if $@;
    all_pod_coverage_ok();
}
