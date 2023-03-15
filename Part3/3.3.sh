
# I've never made a shell script before but.. I'm afraid to do this in
#   kotlin or java.

# Check arguments
if [ $# -lt 2 ]
  # If arguments are less than 2 then exit.
  then
    echo "You didnt give 2 args."
    exit 1
fi

# Set variables. git to the first arg.
GITHUB_REPO=$1
DOCKER_REPO=$2 # Docker to the 2nd arg.

# Clone the GitHub repository here.
git clone https://github.com/$GITHUB_REPO.git


# Ask for docker credentials
read -p "Enter your Docker Hub username: " DOCKER_USERNAME
# -s is for hiding it.
read -p "Enter your Docker Hub password: " DOCKER_PASSWORD

# Build the Docker image. Basic docker commands.
docker build . -t $DOCKER_REPO:latest

# Push the Docker image to Docker Hub
docker push $DOCKER_REPO
