profile: stencil.c
	gcc -std=c99 -Wall $^ -o $@
	gcc -pg -std=c99 -Wall $^ -o profile.gprof

