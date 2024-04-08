# tcl

Low level bindings for Tcl & Tk for Nim

## installation

You may install using `nimble`

```sh
nimble install https://github.com/neroist/nim-tcl
```

However, this library depends on a Tcl 8.6 installation. There are many ways to install Tcl;
these bindings were created from the binaries and header files found here: <https://gitlab.com/teclabat/tcltk/-/packages>.
However, you may install from [ActiveTcl](http://www.activestate.com/activetcl) instead. This
may be easier for windows users.

Linux users just need to install the needed packages from their package manager. For example,
on a Debian-based/Ubuntu-based system, you can run

```sh
sudo apt-get install tcl
```

to install Tcl.

> Note than some components, even including Tk, man pages and C libraries may be separate packages and installed in a similar manner.

## Usage

Please see the [examples](examples/) on how to use this library.

For documentation, you may
look at the Tcl/Tk C API documenation [here](https://www.tcl-lang.org/man/tcl8.6/contents.htm)
(or [here](http://www.hume.com/html85/indexes/tclc_api.html) & [here](http://www.hume.com/html85/indexes/tkc_api.html)) or
the tutorials [here](https://wiki.tcl-lang.org/page/How+do+I+use+the+Tcl+C+API%3F).
