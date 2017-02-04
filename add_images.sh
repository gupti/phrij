#!/bin/bash

for f in test_images/*; do
	mongofiles -d gridfs put $f
done

