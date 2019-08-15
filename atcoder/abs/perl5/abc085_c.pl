use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my ($N, $Y) = split " ", get;

for my $yukichi (0..$N) {
    for my $higuchi (0..$N-$yukichi) {
        my $noguchi = $N - $yukichi - $higuchi;
        if (($yukichi * 10000 + $higuchi * 5000 + $noguchi * 1000) == $Y) {
            say "$yukichi $higuchi $noguchi";
            exit;
        }
    }
}

say "-1 -1 -1";