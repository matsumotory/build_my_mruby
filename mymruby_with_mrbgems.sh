set -e

git clone git://github.com/mruby/mruby.git

cd mruby/mrbgems/g/
git clone git://github.com/mattn/mruby-uv.git
git clone git://github.com/mattn/mruby-http.git
git clone git://github.com/mattn/mruby-json.git
git clone git://github.com/mattn/mruby-curl.git
git clone git://github.com/matsumoto-r/mruby-redis.git
git clone git://github.com/matsumoto-r/mruby-random.git
git clone git://github.com/iij/mruby-digest.git
git clone git://github.com/iij/mruby-pack.git
git clone git://github.com/iij/mruby-mtest.git
git clone git://github.com/matsumoto-r/mruby-simplehttp.git
git clone git://github.com/matsumoto-r/mruby-httprequest.git
git clone git://github.com/matsumoto-r/mruby-oauth.git
git clone git://github.com/matsumoto-r/mruby-growthforecast.git
git clone git://github.com/matsumoto-r/mruby-zabbix.git
cd -

cd mruby
cat > mrbgems/GEMS.active << EOF
mruby-json
mruby-uv
mruby-http
mruby-redis
mruby-curl
mruby-digest
mruby-pack
mruby-mtest
mruby-simplehttp
mruby-httprequest
mruby-oauth
mruby-growthforecast
mruby-zabbix
mruby-random
EOF

rake ENABLE_GEMS='true'
