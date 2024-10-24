# Use the official TeX Live image from Docker Hub
FROM texlive/texlive

# Set the working directory
WORKDIR /workspace

# Copy the LaTeX source files into the container
COPY . /workspace

# Compile the LaTeX document
RUN pdflatex main.tex

# Command to run when the container starts
CMD ["pdflatex", "main.tex"]