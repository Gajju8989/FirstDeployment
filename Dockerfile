# Use a specific Go version Alpine image
FROM golang:1.21.6-alpine

# Set the working directory inside the container
WORKDIR /test

# Copy go.mod and go.sum files to the working directory
COPY go.mod go.sum ./

# Download and install Go module dependencies
RUN go mod download

# Copy the entire project to the working directory
COPY . .

# Build the Go application
RUN go build -o dockergin .

# Expose port 8000 to the outside world
EXPOSE 8000

# Command to run the executable
CMD ["./dockergin"]
