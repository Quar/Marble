Changelog
====

All changes are accumulated based on original commit:

```
f16c076e65e7e4a3601fd1f63af49d0a6117d826
```


--------


Note this is a crude update, tested only by self-included MarbleSamples.


### macOS

##### Config

  - macOS 10.14.2, cmake 3.12.2, clang-1000.11.45.5
  - ntl library (`brew install ntl`)

##### Issues

  - Not detected yet.


### Linux

##### Config

  - Ubuntu 18.04, cmake 3.10.2, GCC 7.3.0
  - ntl library
    - `apt install libntl-dev` didn't turn on NTL_THREADS, not recommended.
    - install from `https://www.shoup.net/ntl/download.html` with `SHARED=on`

##### Issues

  - Not detected yet.



### TODO

  - clean CMakeList
  - optimize CMakeList



