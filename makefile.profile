profile: stencil.c
	gcc   -Ofast  -fopt-info-optimized -fopt-info-vec-missed -std=c99 -Wall $^ -o $@
	gcc -Ofast -pg -std=c99 -Wall $^ -o profile.gprof

