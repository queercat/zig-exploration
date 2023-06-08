all:
	zig build-exe src/hello-world.zig -femit-bin=./build/hello-world
	./build/hello-world