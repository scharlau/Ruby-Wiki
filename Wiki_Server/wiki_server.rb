require 'socket'
#class WikiServer < GServer
class WikiServer < TCPServer
  @server = TCPServer

  def initialize
    # super(port)
    #puts 'starting server'
    @server = TCPServer.new 3000
    loop do
      Thread.start(@server.accept) do |client|
        client.puts "Hello !"
        client.puts "Time is #{Time.now}"
        client.close
      end
    end
 end

 def stop
  @server.close
 end

end
