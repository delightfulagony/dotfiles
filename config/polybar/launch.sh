#!/bin/bash
#                                :
#                               t#,     L.
#                        .Gt   ;##W.    EW:        ,ft
#             ..        j#W:  :#L:WE    E##;       t#E f.     ;WE.
#            ;W,      ;K#f   .KG  ,#D   E###t      t#E E#,   i#G
#           j##,    .G#D.    EE    ;#f  E#fE#f     t#E E#t  f#f
#          G###,   j#K;     f#.     t#i E#t D#G    t#E E#t G#i
#        :E####, ,K#f   ,GD;:#G     GK  E#t  f#E.  t#E E#jEW,
#       ;W#DG##,  j#Wi   E#t ;#L   LW.  E#t   t#K: t#E E##E.
#      j###DW##,   .G#D: E#t  t#f f#:   E#t    ;#W,t#E E#G
#     G##i,,G##,     ,K#fK#t   f#D#;    E#t     :K#D#E E#t
#   :K#K:   L##,       j###t    G#t     E#t      .E##E E#t
#  ;##D.    L##,        .G#t     t      ..         G#E EE.
#  ,,,      .,,           ;;                        fE t
#                                                    ,

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down (from https://protesilaos.com/codelog/multihead-bspwm-polybar/)
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar

connected_monitors=$(xrandr | grep " connected " | awk '{ print$1 }')

if [[ $connected_monitors =~ "DP-3" ]]; then
 polybar DP-3 2>&1 | tee -a /tmp/polybar.log & disown
 polybar eDP 2>&1 | tee -a /tmp/polybar.log & disown
else
 polybar eDP 2>&1 | tee -a /tmp/polybar.log & disown
fi
