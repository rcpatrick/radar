# radar

View National Weather Service (NWS) Doppler radar from the command line!

## Install and Use

```
git clone git://git.raypatrick.xyz/radar.git
cd radar
sudo make install
```

The program is run with the command `radar`.

## Dependencies
- `POXIX-compatible shell`
- `grep(1)`
- `mpv(1)` (unless you change it - see below)

## Customization
If you'd rather not use `mpv(1)`, you can change the function called
`viewsite()` to point to whichever program you like.
