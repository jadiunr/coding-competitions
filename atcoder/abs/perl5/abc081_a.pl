use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $s = get;

say scalar(() = $s =~ /1/g);