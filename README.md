# ml-docker-app

This repository contains a simple machine learning application Dockerized for easy deployment.

## How to Create a Virtual Environment

A virtual environment is a self-contained Python environment that allows you to manage dependencies and isolate projects. Follow the steps below to create a virtual environment using Python:

### Prerequisites

Make sure you have Python installed on your system. You can download Python from the [official Python website](https://www.python.org/).

### Step 1 : Open a Terminal

Open your terminal or command prompt.

### Step 2 : Create a New Folder for Your Project (Optional)

```python
mkdir ml-docker-app
cd ml-docker-app
```

### Step 3 : Create a Virtual Environment

```python
# On Windows
python -m venv venv

# On Unix or MacOS
python3 -m venv venv
```

This command creates a new folder named venv that contains the virtual environment.

### Step 4 : Activate the Virtual Environment

On Windows : 

```python
.\venv\Scripts\activate
```

On Unix or MacOs : 

```python
source venv/bin/activate
```

After activation, your terminal prompt should change to indicate that you are now working within the virtual environment.

### Step 5 : Install Dependencies

You can now install your project dependencies within the virtual environment. For example, if you have a requirements.txt file, run:

```python
pip install -r requirements.txt
```