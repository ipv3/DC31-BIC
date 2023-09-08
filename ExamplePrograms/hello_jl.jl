# a comment - hello_jl.jl
# Julia is interpreted; not compiled. 
# To run on Linux: julia hello_jl.jl

println("Hello, World!")
print("Enter a line of text: ") ; line_in = readline()  
println("You Entered: " * line_in)
# readline() Does not add newline (\n) to string. String concatenation is * char
