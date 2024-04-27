#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword decoration:active_opacity 1;\
        keyword decoration:inactive_opacity 1;\
        keyword decoration:dim_inactive 0;\
        keyword general:gaps_in 5;\
        keyword general:gaps_out 9;\
        keyword general:border_size 3;\
        keyword decoration:rounding 0"
    exit
fi
hyprctl reload
