class Test
  def compare(expected, actual, message)
     if expected.eql?(actual) 
       return "true #{message}"
     else
      return "ERROR #{message} : expected: "+ expected.to_s + " but got " + actual.to_s
     end
  end
end
