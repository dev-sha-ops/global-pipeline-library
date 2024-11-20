#!/usr/bin/groovy

// Capture script arguments
def buildProfile = args[0]
def additionalArgs = args[1]

// Output the received arguments
println "Running Groovy Script with:"
println "Build Profile: ${buildProfile}"
println "Additional Args: ${additionalArgs}"

println "Executing  profile ${buildProfile}..."
def process = "mvn --version".execute()
process.waitFor()
println process.text

println "Groovy Script Execution Completed!"
