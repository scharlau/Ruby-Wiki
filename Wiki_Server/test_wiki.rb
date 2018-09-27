require './wiki_server'
require './test'
require 'socket'

class TestWiki

 def setup
  @test = WikiServer
  @thr = Thread.new { @test = WikiServer.new }
  
   #@test.start
   @myTest = Test.new
   s = TCPSocket.open('localhost', '3000')
   line = s.gets
   puts @myTest.compare(true, line.include?("Hello"), "start")
 end

 def teardown
  Thread.kill(@thr)
  sleep(2)
  #check all stopped - maybe don't need this?
  puts @myTest.compare(false, nil, "stop")

 end 
 
 def get_page(link)
   page = TCPSocket.open(link, '3000')
   fullpage = ' '
   while line = page.gets
     fullpage += line
   end
   return fullpage
 end
 
 def compare(expected, actual, message)
   puts @myTest.compare(expected, actual, message)
 end

#the test script using the test methods above
@test = TestWiki.new
@test.setup

#serving content
fullpage = @test.get_page('localhost')
puts @test.compare(true, fullpage.include?("Hello"), "check")

#serving up other pages
 @test.teardown
end
