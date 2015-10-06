# homebrew-xdg

Homebrew formula for [xdg-app](https://wiki.gnome.org/Projects/SandboxedApps).

**WARNING**: Hackish in its current state.

## Usage

In order to use it, you first need to install basic deps (additionally to
standard [Linuxbrew](https://github.com/Homebrew/linuxbrew) deps).
On Debian-based systems it would be `sudo apt-get install python-dev libudev-dev`.

After that you need to run the following:

```
brew install libxml2 libxslt
brew tap doomhammer/xdg
brew install xdg-app
```

Since some of official formulae have errors it would be best to work
around them by running `brew install --debug xdg-app` and answering
2 (ignore) when there are problems (namely tests in libgcrypt and gpgme)

## Caveat

You may need to manuall run `chmod +s $(which xdg-app-helper)` to give
appropriate permissions to the helper binary

## Installing apps

To test follow
[Official instructions](https://wiki.gnome.org/Projects/SandboxedApps/NightlyBuilds)
