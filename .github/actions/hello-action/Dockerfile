FROM debian:bullseye-slim

# Install bash (if not already in the base image)
RUN apt-get update && apt-get install -y bash && rm -rf /var/lib/apt/lists/*

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
