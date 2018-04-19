#! /system/bin/sh
supolicy --live "allow mediaserver mediaserver_tmpfs:file { read write execute };"
supolicy --live "attradd rild mlstrustedsubject"
