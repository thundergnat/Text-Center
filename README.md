NAME
====

Text::Center - Easy centering of text fields

SYNOPSIS
========

```perl6
use Text::Center;

say 'Raku'.&center; # Center in a 79 columns by default, space padded by default
#                                      Raku

say 'Raku'.&center(20); # Center in 20 columns, space padded
#        Raku

say 'Raku'.&center(30, :fill('=')); # Center in 30 columns, equal sign padded
#============ Raku ============
```

DESCRIPTION
===========

Easily center text in a configurable field width (default 79). Pad with spaces by default but may substitute some other character if desired. Will leave a single space on either side of the text unless the text is too large to fit into the field width. In that case, just returns the text unaltered.

Exports a single subroutine:

    center( $text, $width = 79, :fill(' ') )

where

    $text is the text to be centered.

    $width (optional) is the field width to center within, default 79

    :fill (optional) is the fill character to use, default ' ' (space)

AUTHOR
======

thundergnat aka Steve Schulze

COPYRIGHT AND LICENSE
=====================

Copyright 2020 thundergnat

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

