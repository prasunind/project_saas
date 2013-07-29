#!/usr/bin/perl -w
use DBI;
use strict;

my $colname;
my $valname;

my $servername = "$ARGV[0]";


my $dbc = DBI->connect('DBI:mysql:database=saasops;host=127.0.0.1;port=3306' ,'root', '') or die  "$DBI::errstr \n";	

#my @row_ary =  $dbc->selectrow_array('SELECT * FROM server WHERE Hostanme LIKE prdcont%')  or die "Couldn't execute  statement: $dbc->errstr ";



sub get_hostdetails{
	my $servername = $_[0];
	my $con1 = $dbc->prepare("SELECT * FROM server WHERE Hostname='$servername'")  or die "Couldn't prepare statement: $dbc>errstr";
	$con1->execute()  or die "Couldn't execute  statement: " . $dbc->errstr; 
	my $hash_ref = $con1->fetchrow_hashref;

	my %serverinfo = %$hash_ref;
	#while (($colname,$valname) = each(%serverinfo)) {
	#	print "$colname \t $valname \n";
	#	}
	return %$hash_ref; 

} 


get_hostdetails($servername);




		

