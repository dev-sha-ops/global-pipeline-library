FROM groovy:latest

# Install Maven
RUN apt update     
RUN apt install -y maven
RUN apt clean

# Set the working directory
WORKDIR /action

# Copy scripts and action files
COPY scripts/ scripts/
COPY action.yml .

# Default command to execute the Groovy script
CMD ["groovy", "scripts/script.groovy"]
