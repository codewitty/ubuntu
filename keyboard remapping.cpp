
//get dconf tools
sudo apt-get install dconf-tools


//swap caps lock and escape
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"
