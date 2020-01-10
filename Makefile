.PHONY: admin build clean

# Build the container from scratch
build:
	docker-compose up --build -d --force-recreate

# Delete container image
clean:
	docker-compose down -v --rmi all

# Open database browser
admin:
	@open -a "Google Chrome" http://localhost:8081

default: build
