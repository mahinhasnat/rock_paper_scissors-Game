#!/usr/bin/perl
use strict;
use warnings;

my @choices = ('rock', 'paper', 'scissors');
print "Welcome to Rock, Paper, Scissors!\n";

while (1) {
    print "\nEnter your choice (rock, paper, scissors) or 'exit' to quit: ";
    chomp(my $player = lc(<STDIN>));

    last if $player eq 'exit';

    unless (grep { $_ eq $player } @choices) {
        print "Invalid choice. Try again.\n";
        next;
    }

    my $computer = $choices[int(rand(@choices))];
    print "Computer chose: $computer\n";

    if ($player eq $computer) {
        print "It's a tie!\n";
    } elsif (
        ($player eq 'rock'     && $computer eq 'scissors') ||
        ($player eq 'scissors' && $computer eq 'paper')    ||
        ($player eq 'paper'    && $computer eq 'rock')
    ) {
        print "You win!\n";
    } else {
        print "You lose!\n";
    }
}