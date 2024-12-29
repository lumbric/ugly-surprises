Who likes surprises?

Surprises are terrible for programing. Who wants to use an API with surprising
results?

But surprising are fascinating on the other hand. The same holds for mistakes.
Both remind me which parts of the world I did not yet understand quite well.
Sometimes it really helps to not look at the Instagram version if you want to
see and understand reality.
Surprises have the power to destabilize your beliefs or your current notion of
reality and eventually will make you learn something new about reality
afterwards.

This talk should not make you learn something new, but at least confuse and
surprise you as much as possible as a first step towards learning something
new. If not I hope it is at least entertaining.

Also every programing conference should have a talk making fun of the
programing language. If you know the famous WAT talk, you know what I mean.


Bool
====

Let's start with something easy!

>>> int('42')
42
>>> float('3.14')
3.14
>>> bool('false')
True


Is int
======

>>> 'True' == True
False

...but True equals True:

>>> True == True
True

...and True is also identical to True, because there is only one truth:

>>> True is True
True

The empty list equals the empty list:

>>> [] == []
True

But the empty list is not identical with another empty list because there is
more than one empty list:

>>> [] is []
False

Let's look at an integer:

>>> meaning = 42

And another integer:

>>> life = 42

They are equal to each other:

>>> meaning == life
True

They are also identical:

>>> meaning is life

There is only one true meaning of life!

If we look at a thousand:

>>> thousand = 1000

And another one:

>>> other = 1000

They are equal but not identical:

>>> thousand == other
True
>>> thousand is other
False

For those who know a bit of math, there is more than one infinity, so thousand
is actually so close to infinity that there is more than one?

Source: https://github.com/satwikkansal/wtfpython#-is-is-not-what-it-is

So some things are so similar that we call them equal, some are actually
identical and therefore unique. Others are following Heracalitus and not even
equal to itself:

>>> from river import river
>>> river == river
False


Associative law
===============

Speaking of maths...  What does this mean?

>>> 1 + 2 + 3
6

Well actually, the sum operator is called in some order, but this doesn't
change the result:

>>> (1 + 2) + 3 == 1 + (2 + 3)
True

The sum follows the associative law, so we can skip the parenthesis.

The same works also for other binary operators:

>>> 1 < 2 < 3
True
>>> (1 < 2) < 3)
True
>>> 1 < (2 < 3)
False

Oh shit!

Speaking of parenthesis:

>>> x, y = (0, 1) if True else None, None
>>> x, y
((0, 1), None)

Source: https://github.com/satwikkansal/wtfpython#-needle-in-a-haystack

More fun with parenthesis:

>>> 'something' is not None
True
>>> 'something' is (not None)
False

Source: https://github.com/satwikkansal/wtfpython#-is-not--is-not-is-not-


Fun with Syntax
==============

x == not x
Source: https://gist.github.com/nubela/5160540


Fun with unicode
================

Let's go back to integers with some more meaning.

>>> meaning = 42
>>> mеaning = 43
>>> meaning
42

Okay, that's just some nasty Unicode character looking like an "e". But isn't
Unicode fun?

>>> from shrug import *
>>> (ツ) = ಠ_ಠ
>>> (ツ)
¯\_(ツ)_/¯
>>> (ツ) = YᵒᵘOᶰˡʸLᶤᵛᵉOᶰᶜᵉ
>>> (ツ)
( ͡° ͜ʖ ͡°)

Source: https://twitter.com/yennycheung/status/1099349853518397440 at https://berlin.python.pizza/


Classes scopes
==============

>>> array = [1, 8, 15]
>>> g = (x for x in array if array.count(x) > 0)
>>> array = [2, 8, 22]
>>> list(g)
[8]

Source: https://github.com/satwikkansal/wtfPython#-evaluation-time-discrepancy

Python 2: Tabs and spaces
=========================

https://github.com/satwikkansal/wtfpython#-well-something-is-fishy

Anybody still using Python 2?


Whitespace and Mandelbrot
=========================

Well at least enforces formatting your code properly with white spaces...

See `mandelbrot.py <mandelbrot.py>`_ and `mandelbrot.png <mandelbrot.png>`_.

Source: https://preshing.com/20110926/high-resolution-mandelbrot-in-obfuscated-python/


...
    TODO this has not been used but is also neat:
    min(math.nan, 1) != min(1, math.nan)
