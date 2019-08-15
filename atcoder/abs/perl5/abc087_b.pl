use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $a = get;
my $b = get;
my $c = get;
my $x = get;
my $count = 0;

for my $a2 (0..$a) {
    for my $b2 (0..$b) {
        for my $c2 (0..$c) {
            $count++ if 500*$a2+100*$b2+50*$c2 == $x; 
        }
    }
}

say $count;