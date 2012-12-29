set -e

git clone git://github.com/mruby/mruby.git

cd mruby/mrbgems/g/
git clone git://github.com/mattn/mruby-uv.git
git clone git://github.com/mattn/mruby-http.git
git clone git://github.com/mattn/mruby-json.git
git clone git://github.com/mattn/mruby-curl.git
git clone git://github.com/mattn/mruby-md5.git
git clone git://github.com/mattn/mruby-sha1.git
git clone git://github.com/mattn/mruby-base64.git
git clone git://github.com/matsumoto-r/mruby-redis.git
git clone git://github.com/matsumoto-r/mruby-simplehttp.git
git clone git://github.com/matsumoto-r/mruby-httprequest.git
git clone git://github.com/matsumoto-r/mruby-growthforecast.git
git clone git://github.com/matsumoto-r/mruby-zabbix.git
git clone git://github.com/matsumoto-r/mruby-random.git
git clone git://github.com/iij/mruby-mtest.git
cd -

cd mruby
cat > mrbgems/GEMS.active << EOF
mruby-json
mruby-uv
mruby-http
mruby-redis
mruby-curl
mruby-md5
mruby-sha1
mruby-base64
mruby-simplehttp
mruby-httprequest
mruby-growthforecast
mruby-zabbix
mruby-random
mruby-mtest
EOF

rake ENABLE_GEMS='true'
