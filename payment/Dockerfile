# Use Python Alpine base image
FROM python:3.9-alpine

# Expose port 8080
EXPOSE 8080

# Switch to root user temporarily to perform installation
USER root

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt /app/
RUN apk --no-cache add build-base linux-headers && \
    pip install --upgrade pip setuptools && \
    pip install -r requirements.txt

# Copy Python files and payment.ini
COPY *.py /app/
COPY payment.ini /app/

# Set environment variables
ENV AMQP_USER=roboshop \
    AMQP_PASS=roboshop123

# Define the command to run the application using uwsgi with the provided configuration
CMD ["uwsgi", "--ini", "payment.ini"]
