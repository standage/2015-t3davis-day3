all:		genome.fa


clean:		
		rm -rf genome.fa

genome.fa:	fake-genome.py
		python fake-genome.py > $@
