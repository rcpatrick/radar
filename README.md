# radar

View National Weather Service (NWS) Doppler radar from the command line!

## Install and Use
From Github:
```
git clone https://github.com/rcpatrick/radar
```
From my website:
```
git clone git://git.raypatrick.xyz/radar.git
```
Then:
```
cd radar
sudo make install
```

Typing `radar` at any command prompt will print usage instructions.

### A neat trick
Requires `dmenu(1)`. If you run `radar -l` or `radar --list`, `radar` will print a list of all NEXRAD doppler radar sites that it can query. You can parse this list with `dmenu(1)` to get a fuzzy-search capability:

```
radar $(radar --list | dmenu)
```

When the `dmenu` bar comes up, start typing your city or your state's postal abbreviation and see what comes up!

## Dependencies
- `POXIX-compatible shell`
- `grep(1)`
- `mpv(1)` (unless you change it - see below)

## Customization
If you'd rather not use `mpv(1)`, you can change the function called
`viewsite()` to point to whichever program you like.
