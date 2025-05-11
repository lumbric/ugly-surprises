"""Fun with Unicode. See notes.rst for usage.
Inspired by https://twitter.com/yennycheung/status/1099349853518397440
at https://berlin.python.pizza/
"""

class Shrug:
    def __repr__(self):
        return r'¯\_(ツ)_/¯'


ಠ_ಠ = Shrug()


class Yolo:
    def __repr__(self):
        return r'( ͡° ͜ʖ ͡°)'


YᵒᵘOᶰˡʸLᶤᵛᵉOᶰᶜᵉ = Yolo()
