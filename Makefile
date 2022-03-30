build:
	docker build --platform linux/amd64 -t openfin-testing:latest .
test:
	docker run -it --platform linux/amd64 openfin-testing:latest