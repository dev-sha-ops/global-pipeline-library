FROM groovy:latest

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean

# Set the working directory
WORKDIR /action

# Copy scripts and action files
COPY scripts/ scripts/
COPY action.yml .

# Default command to execute the Groovy script
CMD ["groovy", "scripts/script.groovy"]
