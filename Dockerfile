# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM alpine:latest

# Copy the local package files to the container's workspace.
ADD . /Users/wagomez/Go/src/secondWebApp

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go install /Users/wagomez/Go/src/secondWebApp

# Run the outyet command by default when the container starts.
ENTRYPOINT /go/bin/secondWebApp

# Document that the service listens on port 8080.
EXPOSE 8080
