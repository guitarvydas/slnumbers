# Numbers In Sector Lisp

Digits are just arbitrary scribbles.

For example, we could define 10 atoms in Sector Lisp with suggestive names, e.g.
- (quote 0)
- (quote 1)
- (quote 2)
- (quote 3)
- (quote 4)
- (quote 5)
- (quote 6)
- (quote 7)
- (quote 8)
- (quote 9)


In Sector Lisp, these 10 atoms would be Atoms and would never be garbage collected.

What if you had a batch editor that replaced every occurrence of the character '5' with the string of characters `(quote 5)`? (Even Microsoft Word can do this (the operation is called `Search and Replace`).

The names could be any unicode character, or, any string of characters.  For example, we could define an Atom `(quote IV)` to mean the same thing as `4`.  In ASCII, `IV` needs 2 bytes, whereas `4` needs only one byte.

In Sector Lisp, each of these Atoms would be represented by an Address.  (In Sector Lisp, an Address is 1-byte long)[^SLU].  

[^SLU]: If you had more than 256 of these Atoms, you might want more than one Sector Lisp program, or, you might want to invent a new kind of Sector Lisp based on Unicode instead of begin based on 8-bit bytes.

# Batch Editor (AKA Macro Processor)

One line of `bash` script can do the batch edit:

```
$prep '.' '$' batch-edit-4.ohm batch-edit-4.glue --stop=1 < test.txt
```

See `run.bash` and `test.txt` and the grammar `batch-edit-4.ohm` and the rewrite script `batch-edit-4.glue`.

# Github

https://github.com/guitarvydas/slnumbers

# Prep

I've included a sub-directory containing the tool I call `prep` (rhymes with `grep`, and looks like `preprocessor`).

It uses `Ohm-JS`.

It's kinda-like `sed` but uses grammars instead of REGEXs.

`Prep` needs two specifications:
1. a pattern-matching spec
2. a rewriting spec.

Rewriting is currently done using an experimental syntax that I call `glue`.

`Prep` is described in [YouTube](https://guitarvydas.github.io/2022/01/20/PREP-Tool.html).

`Prep` is [further described](https://guitarvydas.github.io/2022/03/05/Prep.html).

`Glue` is described by following the links in [ABC Glue](https://guitarvydas.github.io/2021/09/15/ABC-Glue.html).

# Sector Lisp

https://justine.lol/sectorlisp2/
