# First stage: Build the virtual environment
FROM python:3.9-slim-buster AS builder

WORKDIR /usr/src/app

# Copy only requirements file to leverage Docker cache
COPY requirements.txt .

# Install dependencies into the virtual environment
RUN python -m venv venv && \
    venv/bin/pip install --no-cache-dir -r requirements.txt

# Second stage: Copy only the necessary artifacts into a smaller base image
FROM python:3.9-slim-buster

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/venv ./venv
COPY . .

# Set the command to run your application
CMD ["venv/bin/python", "app.py"]
