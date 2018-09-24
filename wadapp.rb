require 'sinatra'

$myinfo = "firstname lastname"
@info = "" 

#root landing page
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

#for page not found issues
not_found do
    status 404
    redirect '/'
end

#about page
get '/about' do
    '<html><body>
    <b>Menu</b><br>
    <a href="/create">Create</a><br>
    <a href="/about">About</a><br>' +
    '<h2>About us</h2>'
    '<p>This wiki was created by</p>' + $myinfo + 
    '<p>Staff ID xxxxxx</p>' +
    '</body></html>'
end