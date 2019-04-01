PHONY: all

all:
	ruby -e 'puts "\u32ff".encode("utf-8")'
	ruby -e 'puts "\u337b".encode("utf-8")'
	ruby -e 'puts "\u4ee4".encode("utf-8")'
	ruby -e 'puts "\uf9a8".encode("utf-8")'

docker/mysql/initdb.d/02.sql:
	touch $@
	echo "insert into test values(null, '$(shell ruby -e 'print "\u32ff".encode("utf-8")')', '\u32ff');" >> $@
	echo "insert into test values(null, '$(shell ruby -e 'print "\u337b".encode("utf-8")')', '\u337b');" >> $@
	echo "insert into test values(null, '$(shell ruby -e 'print "\u4ee4".encode("utf-8")')', '\u4ee4');" >> $@
	echo "insert into test values(null, '$(shell ruby -e 'print "\uf9a8".encode("utf-8")')', '\uf9a8');" >> $@
	echo "insert into test values(null, '$(shell ruby -e 'print "\u4ee4\u548c".encode("utf-8")')', '\u4ee4\u548c');" >> $@
	echo "insert into test values(null, '$(shell ruby -e 'print "\uf9a8\u548c".encode("utf-8")')', '\u4ee4\uf9a8');" >> $@

clean:
	rm docker/mysql/initdb.d/02.sql
