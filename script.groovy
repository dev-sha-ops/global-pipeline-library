// script.groovy
if (args.length < 3) {
    println "Please provide three inputs."
    System.exit(1)
}

def input1 = args[0]
def input2 = args[1]
def input3 = args[2]

println "Executing Groovy script with inputs:"
println "Input 1: $input1"
println "Input 2: $input2"
println "Input 3: $input3"

// Add your processing logic here
