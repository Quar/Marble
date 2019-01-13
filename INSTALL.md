Install
=========

## macOS


### Compile Marble

```bash
brew install ntl # if you haven't installed ntl
cd GIT_CLONED_DIR
git checkout fix_cmake_crude
mkdir build && cd build
cmake ..
make -j 4  # tweak upto #ncpu_threads for faster compliation speed
```


### Run Samples

```bash
find MarbleSamples -type f -executable -exec bash -c 'echo "==> Running Sample {} ..."; {}' \;
```

<details>
<summary>Sample Output</summary>

```bash
$ find MarbleSamples -type f -executable -exec bash -c 'echo "==> Running Sample {} ..."; {}' \;
==> Running Sample MarbleSamples/ads/MarbleSamples_Ads ...
Choosing prm = 0
With levels: 56
Using param set 0
[2 2 2 2] ()
Function executed in: 5737.14ms.
==> Running Sample MarbleSamples/hd/MarbleSamples_hd ...
==> Running Sample MarbleSamples/hd_batched/MarbleSamples_hd_batched ...
Output :
Multiplicative depth: -2147483648
Bitsize: 0
(Plaintext) value: [1 1 0 0 1]
Function requires multdepth: 0 and at least 0 slots.
Choosing prm = 0
With levels: 0
Using param set 0
[1 1 0 0] ()
Function executed in: 0.763ms.
==> Running Sample MarbleSamples/hd_enc/MarbleSamples_hd_enc ...
Output :
Multiplicative depth: 11
Bitsize: 6
(Plaintext) value: [3]
Function requires multdepth: 11 and at least 0 slots.
Choosing prm = 0
With levels: 11
Using param set 0
3 ()
Function executed in: 32.82ms.
==> Running Sample MarbleSamples/faces/MarbleSamples_Faces ...
Choosing prm = 1
With levels: 45
Using param set 1
[76 112 40 76 112 40 76 112 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (in)
[20 78 15 67 53 49 76 112 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (db)
[56 34 25 9 59 -9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (diff)
[3136 1156 625 81 3481 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (sq)
[3136 1156 625 81 3481 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (res)
[81 1156 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (min)
[1 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (index)
Function executed in: 10634.6ms.
```

</details>



## Linux


Following guides has been tested on:
  - Ubuntu 18.04
    - cmake 3.10.2
    - gcc 7.3.0
    - ntl 11.3.2


### Compile Marble

1. Install `cmake`, `gcc` if you haven't.

  ```bash
  sudo apt update && sudo apt install build-essential cmake
  ```

2. Install `ntl` manually

  ```bash
  wget https://www.shoup.net/ntl/ntl-11.3.2.tar.gz
  tar xzvf ntl-11.3.2.tar.gz
  cd ntl-11.3.2/src
  ./configure SHARED=on
  make -j 4         # increase upto your #cores for speed
  make check        # WARNING this can take a while
  sudo make install
  ```

3. Compile Marble

  ```bash
  cd GIT_CLONED_DIR
  mkdir build
  cmake -DENABLE_THREADS=on .. # NTL_INCLUDE and NTL_LIB should be in /usr/local/
  make -j 4         # increase upto your #cores for speed
  ```


### Run Samples

```bash
find MarbleSamples -type f -executable -exec bash -c 'echo "==> Running Sample {} ..."; {}' \;
```

If you found MarbleSamples running anomaly slow, try to check if multiple cores
are used, especially for sample like `MarbleSamples/faces/MarbleSamples_Faces`.

If samples are running with a single thread, then it is quite likely that the
NTL library linked with Marble did not compiled to support multi-threads.


<details>
<summary>Sample Output</summary>

```bash
$ find MarbleSamples -type f -executable -exec bash -c 'echo "==> Running {} ..."; {}' \;
==> Running MarbleSamples/hd_enc/MarbleSamples_hd_enc ...
Output :
Multiplicative depth: 11
Bitsize: 6
(Plaintext) value: [3]
Function requires multdepth: 11 and at least 0 slots.
Choosing prm = 0
With levels: 11
Using param set 0
3 ()
Function executed in: 102.038ms.
==> Running MarbleSamples/hd_batched/MarbleSamples_hd_batched ...
Output :
Multiplicative depth: -2147483648
Bitsize: 0
(Plaintext) value: [1 1 0 0 1]
Function requires multdepth: 0 and at least 0 slots.
Choosing prm = 0
With levels: 0
Using param set 0
[1 1 0 0] ()
Function executed in: 0.987284ms.
==> Running MarbleSamples/hd/MarbleSamples_hd ...
==> Running MarbleSamples/faces/MarbleSamples_Faces ...
Choosing prm = 1
With levels: 45
Using param set 1
[76 112 40 76 112 40 76 112 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (in)
[20 78 15 67 53 49 76 112 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (db)
[56 34 25 9 59 -9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (diff)
[3136 1156 625 81 3481 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (sq)
[3136 1156 625 81 3481 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (res)
[81 1156 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (min)
[1 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] (index)
Function executed in: 25352ms.
==> Running MarbleSamples/ads/MarbleSamples_Ads ...
Choosing prm = 0
With levels: 56
Using param set 0
[2 2 2 2] ()
Function executed in: 16658.9ms.
```

</details>
