#! /system/bin/sh
supolicy --live "allow mediaserver mediaserver_tmpfs:file { read write execute };"
supolicy --live "attradd rild mlstrustedsubject"
# use this with experimental add into ZIP file V4A su-Policy and rename to 50viper
