# XML2RFC=/Users/paul/Documents/xml2rfc-1.35/xml2rfc.tcl
XML2RFC=xml2rfc

DATE=`date +%s`

all: core 

core: 
	$(XML2RFC) draft-farrell-tls-pemesni.xml draft-farrell-tls-pemesni.txt

upload:
	scp draft-farrell-tls-pemesni.txt  down.dsg.cs.tcd.ie:/var/www/misc/draft-farrell-tls-pemesni.txt
	scp draft-farrell-tls-pemesni.xml  down.dsg.cs.tcd.ie:/var/www/misc/draft-farrell-tls-pemesni.xml

backuup:
	- mkdir backups
	cp draft-farrell-tls-pemesni.txt backups/draft-farrell-tls-pemesni-$(DATE).txt
	cp draft-farrell-tls-pemesni.xml backups/draft-farrell-tls-pemesni-$(DATE).xml

clean:
	rm -f   draft-farrell-tls-pemesni.txt *~

