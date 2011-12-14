#export XMODIFIERS="@im=SCIM"
#export GTK_IM_MODULE=scim

export XMODIFIERS="@im=IBUS"
export GTK_IM_MODULE=ibus

#ck-launch-session gnome-session

# launch i3
xrandr --output DVI-I-2 --right-of DVI-I-1 &
ibus-daemon -d&
i3 -c ~/.i3/config
