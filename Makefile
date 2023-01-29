a.out:
	gcc Aaprender.c

clean:
	rm Aaprender

test: a.out
	bash test.sh
