.DEFAULT=build

build:
	docker build -t timwebster9/azcopy:v1.0 .

push:
	docker push timwebster9/azcopy:v1.0

