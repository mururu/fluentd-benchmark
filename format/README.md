### Usage

cache

```
bundle exec fluentd -c format.conf
```

no cache

```
bundle exec fluentd -c format_nsec.conf
```

### Result

* cache

200000 rate of writing (lines/sec)

* no cache

200000 rate of writing (lines/sec)

This results means that the bottleneck in this case is not formatting time.
