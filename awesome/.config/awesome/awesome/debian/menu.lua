-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Applications_Accessibility"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Applications_Editors"] = {
	{"Xedit","xedit"},
}
Debian_menu["Debian_Applications_File_Management"] = {
	{"catfish","catfish"},
	{"Thunar","/usr/bin/thunar"},
	{"Xfdesktop","xfdesktop"},
}
Debian_menu["Debian_Applications_Graphics"] = {
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Applications_Network_Communication"] = {
	{"Pidgin","/usr/bin/pidgin","/usr/share/pixmaps/pidgin-menu.xpm"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet.netkit"},
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Applications_Network_File_Transfer"] = {
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission-gtk","/usr/share/pixmaps/transmission.xpm"},
}
Debian_menu["Debian_Applications_Network"] = {
	{ "Communication", Debian_menu["Debian_Applications_Network_Communication"] },
	{ "File Transfer", Debian_menu["Debian_Applications_Network_File_Transfer"] },
}
Debian_menu["Debian_Applications_Programming"] = {
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"Tclsh8.6", "x-terminal-emulator -e ".."/usr/bin/tclsh8.6"},
	{"TkWish8.6","x-terminal-emulator -e /usr/bin/wish8.6"},
}
Debian_menu["Debian_Applications_Science_Mathematics"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Applications_Science"] = {
	{ "Mathematics", Debian_menu["Debian_Applications_Science_Mathematics"] },
}
Debian_menu["Debian_Applications_Shells"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
	{"Zsh", "x-terminal-emulator -e ".."/bin/zsh5"},
}
Debian_menu["Debian_Applications_Sound"] = {
	{"pavucontrol","/usr/bin/pavucontrol"},
}
Debian_menu["Debian_Applications_System_Administration"] = {
	{"Editres","editres"},
	{"menulibre","menulibre"},
	{"mugshot","/usr/bin/mugshot"},
	{"Network Admin","/usr/bin/network-admin","/usr/share/gnome-system-tools/pixmaps/network.xpm"},
	{"Services Admin","/usr/bin/services-admin","/usr/share/gnome-system-tools/pixmaps/services.xpm"},
	{"Shares Admin","/usr/bin/shares-admin","/usr/share/gnome-system-tools/pixmaps/shares.xpm"},
	{"Time Admin","/usr/bin/time-admin","/usr/share/gnome-system-tools/pixmaps/time.xpm"},
	{"User accounts Admin","/usr/bin/users-admin","/usr/share/gnome-system-tools/pixmaps/users.xpm"},
	{"Xclipboard","xclipboard"},
	{"Xfce Application Finder","xfce4-appfinder","/usr/share/pixmaps/xfce4-appfinder.xpm"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Applications_System_Hardware"] = {
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Applications_System_Language_Environment"] = {
	{"Input Method Configuration", "x-terminal-emulator -e ".."/usr/bin/im-config"},
}
Debian_menu["Debian_Applications_System_Monitoring"] = {
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Applications_System"] = {
	{ "Administration", Debian_menu["Debian_Applications_System_Administration"] },
	{ "Hardware", Debian_menu["Debian_Applications_System_Hardware"] },
	{ "Language Environment", Debian_menu["Debian_Applications_System_Language_Environment"] },
	{ "Monitoring", Debian_menu["Debian_Applications_System_Monitoring"] },
}
Debian_menu["Debian_Applications_Terminal_Emulators"] = {
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Applications_Text"] = {
	{"Fortune","sh -c 'while /usr/games/fortune | col -x | xmessage -center -buttons OK:1,Another:0 -default OK -file - ; do :; done'"},
}
Debian_menu["Debian_Applications_Video"] = {
	{"kodi","/usr/bin/kodi"},
}
Debian_menu["Debian_Applications_Viewers"] = {
	{"Wordview","/usr/bin/wordview"},
	{"Xditview","xditview"},
}
Debian_menu["Debian_Applications"] = {
	{ "Accessibility", Debian_menu["Debian_Applications_Accessibility"] },
	{ "Editors", Debian_menu["Debian_Applications_Editors"] },
	{ "File Management", Debian_menu["Debian_Applications_File_Management"] },
	{ "Graphics", Debian_menu["Debian_Applications_Graphics"] },
	{ "Network", Debian_menu["Debian_Applications_Network"] },
	{ "Programming", Debian_menu["Debian_Applications_Programming"] },
	{ "Science", Debian_menu["Debian_Applications_Science"] },
	{ "Shells", Debian_menu["Debian_Applications_Shells"] },
	{ "Sound", Debian_menu["Debian_Applications_Sound"] },
	{ "System", Debian_menu["Debian_Applications_System"] },
	{ "Terminal Emulators", Debian_menu["Debian_Applications_Terminal_Emulators"] },
	{ "Text", Debian_menu["Debian_Applications_Text"] },
	{ "Video", Debian_menu["Debian_Applications_Video"] },
	{ "Viewers", Debian_menu["Debian_Applications_Viewers"] },
}
Debian_menu["Debian_Games_Toys"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Games"] = {
	{ "Toys", Debian_menu["Debian_Games_Toys"] },
}
Debian_menu["Debian_Help"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"Xman","xman"},
}
Debian_menu["Debian"] = {
	{ "Applications", Debian_menu["Debian_Applications"] },
	{ "Games", Debian_menu["Debian_Games"] },
	{ "Help", Debian_menu["Debian_Help"] },
}
