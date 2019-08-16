use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $n = get;
my $h = [map {+{number => $_, edited => 0}} split(" ", get)];

while (1) {
    my $edited = 0;
    for (0..$n-2) {
        if ($h->[$_]{number} > $h->[$_+1]{number}) {
            unless ($h->[$_]{edited}) {
                $h->[$_]{number}--;
                $h->[$_]{edited} = 1;
                $edited = 1;
            }
            
        }
    }
    last unless $edited;
}

for (0..$n-2) {
    if ($h->[$_]{number} > $h->[$_+1]{number}) {say 'No';exit}
}

say 'Yes';
