# Use the official TeX Live image from Docker Hub
FROM texlive/texlive

# Set the working directory
WORKDIR /workspace

# Copy the LaTeX source files into the container
COPY . /workspace

# Command to run when the container starts
CMD ["pdflatex", "-interaction=nonstopmode", "-output-directory=output", "main.tex"]
