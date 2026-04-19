FROM ubuntu:22.04

# Install ttyd to see the terminal in browser and basic tools
RUN apt-get update && apt-get install -y ttyd curl wget vim bash && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /root

# Expose the terminal port
EXPOSE 7681

# Start the terminal
CMD ["ttyd", "-p", "7681", "bash"]
