#!/bin/bash

test:
	rm -rf ./fund.db
	pytest -q
clean:
	rm -rf ./fund.db
