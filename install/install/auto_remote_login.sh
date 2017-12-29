#!/usr/bin/expect
#实现已经知道密码的远程自动登录
set timeout 20
set passwd 1234566
set sship hfk@192.168.0.30
set passwderror 0

spawn ssh-copy-id $sship

expect {
    "*assword:*" {
        if { $passwderror == 1 } {
            puts "passwd is error"
                exit 2
        }
        set timeout 1000
            set passwderror 1
            send "$passwd\r"
            exp_continue
    }
    "*es/no)?*" {
        send "yes\r"
            exp_continue
    }
    timeout {
        puts "connect is timeout"
            exit 3
    }
}
