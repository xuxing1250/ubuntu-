# step by step

# password is 1234566
$ cd ~
$ git clone hfk@192.168.0.30:~/oos_team.git

$ cd ~/oos_team/install
$ sudo ./apt_install_basic.sh
$ sudo ./apt_install_android64.sh

$ ./auto_install_ssh-keygen.sh youname
$ ./auto_install_ide.sh youname

$ source ~/.bashrc

$ sudo ./auto_solover_adb_nopermission.sh

#grret 验证通过后可以进行的临时操作,服务器拉取项目代码与oos_team
$ ./auto_install_oos_team_doker
$ sudo ./auto_sudo_copy_repo
$ ./auto_install_repo_doker
