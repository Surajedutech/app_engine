# Use official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that App Engine uses (8080)
EXPOSE 8080

# Run the app when the container starts
CMD ["python", "app.py"]
