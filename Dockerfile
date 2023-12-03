# Use an official base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /app
COPY . .

# Install application dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python3", "./app.py"]
