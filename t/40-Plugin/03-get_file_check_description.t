#!perl

use strict;
use warnings;

use App::GitHooks::Plugin;
use Test::Exception;
use Test::FailWarnings -allow_deps => 1;
use Test::Git;
use Test::More;


# Require git.
has_git( '1.5.0' );
plan( tests => 2 );

can_ok(
	'App::GitHooks::Plugin',
	'get_file_check_description',
);

throws_ok(
	sub
	{
		App::GitHooks::Plugin->get_file_check_description();
	},
	qr/\QYou must define a get_file_check_description() subroutine in the plugin\E/,
	'The virtual method must be implemented in the plugin themselves.',
);
