profile: stencil.c
	#gcc -Ofast -fopt-info-optimized -fopt-info-vec-missed -std=c99 -Wall $^ -o $@
	#gcc -Ofast -pg -std=c99 -Wall $^ -o profile.gprof
	icc -fast -qopt-prefetch=5 -std=c99 $^ -o profile
	icc -fast -qopt-prefetch=5 -qopt-report3 -g -std=c99 $^ -o profile.gprof
