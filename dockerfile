# Use an official LaTeX Docker image as the base
FROM ubuntu:latest

# Install additional dependencies
# RUN apt-get update && \
#     apt-get install -y inotify-tools texlive

# # Set the working directory in the container
# WORKDIR /app

# # Copy the LaTeX project files into the container
# COPY . .

# # Start a command to watch for file changes and rebuild the LaTeX document
# CMD while inotifywait -e close_write *.tex; do \
#         latexmk -pdf Resume.tex; \
#     done

#pdflatex Resume.tex