# RUBY WIKI README

This is a simple wiki built with Sinatra to illustrate various design patterns in Ruby. http://sinatrarb.com/intro.html

### Base app 
This is a single page wiki with everything, apart from the file to store info being in the one ruby file. Look at it and see it in all of its messiness.

### Composite app
This version has made the code more readable by moving sections to erb views files to get the html out of the code so that it is inclused at run time. By default template views go into a 'views' directory in Sinatra. We also made more use of the readFile method so that it is called twice.


