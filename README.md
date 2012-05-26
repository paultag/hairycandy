Hairy Candy!
============

hairycandy is a set of metapackages, hacks and overlays to help make my
[Debian](http://debian.org) installs a bit more friendly.

It makes use of a few (pretty gnarly) hacks to get some of the work done, so
beware some unexpected behavior.

It sets dircolors in `bash_completions` - which may end up overriding the
dircolor import in your bashrc (if it's above the `bash_completion` include)

It also defines a few aliases:

Alias List
----------

    shopt -s extglob

This will set extglobs - stuff like `ls !(Music)`

    alias releasesig='gpg --armor --sign --detach-sig --local=$KEY'

Requires you export a KEY envvar - allows one to sign a tarball when preparing
a release.

    alias build='dpkg-buildpackage -S -us -uc -sa'

Quick alias to build a Debian source package.

    alias build-s='svn-buildpackage -rfakeroot --svn-ignore-new -uc -us'

Quick alias to build with svn-buildpackage.

    alias sl='ls'

I typo a lot :)

    alias vimr='vim "`ls | shuf -n1`"'

Edit a random file in the directory.

Packages
--------

    hairycandy-base

Base install - contains non-GUI apps in the dep, and a few files to help make
everything fly a bit smoother.

    hairycandy-devel

Development stuff - things like `sbuild`, `pbuilder`, etc.

    hairycandy-desktop-shim

Shim for the desktop. Contains some fixes to make awesome wm XDG aware, a bit of
a facelift for GDM (or, just a quick tweak :) ), and a few other nifty deps.
