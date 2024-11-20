#!/usr/bin/env groovy

// Capture script arguments
def mavenVersion = args[0]
def buildProfile = args[1]
def additionalArgs = args[2]

// Output the received arguments
println "Running Groovy Script with:"
println "Maven Version: ${mavenVersion}"
println "Build Profile: ${buildProfile}"
println "Additional Args: ${additionalArgs}"

// Example: Using Maven in the script
println "Executing Maven with version ${mavenVersion} and profile ${buildProfile}..."
def process = "mvn --version".execute()
process.waitFor()
println process.text

println "Groovy Script Execution Completed!"
