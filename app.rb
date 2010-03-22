require 'rubygems'
require 'sinatra'

HEADER = '
<html>
  <head>
    <title>Did they pass health care reform?</title>
  </head>
  <body>
'

GA = '
  <script type="text/javascript">
  var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
  document.write(unescape("%3Cscript src=\'" + gaJsHost + "google-analytics.com/ga.js\' type=\'text/javascript\'%3E%3C/script%3E"));
  </script>
  <script type="text/javascript">
  try {
  var pageTracker = _gat._getTracker("UA-15385027-1");
  pageTracker._trackPageview();
  } catch(err) {}</script>
'

FOOTER = '
  </body>
</html>
'

NO = HEADER + '<div style="text-align: center; font-size: 6em;">no</div>' + GA + FOOTER

YES = HEADER + '
<div style="text-align: center; font-size: 6em;">yes!</div>
<script type="text/javascript" src="/cornify.js"></script>
<script language="javascript">
  for (var i = 0; i < 10; i++) {
    cornify_add();
  }
</script>
' + GA + FOOTER

get '/' do
  YES
end