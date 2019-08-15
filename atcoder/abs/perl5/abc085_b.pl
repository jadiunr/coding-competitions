use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $N = get;
my $D = [map {get} 1..$N];

my %tmp = ();
@$D = grep {! $tmp{$_}++} @$D;

say scalar(@$D);