# a comment - hello_rb.rb
# Ruby is interpreted; not compiled. 
# To run on Linux: ruby hello_rb.rb

puts "Hello, World!" ;
print "Type in your first name: "
name = gets  # but normally we use gets.chomp to remove CR
print "Your name is " + name + "\n"
print "Your name is #{name}"
apple = 5 ; pear = "A pear" ; apple = apple + 1
if apple = 6 then puts "Six" ; pear = 2 ; bic = "Awesome!" ; end
