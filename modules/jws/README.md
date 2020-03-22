jws
===

My personal repository of zsh hacks that I'm not bothering to package
up, but that I'd like to synchronize between machines.

Emacs
-----

I use [a script I made][1] to launch emacsclient in a frame.  I find
it useful for a variety of things, but in particular I've taken to
launching some of the more useful emacs "apps" like Calc and Magit in
their own frames.

This code simply wraps around this script further to launch specific
apps; I count this as a "personal" hack as a lot of the functions are
calls to self-written defuns in [my .emacs setup][2].

Weather
-------

From wttr.in.

zsh vi mode
-----------

I dislike how vi modes must be ideologically pure and studiously avoid
emacs bindings.  Some of us have both bindings stuck in our heads, and
especially from a command line, I expect C-[befknp] to work or else I
get a little crotchety.

As such, I add back those bindings in viins mode.

The idea is to do little adjustments directly from viins; bigger
changes (e.g. adding/removing files in command names... stuff that
really should be done via scripting...) can be done via vicmd.

[1]: https://github.com/jws85/em
[2]: https://github.com/jws85/.emacs.d
