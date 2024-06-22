# Use the specific Go version Alpine image
FROM golang:1.16-alpine

# Set the working directory inside the container
WORKDIR /test

# Copy the Go module files to the working directory
COPY . .

# Download and install Go module dependencies
RUN go build -o dockergin .

# Expose port 8000 to the outside world
EXPOSE 8000

# Command to run the executable
CMD ["./dockergin"]
