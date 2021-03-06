#!/usr/bin/env perl

use strict;
use warnings;

use Test::FailWarnings -allow_deps => 1;
use Test::More tests => 1;

BEGIN
{
    use_ok( 'App::GitHooks::Utils' );
}

diag( "Testing App::GitHooks::Utils $App::GitHooks::Utils::VERSION, Perl $], $^X" );
