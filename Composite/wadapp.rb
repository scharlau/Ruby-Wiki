require 'sinatra'

$myinfo = "firstname lastname"
@info = "" 

def readFile(filename)
    info = ""
    file = File.open(filename)
    file.each do |line|
        info = info + line
    end
    file.close
    $myinfo = info
end

#root landing page
get '/' do
    info = "Hello Ruby!"

    len = info.length
    len1 = len
    readFile("wiki.txt")
    @info = info + " " + $myinfo
    len = @info.length
    len2 = len-1
    len3 = len2-len1
    @info = @info +  " " + len3.to_s
    erb :home
end


#about page
get '/about' do
    erb :about
end

#create page
get '/create' do
    erb :create
end

#edit form page
get '/edit' do
    info = ""
    file = File.open("wiki.txt")
    file.each do |line|
        info = info + line
    end
    file.close
    @info = info
    erb :edit
end

#put method to update wiki.txt file from form page
put '/edit' do
    info = "#{params[:message]}"
    @info = info
    file = File.open("wiki.txt", "w")
    file.puts @info
    file.close
    redirect '/'
end

#for page not found issues
not_found do
    status 404
    redirect '/'
end