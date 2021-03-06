CFLAGS += -std=c11 -Wall -Wextra

filedb_tests: filedb.o tests/tests.o
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

.PHONY: test
test: filedb_tests
	mkdir -p test_database
	./filedb_tests ./test_database/
