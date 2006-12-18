## Kvs file that must searched for translations
kvs=../src/*.kvs

## Translation function name (ex: "tr" when you use "$tr()")
tr=tr

## Dictionary name
name=twinsinputcolor

## Langage codes (separated by spaces)
langs=fr it ru sr bg ca de cs nl pl pt pt_BR

######################################################################
######################################################################
######################################################################
MSGFMT = /usr/bin/msgfmt
POFILES = $(shell for lang in $(langs);do pos="$$pos $(name)_$$lang.po";done;echo $$pos)

all: translate

translate: update
	@echo Installation
	@for po  in $(POFILES); do \
		mo=`basename $$po .po`.mo; \
		echo "creating dictionnary $$mo" ; \
		$(MSGFMT) -vo $$mo $$po; \
	done
	@echo done

%.mo: %.po
	-touch $@ && $(MSGFMT) -vo $@ $<

extract:
	@echo Extraction
	@/bin/ls -1 $(kvs) > files ; \
	xgettext --add-location -o tmp.pot -k$(tr) -f files ; \
	sed 's/CHARSET/UTF-8/' tmp.pot > $(name).pot ; rm tmp.pot ;\
	rm files
	@echo "Messages extracted to $(name).pot";	

$(name).pot: extract		

checkpo: $(name).pot
	@for lang  in $(POFILES); do \
		test -f $$lang || cp -f $(name).pot $$lang ;\
	done

update: extract checkpo
	@echo Updates
	@old=_old; \
	for lang  in $(POFILES); do \
		echo "Updating file $$lang"; \
		mv -f $$lang $$lang$$old; \
		msgmerge -o $$lang $$lang$$old $(name).pot && rm -f $$lang$$old; \
	done

