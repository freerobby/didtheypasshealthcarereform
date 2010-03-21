require 'rubygems'
require 'sinatra'

get '/' do
  no
end

def no
  '<div style="text-align: center; font-size: 6em;">no</div>'
end

def yes
  '
  <div style="text-align: center; font-size: 6em;">yes!</div>
  <script type="text/javascript" src="http://www.cornify.com/js/cornify.js"></script>
  <script language="javascript">
    for (var i = 0; i < 20; i++) {
      cornify_add();
    }
  </script>
  '
end