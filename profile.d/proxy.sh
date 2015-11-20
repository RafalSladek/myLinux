#!/bin/bash

add_to_no_proxy() {
        if [ ! -n "$no_proxy" ]; then
            export no_proxy="$1"
        else
            export no_proxy="$no_proxy,$1"
        fi
}

export http_proxy="http://tmg-array.as24.local:8080"
export https_proxy=$http_proxy
export proxy_pac="http://tmg-array.as24.local:8080/array.dll?Get.Routing"
export no_proxy="dappghv001,dappghv001.unix.as24.local,dappgiv001,.local,teamcity.as24.local,localhost,127.0.0.1,dappgiv001,dashboard,dapprmv001.unix.as24.local,mailer.autoscout24.com,redmine"

    add_to_no_proxy "dappghv001"
    add_to_no_proxy "dappghv001.unix.as24.local"
    add_to_no_proxy "dappgiv001"
    add_to_no_proxy ".local"
    add_to_no_proxy "teamcity.as24.local"
    add_to_no_proxy "teamcity.as24.local"
    add_to_no_proxy "localhost"
    add_to_no_proxy "127.0.0.1"
    add_to_no_proxy "dappgiv001"
    add_to_no_proxy "dashboard"
    add_to_no_proxy "dapprmv001.unix.as24.local"
    add_to_no_proxy "mailer.autoscout24.com"

