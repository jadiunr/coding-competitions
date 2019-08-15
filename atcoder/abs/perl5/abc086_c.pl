use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $N = get;
my $plans = [map {[split " ", get]} 1..$N];
my $current_place = [0,0,0];
my $now_step = 0;

while (my ($idx, $plan) = each @$plans) {
    my $start_step = $idx ? $plans->[$idx-1]->[0]+1 : 1;
    for ($start_step..$plan->[0]) {
        if (($current_place->[1] == $plan->[1]) and ($current_place->[2] == $plan->[2])) {$current_place->[1]++; next}
        if ($current_place->[1] > $plan->[1]) {$current_place->[1]--; next}
        if ($current_place->[1] < $plan->[1]) {$current_place->[1]++; next}
        if ($current_place->[2] > $plan->[2]) {$current_place->[2]--; next}
        if ($current_place->[2] < $plan->[2]) {$current_place->[2]++; next}
    }
    unless (($current_place->[1] == $plan->[1]) and ($current_place->[2] == $plan->[2])) {say 'No'; exit}
}

say 'Yes';