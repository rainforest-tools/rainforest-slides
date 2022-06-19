TOPTARGETS := all clean

SUBDIRS := $(wildcard */)

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	echo $@
	$(MAKE) -C $@ BASE=/$@

.PHONY: $(TOPTARGETS) $(SUBDIRS)