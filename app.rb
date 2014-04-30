require 'sinatra'

get '/spike' do
	get_page params
end

get '/' do
	get_page params
end

get '/another' do
	get_page params
end

def get_page(params) 
ajax = <<SPIKE
<html>
<head>
	<meta name="fragment" content="!">
</head>
<body>
	<h1>I'm the SPIKE!!</h1>
</body>
</html>
SPIKE

crawled = <<CRAWLED
<html>
<head>
	<meta name="fragment" content="!">
</head>
<body>
	<h1>I'm the CRAWLED!!</h1>
</body>
</html>
CRAWLED

params["_escaped_fragment_"].nil? ? ajax : crawled
end
