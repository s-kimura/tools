#!/usr/bin/perl

use strict;
use warnings;

my $file = shift; 
open(my $fh, "<", $file) || die "Cannot open $file: $!";

while(my $line = readline $fh){ 
    chomp $line;
    print `curl -d "scrape=true&id=$line" https://graph.facebook.com/`;
}

close $fh;

print "\n";
print "end scraped.\n";
