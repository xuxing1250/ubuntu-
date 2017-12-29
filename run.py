#!/usr/bin/env python
import commands
import datetime
import os
import sys
import string

version=""
version2=""

if __name__ == '__main__':
    o1 = commands.getstatusoutput("uname -a")[1]
    if "x86_64" in o1:
        version = "64"
    else:
        assert False, "We only support Ubuntu 64!"

    o1 = commands.getstatusoutput("cat /etc/lsb-release")[1]
    if "14.04" in o1:
        version2 = "1204"
    else:
        assert False, "We only support Ubuntu 1204!"

    print "We are under Ubuntu " + version2 + " " + version + "bits"

    os.system("cp database/repo /usr/bin/")
    os.system("cp database/awk  /usr/bin/")
    os.system("apt-get update && apt-get -y upgrade")
    os.system("echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections")
    os.system("./apt_install_basic.sh")
    os.system("./apt_install_android" + version + ".sh")
    os.system("./apt_install_wine.sh")
    os.system("./pip_install_python_about.sh |grep 'Successfully installed' > results_of_pip_install.txt ")
    os.system("./local_install_jre" + version + ".sh")
    os.system("./local_install_python_excel.sh")
    os.system("PERL_MM_USE_DEFAULT=1 cpan Archive::Zip")
    os.system("./extra_config_smb.sh")
    os.system("echo 'UseDNS no'  >>  /etc/ssh/sshd_config")

