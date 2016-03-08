tar zxf libwebp-0.4.3.tar.gz
cd libwebp-0.4.3
./configure
make
make install
echo "/usr/local/lib" >> /etc/ld.so.conf
ldconfig
cd ..
./configure --prefix=/home/work/app/nginx-pagespeed --user=work --group=work --with-http_stub_status_module --with-http_sysguard_module --with-http_ssl_module --add-module=./ngx_devel_kit --add-module=./echo-nginx-module --with-http_lua_module --with-luajit-lib=/usr/local/lib --with-luajit-inc=/usr/local/include/luajit-2.0 --add-module=./headers-more-nginx-module --with-http_tfs_module --with-http_image_filter_module --with-ld-opt='-lwebp' --add-module=./ngx_pagespeed-1.9.32.10-beta

make && make install

