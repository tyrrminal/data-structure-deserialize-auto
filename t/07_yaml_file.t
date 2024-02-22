#!/usr/bin/perl
use v5.26;
use warnings;

use Test2::V0;

use Data::Structure::Deserialize::Auto qw(deserialize);

my $filename = 't/data/sample.yml';

my $ds = deserialize($filename);
is($ds->{doe}, 'a deer, a female deer', 'deserialize YAML file');

done_testing;
