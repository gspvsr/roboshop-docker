# Use Alpine Linux base image
FROM alpine:latest


# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt /app/
RUN pip3 install --upgrade pip setuptools && \
    pip3 install -r requirements.txt

# Copy Python files and payment.ini
COPY *.py /app/
COPY payment.ini /app/

# Set environment variables
ENV AMQP_USER=roboshop \
    AMQP_PASS=roboshop123

# Define the command to run the application using uwsgi with the provided configuration
CMD ["uwsgi", "--ini", "payment.ini"]
