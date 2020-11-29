base_image:=dockerforxxx/xxx-blog-base:2.6.3-slim
image_name:=dockerforxxx/xxxblog:lastest
force_build?=false

build_base:
	DOCKERFILE=./build/Dockerfile.base-slim \
	TAG=$(base_image) \
	FORCE_BUILD=$(force_build) \
	sh ./build/scripts/build_base.sh

build_app: build_base
	DOCKERFILE=./build/Dockerfile.xxxblog \
	IMAGE_NAME=$(image_name) \
	BASE_IMAGE=$(base_image) \
	sh ./build/scripts/build_app.sh

