#!/bin/bash


# If command starts with a - option, run fierce.
if [ "${1:0:1}" = '-' ]; then
	/bin/bash -c "/usr/local/bin/perl /opt/fierce/fierce.pl $@"
else
	exec "$@"
fi

