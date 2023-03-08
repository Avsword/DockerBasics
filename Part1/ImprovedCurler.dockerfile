# Start with ubuntu 20.04
FROM ubuntu:20.04

# Install curl.
# apt-get update updates the package list from the repositories configured in the image.
# apt-get install -y curl installs the curl package. The -y flag automatically answers "yes" to any prompts that may appear during the installation process.
RUN apt-get update && apt-get install -y curl

# Copy script file on this img.
# Copy this script.sh file to the dir /app/
COPY script.sh /app/script.sh

# Entrypoint is the script.
ENTRYPOINT [ "./app/script.sh" ]


