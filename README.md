# Portage Overlay

Gentoo Portage Overlay by grauwoelfchen


## Install

### Manual Setup

```
# cd /path/to/somewhere
# git clone https://github.com/grauwoelfchen/portage-overlay.git
# chown -R portage:portage /path/to/somewhere/portage-overlay
# echo 'PORTDIR_OVERLAY="/path/to/somewhere/portage-overlay ${PORTDIR_OVERLAY}"' >> /etc/portage/make.conf
```

### Use Layman

#### Install layman

```
# echo 'app-portage/layman git' >> /etc/portage/package.use
# emerge -av layman
# echo 'source /var/lib/layman/make.conf' >> /etc/portage/make.conf
```

#### Add custom overlay

Download layman.xml form this repository.

```
# cd /etc/layman/overlays
# curl -L https://github.com/grauwoelfchen/portage-overlay/raw/master/profiles/layman.xml > grauwoelfchen.xml
```

Or use `layman-overlay-maker`

```
# layman-overlay-maker
```

Finaly,

```
# layman -f -a grauwoelfchen
```


## Links

* [Gentoo Linux Documentation -- Gentoo Overlays: Users' Guide](https://www.gentoo.org/proj/en/overlays/userguide.xml)
* [Gentoo Linux Documentation -- Gentoo Overlays: Developers' Guide](http://www.gentoo.org/proj/en/overlays/devguide.xml)
* [Layman - Gentoo Wiki](http://wiki.gentoo.org/wiki/Layman)
