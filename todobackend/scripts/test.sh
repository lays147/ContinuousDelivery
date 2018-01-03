#!/bin/bash
. /appenv/bin/activate

pip install -r requirements_test.txt

exec $@
