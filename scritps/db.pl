#!/usr/bin/perl -w
use DBI;
use strict;


my $dbc = DBI->connect('DBI:mysql:database=saasops;host=127.0.0.1;port=3306' ,'root', '') or die  "$DBI::errstr \n";	

	
#my $sth = $dbc->prepare('SELECT * FROM server')  or die "Couldn't prepare statement: $dbc>errstr";
#my $sth = $dbc->execute()  or die "Couldn't execute  statement: " . $dbc->errstr;

my @row_ary =  $dbc->selectrow_array('SELECT * FROM server')  or die "Couldn't execute  statement: $dbc->errstr ";

my @arr(Hostname,Service_Tag,Rack,Pdu_A,Pdu_B,Pdu_Ports,Drac_Ipmi,Serial_Port,Em1_IP,Em1_Port,Em1_Mac,Tor_Name,Bond_100_Ip,Bond_116_IP,Customers)

print @row_ary;
		

