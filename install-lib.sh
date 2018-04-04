#!/bin/bash
#note: install dependencies for Required packages
yum -y install epel-release

yum -y groupinstall "Development Tools"

yum -y install  nano wget gcc gcc-c++ pcre pcre-devel zlib lua-devel zlib-devel mailx tar expect imake lsof autoconf nc ca-certificates libedit-devel make automake cmake expat-devel perl-libwww-perl perl-Crypt-SSLeay perl-Net-SSLeay tree virt-what openssl-devel libtool bind-utils libXext-devel cyrus-sasl-devel glib2 glib2-devel openssl ncurses-devel bzip2 bzip2-devel flex bison libcurl-devel which libevent libevent-devel libxslt-devel gd gd-devel perl-ExtUtils-Embed patch sysstat libgcj gettext-devel vim-minimal nano cairo-devel libxml2-devel libxml2 libpng-devel freetype freetype-devel libart_lgpl-devel  GeoIP-devel gperftools-devel libicu libicu-devel aspell gmp-devel aspell-devel libtidy libtidy-devel readline-devel iptables* coreutils libedit-devel enchant enchant-devel pam-devel git perl-ExtUtils perl-ExtUtils-MakeMaker perl-Time-HiRes openldap openldap-devel curl curl-devel diffutils libc-client libc-client-devel numactl lsof pkgconfig gdbm-devel tk-devel libatomic_ops-devel gperftools bluez-libs-devel

yum -y install unzip zip rar unrar rsync psmisc syslog-ng-libdbi

wget "http://linuxsoft.cern.ch/cern/slc6X/i386/RPM-GPG-KEY-cern"
rpm --import RPM-GPG-KEY-cern
rm -f RPM-GPG-KEY-cern
wget  -O /etc/yum.repos.d/slc6-devtoolset.repo http://linuxsoft.cern.ch/cern/devtoolset/slc6-devtoolset.repo

yum -y install devtoolset-2-gcc-c++ devtoolset-2-binutils
