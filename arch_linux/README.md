# wvr-setup
This repository hosts the PKGBUILD files for installing ```wvr``` and the ```wvr-launcher``` binaries on Arch Linux.

## Howto

### Wvr
```
cd wvr
```
```
makepkg -Acs 
```
```
sudo pacman -U wvr-0.1.2-0-x86_64.pkg.tar.zst
```

### Wvr Launcher
```
cd wvr-launcher
```

```
makepkg -Acs 
```

```
sudo pacman -U wvr-launcher-0.1.0-0-x86_64.pkg.tar.zst
```