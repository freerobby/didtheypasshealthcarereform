require 'rubygems'
require 'sinatra'

HEADER = '
<html>
  <head>
    <title>Did they pass health care reform?</title>
  </head>
  <body>
'

FOOTER = '
  </body>
</html>
'

NO = '<div style="text-align: center; font-size: 6em;">no</div>'

YES = '
<div style="text-align: center; font-size: 6em;">yes!</div>
<script type="text/javascript" src="/cornify.js"></script>
<script language="javascript">
  for (var i = 0; i < 20; i++) {
    cornify_add();
  }
</script>
'

get '/' do
  HEADER + NO + FOOTER
end