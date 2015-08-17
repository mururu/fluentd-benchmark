### Usage

cache
```
bundle exec fluentd -c regexp.conf
bundle exec dummer -c dummer.conf
```

no cache

```
bundle exec fluentd -c regexp_nsec.conf
bundle exec dummer -c dummer_nsec.conf
```

### Result

* machine spec

 * CPU Core i5 5250U
 * Memory 8GB
 * Disc SSD 256G
 * OS OSX Yosemite


* cache

|   |    current     |        new   |
|----------------------------------|------------------------|-------------------|
| rate of writing (lines/sec) | CPU(%)  | CPU(%) |
| 10000                              | 10                        |                 10 |
| 50000                              |  20-50                  |            20-50 |
| 100000                            | near 100              |           near 100 |
| 150000                            | 100                      |               100 |

* no cache

|   |    current     |        new   |
|----------------------------------|------------------------|-------------------|
| rate of writing (lines/sec) | CPU(%)  | CPU(%) |
| 1000                             | 20                        |                 20 |
| 3000                              |  40-70                  |            40-80 |
| 4000                            | near 100              |           near 100|
| 5000                            | 100                      |               100 |

* no cache (strptime version)

|   |    strptime gem version     |
|----------------------------------|------------------------|
| rate of writing (lines/sec) | CPU(%)  |
| 10000                         |  10                  |
| 50000                            | 30-60              |
| 100000                            | near 100                      |
| 110000                            | 100                      |
