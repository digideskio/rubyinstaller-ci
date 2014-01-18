name             "rubyinstaller"
maintainer       "Sam Kottler"
maintainer_email "s@shk.io"
license          "MIT"
description      "rubyinstaller"
long_description "Site-specific rubyinstaller stuff"
version          "0.0.3"

recipe "users", "Adds the right users"

depends "user"

supports "debian"
supports "ubuntu"
supports "redhat"
supports "centos"
