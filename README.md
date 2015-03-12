# OrgDown for Vim

Org-style folding and some other tricks, but for Markdown files, and in Vim!

A hack day project that probably won't go anywhere.

## Installing

### With Vundle

Add the following line to your .vimrc:

```vim
Bundle 'basecase/orgdown'
```

and then source the file and run `:BundleInstall`.


### Without Vundle

I dunno. Prolly have to flesh this section out later.


## Commands

### Navigation

* `<C-j>` will jump down to the next heading
* `<C-k>` will jump up to the previous heading

### Visibility Cycling

* `<Tab>` will cycle the visibility of the heading under the cursor, up to the
  next sibling or parent level. (This is not complete yet; it's what I'm
working on now)


## TODO

(copied from the piece of scratch paper I had with me while at hack day)
- [ ] finish folding
- [ ] global folding (fold all heading with shift+tab)
- [ ] bump entire subtree in/out one level, flattening out at H1
