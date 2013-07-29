#!/usr/bin/perl
use CGI qw(:standard);

print header;
print start_html ( -title=>'Host Info',  -author=>'Prasun', -bgcolor=>"black", -text=>"white" );

$host   = param(server);

  print "<head>"; 
  print "<meta http-equiv=\"REFRESH\" content=\"0;url=http://">";
  print "</head>"; 
}



end_html;
