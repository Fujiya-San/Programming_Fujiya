ANT = env LC_ALL=ja_JP.UTF-8 ANT
ARCHIVE = $(shell basename `pwd`)
SOURCES = $(shell find . -name "*.java")

all:
	$(ANT) all

clean:
	$(ANT) clean

test:
	$(ANT) test

install:
	$(ANT) install

doc:
	$(ANT) doc

zip:
	$(ANT) zip