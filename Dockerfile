# Use an official base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install application dependencies
RUN pip3 install -r requirements.txt

# Define environment variables
ENV ENV_VARIABLE_NAME=value

# Run the application
CMD ["python3", "app.py"]
