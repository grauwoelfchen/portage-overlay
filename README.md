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
stockhorn overlays # layman -f -a grauwoelfchen

 * Fetching remote list,...
 * Fetching new list... http://www.gentoo.org/proj/en/overlays/repositories.xml
 * Last-modified: Sat, 06 Dec 2014 16:10:03 GMT
 * Fetch Ok

 * Adding overlay,...
 * Running Git... # ( cd /var/lib/layman  && /usr/bin/git clone git://github.com/grauwoelfchen/portage-overlay.git /var/lib/layman/grauwoelfchen )
Cloning into '/var/lib/layman/grauwoelfchen'...
remote: Counting objects: 8, done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 8 (delta 0), reused 7 (delta 0)
Receiving objects: 100% (8/8), done.
Checking connectivity... done.
 * Running Git... # ( cd /var/lib/layman/grauwoelfchen  && /usr/bin/git config user.name "layman" )
 * Running Git... # ( cd /var/lib/layman/grauwoelfchen  && /usr/bin/git config user.email "layman@localhost" )
Unavailable repository 'gento' referenced by masters entry in '/var/lib/layman/grauwoelfchen/metadata/layout.conf'
 * Successfully added overlay(s) grauwoelfchen.
```


## Links

* [Gentoo Linux Documentation -- Gentoo Overlays: Users' Guide](https://www.gentoo.org/proj/en/overlays/userguide.xml)
* [Gentoo Linux Documentation -- Gentoo Overlays: Developers' Guide](http://www.gentoo.org/proj/en/overlays/devguide.xml)
* [Layman - Gentoo Wiki](http://wiki.gentoo.org/wiki/Layman)
