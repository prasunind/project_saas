package mod::DB;
#use strict;
use DBI;

use Exporter; 
@ISA = qw(Exporter);
@EXPORT = qw(&hostdetails);






sub hostdetails{
	my $dbc = DBI->connect('DBI:mysql:database=saasops;host=127.0.0.1;port=3306' ,'root', '') or die  "$DBI::errstr \n";
	my $servername = $_[0];
	my $con1 = $dbc->prepare("SELECT * FROM server WHERE Hostname='$servername'")  or die "Couldn't prepare statement: $dbc->errstr";
	$con1->execute()  or die "Couldn't execute  statement: " . $dbc->errstr; 
	my $hash_ref = $con1->fetchrow_hashref;

	return %$hash_ref; 

} 


1;
