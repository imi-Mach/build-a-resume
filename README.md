# LaTeX Live Environment with Docker

This repository contains a Dockerfile that sets up a LaTeX environment with live-reload capability using `latexmk`.

## Prerequisites

- Docker: You can download it from Docker's official website.

## Building the Docker Image

1. Clone this repository to your local machine.
2. Navigate to the directory containing the Dockerfile.
3. Run the following command to build the Docker image:

```bash
docker build -t my-latex-environment .
```

This will create a Docker image named my-latex-environment.

## Running the Docker Container
After the Docker image has been built, you can run a container with the following command:

```bash
docker run -p 4000:80 -v $PWD:/app my-latex-environment
```

Replace $PWD with the path to your LaTeX project.

## Using the LaTeX Environment
With the Docker container running, your LaTeX environment is now set up and watching for changes in the .tex files in your project directory. When you save a file, latexmk will automatically recompile your LaTeX code, and you can see the changes in real-time.

Note
This is a basic setup and might need to be adjusted based on your specific use case. For example, you might need to install additional LaTeX packages or Python libraries. Also, remember to replace the CMD command with the actual command you want to run for your LaTeX live preview. This Dockerfile assumes that you’re using latexmk for that purpose. If you’re using a different tool, you’ll need to adjust the CMD line accordingly.

Remember to always review and understand any Dockerfile before you build and run it, as it can execute arbitrary code on your system. If you’re new to Docker, I recommend checking out the official Docker documentation. It’s a great resource for getting started with Docker and understanding what you can do with it.