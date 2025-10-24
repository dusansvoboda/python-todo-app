# Use a slightly older/different base image
FROM python:3.8-slim

WORKDIR /app

# Copy configuration file
COPY .pydistutils.cfg /root/.pydistutils.cfg

# Copy files and install
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .
EXPOSE 5000
CMD ["python", "app.py"]
