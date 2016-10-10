#!/usr/bin/env bash
cd /django-redis/tests
python runtests.py
python runtests-sharded.py
python runtests-herd.py
python runtests-json.py
python runtests-msgpack.py
python runtests-zlib.py
