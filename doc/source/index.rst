Sphinx Issue 7188
=================

A long literal text block is rendered properly in HTML,
when the Sphinx ``htmlhelp`` builder is used to produce output,
which is then passed to the Windows Help Compiler,
the resulting compiled help behaves different between
Sphinx versions.

Prior to version 2.0.0, the a long literal text block look fine.
Starting at 2.0.0, the horizontal scroll bar in a long literal
text block has the last line obscured by the horizontal scroll bar::

	This text block contains 4 lines.
	The second line is a very long line, used to cause a horizontal scrollbar to appear at the bottom of the literal text block.
	The third line is fine.
	This last line gets obscured by the scrollbar

Narrow literal text blocks are fine::

	A narrow literal text block does not experience this issue.
	The horizontal scrollbar does not appear.
	So this last line is visible.
