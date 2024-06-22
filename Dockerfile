# Use the specific Go version Alpine image
FROM golang:1.21.6-alpine

# Set the working directory inside the container
WORKDIR /test

# Copy the Go module files to the working directory
COPY . /test

# Download and install Go module dependencies
RUN go built/test


EXPOSE 8000

ENTRYPOINT ["./dockergin"]
