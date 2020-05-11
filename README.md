# Portage Overlay

A personal overlay for Gentoo Portage which is maintained by grauwoelfchen.


## Install

### Manual Setup

```zsh
% cd /path/to/
% git clone https://gitlab.com/grauwoelfchen/portage-overlay.git
% chown -R portage:portage /path/to/portage-overlay
% echo 'PORTDIR_OVERLAY="/path/to/portage-overlay ${PORTDIR_OVERLAY}"' \
>> /etc/portage/make.conf
```

### Use Layman

#### Install layman

```zsh
% echo 'app-portage/layman git' >> /etc/portage/package.use
% emerge -av layman
% echo 'source /var/lib/layman/make.conf' >> /etc/portage/make.conf
```

#### Add custom overlay

Download layman.xml form this repository.

```zsh
% cd /etc/layman/overlays
% curl -L \
https://gitlab.com/grauwoelfchen/portage-overlay/raw/master/profiles/layman.xml \
grauwoelfchen.xml
```

Or use `layman-overlay-maker`

```zsh
% layman-overlay-maker
```

Finaly,

```zsh
% layman -a grauwoelfchen

 * Adding overlay,...
 * Overlay "grauwoelfchen" is not official. Continue installing? [y/n]: y
 * Running Git... # ( cd /var/lib/layman  && /usr/bin/git clone <...> )
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

* [Gentoo Linux Documentation -- Gentoo Overlays: Users' Guide](
https://www.gentoo.org/proj/en/overlays/userguide.xml)
* [Gentoo Linux Documentation -- Gentoo Overlays: Developers' Guide](
http://www.gentoo.org/proj/en/overlays/devguide.xml)
* [Layman - Gentoo Wiki](http://wiki.gentoo.org/wiki/Layman)
