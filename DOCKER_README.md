Docker README
=========

### Test Output

<details>
<summary>Sample Output</summary>

```bash
root@ab37489084dd:/Marble/build# find MarbleSamples/ -type f -executable -exec bash -c 'echo "==> Running {} ..."; {}' \;
==> Running MarbleSamples/ads/MarbleSamples_Ads ...
Choosing prm = 0
With levels: 56
Using param set 0
[2 2 2 2] ()
Function executed in: 18918.6ms.
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
Function executed in: 2.5783ms.
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
Function executed in: 16979.3ms.
==> Running MarbleSamples/hd/MarbleSamples_hd ...
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
Function executed in: 143.241ms.
```

</details>



### Know Issues:

- `MarbleSamples/ads/MarbleSamples_Ads` is running significantly slower inside container.
