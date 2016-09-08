# Fierce Docker
Fierce docker is a image containing a subdomain enumeration tool called [Fierce](http://ha.ckers.org/fierce/). This is a minimal self-contained wrapper to run fierce on any OS that supports docker. The perl:threaded image was used as a base image to support multi-threading, speeding up enumeration. By default the fierce service is executed when the image is run.

The perl script is forked directly from the Kali repository ([here](http://tools.kali.org/information-gathering/fierce)). Additionally I added a more extensive subdomain list. The original list can be found here https://github.com/TheRook/subbrute.

## About
Fierce is a semi-lightweight scanner that helps locate non-contiguous
IP space and hostnames against specified domains.  It's really meant
as a pre-cursor to nmap, unicornscan, nessus, nikto, etc, since all
of those require that you already know what IP space you are looking
for.  This does not perform exploitation and does not scan the whole
internet indiscriminately.  It is meant specifically to locate likely
targets both inside and outside a corporate network.  Because it uses
DNS primarily you will often find mis-configured networks that leak
internal address space. That's especially useful in targeted malware.

## Usage
```
docker run -ti menzo/fierce " -dns gmail.com"
```


### Credits:

* Fierce - http://ha.ckers.org/fierce/
* Sub domain list - https://github.com/TheRook/subbrute
* Kali - http://tools.kali.org/information-gathering/fierce
