# dotfiles
## This a repo for all the mixed up configs i use
If you are using i3 with KDE then you will have some problems relating to kdewllet and dmenu

1.if dmenu shows no locale support then{
Edit the file /etc/locale.gen and uncomment en_US.UTF-8 UTF-8, Run sudo locale-gen, run sudo localectl set-locale LANG=en_US.UTF-8, reboot
}
2.if kdewllet is deleting(for some reason) your logins in brave then{
edit file ~/.kde/share/config/kwalletrc: adding to [Wallet] section just one line

Enabled=false
}
for brightness controlls use[[brightness-controller]]
