all:		genome.fa reads.fa


clean:		
		rm -rf genome.fa reads.fa

genome.fa:	fake-genome.py
		python $^ > $@

reads.fa:	make-reads.py genome.fa
		python $^ > $@
