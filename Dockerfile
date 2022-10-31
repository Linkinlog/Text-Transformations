# Define which image/version
ARG GO_IMAGE=golang
ARG GO_VERSION=buster

# Specify our api image
FROM ${GO_IMAGE}:${GO_VERSION} as transform_api

# Specify the working directory
WORKDIR /usr/src/app

# Copy docker-entrypoint and go files over
COPY docker-entrypoint.sh /
COPY api/go.mod ./

# Install any dependencies and make entrypoint executable
RUN go install github.com/cosmtrek/air@latest \
	&& go mod download \
	&& go mod verify \
	&& chmod u+x /docker-entrypoint.sh

# ENTRYPOINT [ "tail", "-f", "/dev/null" ]
ENTRYPOINT [ "/docker-entrypoint.sh" ]
