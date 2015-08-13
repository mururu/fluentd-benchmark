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

200000 ra of writing (lines/sec)

* no cache

200000 ra of writing (lines/sec)

The bottolnek in this case is not time format.
