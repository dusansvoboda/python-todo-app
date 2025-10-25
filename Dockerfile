# Use a lightweight Debian-based image for better compatibility with pip
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Ensure we have the necessary build tools and copy requirements
COPY requirements.txt .

# Install dependencies
# Flask does not usually need special build dependencies, but this is the install step
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
