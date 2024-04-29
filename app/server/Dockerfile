# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app/server

# Copy the current directory contents into the container at /app
#COPY . /app

# Install any needed packages specified in requirements.txt
RUN python -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 5000

# Define environment variable
#ENV NAME World

# Run main.py when the container launches
CMD ["/bin/bash", "-c", "source venv/bin/activate && python3 main.py"]

