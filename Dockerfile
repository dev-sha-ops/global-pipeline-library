# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set non-interactive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    wget \
    curl \
    unzip \
    git \
    maven && \
    apt-get clean

# Install Groovy
RUN wget https://groovy.jfrog.io/artifactory/dist-release-local/groovy-zips/apache-groovy-binary-4.0.15.zip -O /tmp/groovy.zip && \
    unzip /tmp/groovy.zip -d /opt && \
    ln -s /opt/groovy-4.0.15/bin/groovy /usr/bin/groovy && \
    rm /tmp/groovy.zip

# Verify installations
RUN groovy -version && mvn -version && java -version

# Set the working directory for the action
WORKDIR /action

# Copy scripts and action definition
COPY scripts/ scripts/
COPY action.yml .
RUN chmod +x scripts/script.groovy
# Set the default command to execute the Groovy script
CMD ["/usr/bin/groovy", "scripts/script.groovy"]
