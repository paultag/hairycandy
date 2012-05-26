#

build:
	@echo "Phony target."

install:
	set -e; cd files; \
	for x in `ls`; do \
		for f in `find $$x -type f`; do \
			if [ ! -e `dirname $(DESTDIR)/$$f` ]; then \
				mkdir -p `dirname $(DESTDIR)/$$f`; \
			fi; \
			cp -av $$f $(DESTDIR)/$$f; \
		done; \
	done;
