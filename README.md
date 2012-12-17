haxe-templo2
============

This repository hosts an improved and custom haxe templo2 compiler.

About templo
------------

Templo is a template engine for haxe/Neko and haxe/PHP.

You can get more informations on Templo here : http://haxe.org/com/libs/mtwin/templo

Fixes
-----

This clone of templo provide some PHP generation fixes :
- Macros in macros
- Anonymous objects in expressions
- "attr" values are now html escaped

It also provides a template comment system.

Template comments
-----------------

Templo originally ignore templo statements in HTML comments but these comments are added to the output.

Template comments are only used for templates and are ignored on output.

You can use them by using double semicolons `;;`. Place the code you want to comment between two double semicolons `;; Like this ;;`.

Enjoy