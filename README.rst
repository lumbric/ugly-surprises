.. |license| image:: https://img.shields.io/github/license/lumbric/ugly-surprises.svg
   :target: https://choosealicense.com/licenses/mit
   :alt: MIT License


Ugly Surprises  |license|
=========================

  Surprising is more ugly than beautiful.
    -- based loosely on PEP 20

Python gotchas and surprising Python facts presented as lightning talk at the PyDays 2019. Inspired by the
`WAT lightning talk by Gary Bernhardt from CodeMash 2012`_. This repository
contains links to the sources and all material.

.. _`WAT lightning talk by Gary Bernhardt from CodeMash 2012`: https://www.destroyallsoftware.com/talks/wat


Riddles
-------

Not really part of the lightning talk, but kind of related and also collected and
prepared for the PyDays 2019, some mind screwing Python riddles with surprising
solutions. Riddles are available for print as `PDF <riddles.pdf>`_ and `SVG
<riddles.svg>`_.

Links
-----

Talks about crazy facts in other programing languages than Python:

- https://www.destroyallsoftware.com/talks/wat
- https://www.youtube.com/watch?v=tsG95Y-C14k

Mind screwing Python code snippets:

- https://github.com/satwikkansal/wtfpython
- https://www.codementor.io/satwikkansal/some-tricky-python-snippets-that-may-bite-you-off-bhndh45zp
- https://kate.io/blog/2017/08/22/weird-python-integers/
- https://dbader.org/blog/python-mystery-dict-expression
- https://blog.brush.co.nz/2008/01/ten-python-quirkies/
- https://github.com/qezz/python-common-gotchas
- https://www.toptal.com/python/top-10-mistakes-that-python-programmers-make
- https://gist.github.com/brianspiering/6921253524fe0a058d4de8aa0d306c02
- https://www.geeksforgeeks.org/a-b-assignment-riddle-in-python/
- https://www.geeksforgeeks.org/python-a-b-is-not-always-a-a-b/


How to run code snippets
------------------------

To type all the Unicode characters, one can cheat a bit by using doitlive_. The
IPython support is great, but there seems to be a dependency hell. One needs
`prompt-toolkit==1.x` and `5.0<=IPython<7.0`.

To install with conda:

.. code:: bash

    $ conda env update -f env-frozen.yml
    $ conda activate ugly-surprises
    $ PYTHONPATH=$(pwd) doitlive play presentation-part2-unicode.sh

.. _doitlive: https://doitlive.readthedocs.io/en/stable/


Presentation
------------

See `notes.rst <notes.rst>`_ for detailed content of the presentation. 6
workspaces need to be prepared:

- Screen 1: eog `white.png <white.png>`_
- Screen 2: eog `ugly-surprise-with-title.jpg <ugly-surprise-with-title.jpg>`_
- Screen 3: ipython or idoitlive `presentation-part1.sh <presentation-part1.sh>`_
- Screen 4: idoitlive `presentation-part2-unicode.sh <presentation-part2-unicode.sh>`_
- Screen 5: vi `mandelbrot.py <mandelbrot.py>`_
- Screen 6: `mandelbrot.png <mandelbrot.png>`_


Surpising code snippets not (yet) used here
-------------------------------------------

Numpy seems to use [partial pairwise summation in some cases](https://numpy.org/doc/stable/reference/generated/numpy.sum.html), which can lead to different results depending on the data type used:

```
>>> import numpy as np
>>> data = [0.042411500823462206, 0.5387831400906496,
            2.0907299109640074, 0.012566370614359173, 0.5387831400906496,
            0.10053096491487339, 0.5387831400906496, 0.10053096491487339,
            0.8042477193189871, 0.1963495408493621, 1.1451105222334796,
            1.1451105222334796]
>>> np.sum(np.array(data, dtype=object)) - np.sum(np.array(data, dtype=float))
8.881784197001252e-16
```


Unrelated mistakes
------------------

Interesting mistakes and surprises without Python:

- `Proof for 3 = 0 <https://www.youtube.com/watch?v=SGUZ-8u1OxM>`_
- `What Happens When Math Goes wrong? with Matt Parker <https://www.youtube.com/watch?v=6JwEYamjXpA>`_
- `All Numbers are Describable in at Most Twenty Words <https://jeremykun.com/2011/07/28/false-proof-twenty-word/>`_ `(more false proofs) <https://jeremykun.com/proof-gallery/>`_
