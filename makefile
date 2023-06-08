hello:
	zig build-exe src/hello-world.zig -femit-bin=./build/hello-world
	./build/hello-world

vectors:
	zig build-exe src/vectors.zig -femit-bin=./build/vectors
	./build/vectors

linked-list:
	zig build-exe src/linked-list.zig -femit-bin=./build/linked-list
	./build/linked-list