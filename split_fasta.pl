#!/usr/bin/perl

# useful for splitting a large fasta file into smaller ones and will rename the files according to hearders
# got this off SEQ answers 

$f = $ARGV[0]; #get the file name

open (INFILE, "<$f")
or die "Can't open: $f $!";

while (<INFILE>) {
$line = $_;
chomp $line;
if ($line =~ /\>/) { #if has fasta >
close OUTFILE;
$new_file = substr($line,1);
$new_file .= ".fa";
open (OUTFILE, ">$new_file")
or die "Can't open: $new_file $!";
}
print OUTFILE "$line\n";
}
close OUTFILE;
