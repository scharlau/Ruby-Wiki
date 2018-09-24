require 'sinatra'

$myinfo = "firstname lastname"
@info = "" 

get '/' do
    info = "Hello Ruby!"
    @info = info + " " + $myinfo
    '<html><body>' +
    '<b>Menu</b><br>' +
    '<a href="/create">Create</a><br>' +
    '<a href="/about">About</a><br>' +
    '<br><br>' + @info +
    '</body></html>'
end