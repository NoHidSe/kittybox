choices="Region\nWindow\nScreen"

selection=$(echo -e "$choices" | bemenu -c -M 500 --vim-normal-mode -l 3 -i -p 'Screenshot The')

case $selection in
    Region)
	hyprshot -m region 
	;;
    Window)
	hyprshot -m window
	;;
    Screen)
	hyprshot -m screen 
	;;
esac
