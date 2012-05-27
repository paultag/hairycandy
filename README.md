Hairy Candy!
============

hairycandy is a set of metapackages, hacks and overlays to help make my
[Debian](http://debian.org) installs a bit more friendly.

It makes use of a few (pretty gnarly) hacks to get some of the work done, so
beware some unexpected behavior.

It sets dircolors in `bash_completions` - which may end up overriding the
dircolor import in your bashrc (if it's above the `bash_completion` include)

It also defines a few aliases:

Warning
-------

This package is *not* fit for the archive, and it's not going there. While I do
believe people should trust me, I can't give advice for people to trust me
blindly. Please read over all the files contained in this package. If anything's
out of sorts, please ask a local and friendly Debian Developer for advice. If
there's a problem, a bug or pull request would be nice.

This is also not up to vim policy. I know this.

I also ship a etc/vim/vimrc.local file. Don't install this if you have one
already. Remember, this is mostly stuff for my setup.

Building & installing
---------------------

    # OK. Stop. Read me first. Seriously.
    #
    # No, really. Read me.
    #
    # If you don't know *exactly* who I am, and everything about what I do,
    # and all that, DO NOT -- I repeat -- DO NOT install this package. No
    # user should *EVER* install random code from outside the archive. This
    # breaks the security we all work so hard to create.
    #
    # This package also has some *grave* issues (such as how it tacks on some
    # of it's hacks) for some cases. Please use me with care.
    #
    # Remember, question everything, trust no one. Review the code.
    #
    # Seriously, by installing a .deb, you've granted my scripts to run as root.
    dpkg-buildpackage -us -uc -b
    sudo dpkg -i ../*deb
    sudo apt-get install -f

Aliases
-------

This ships a lot of hacked in aliases from the `bash_completion`.

Packages
---------
