all: README.md

README.md:
	echo "# Unix Workbench - Project" >> README.md
	echo "Make file run at: $(shell date +%Y-%m-%d:%H:%M:%S)" >> README.md
	echo "Have $(shell wc -l < guessinggame.sh) lines in guessinggame.sh" >> README.md

clean:
	rm README.md
