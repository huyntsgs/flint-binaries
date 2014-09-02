# Prebuilt FLINT Binaries

See <http://www.flintlib.org/>

Prebuilt FLINT binaries. Current architectures:

- OSX
- `ubuntu-x86_64`

## FLINT Version (and dependencies)

- `flint-2.3`
  - `mpfr-3.1.2`
  - `mpir-2.3.1`


## WARNING

These libraries may:

- not be properly optimized and
- possibly not pass `make check`.

Use at your own risk. But I hope this helps the occasional person be capable of using FLINT *at all*.


## Why?

FLINT is great, but it's a bit annoying to install, especially since it has two independent dependencies. In particular, `homebrew` on OSX doesn't have FLINT (and none of the affiliated repos have anything reliable). When I was working on a particular crypto project, I wanted a drop-in compiled version of FLINT. This is:

- easy and fast to install
- easy to understand and reason about
	- doesn't touch anything else on the system
	- easy to remove (just delete the folder)
- likely to continue working in the future
- easy to move to new computers/servers I have access to


Yes, I know about installing to `/usr/local`, but installing shared C/C++ libraries is still black magic to me – and something always breaks. I welcome any suggestions on doing this "correctly" that won't cost me hours of config/debugging time.