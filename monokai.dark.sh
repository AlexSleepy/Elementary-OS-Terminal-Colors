#!/bin/bash

# ====================CONFIG THIS =============================== #

COLOR_01="#75715e"           # HOST
COLOR_02="#f92672"           # SYNTAX_STRING
COLOR_03="#a6e22e"           # COMMAND
COLOR_04="#f4bf75"           # COMMAND_COLOR2
COLOR_05="#66d9ef"           # PATH
COLOR_06="#ae81ff"           # SYNTAX_VAR
COLOR_07="#2AA198"           # PROMP
COLOR_08="#f9f8f5"           #

COLOR_09="#272822"           #
COLOR_10="#f92672"           # COMMAND_ERROR
COLOR_11="#a6e22e"           # EXEC
COLOR_12="#f4bf75"           #
COLOR_13="#66d9ef"           # FOLDER
COLOR_14="#ae81ff"           #
COLOR_15="#2AA198"           #
COLOR_16="#f8f8f2"           #

BACKGROUD_COLOR="#272822"    # Background Color
FOREGROUND_COLOR="#f8f8f2"   # Text

# =============================================================== #


# |
# | Convert RGB to gnome colors
# | ===========================================
function gnome_color () {
    AA=${1:1:2}
    BB=${1:3:2}
    CC=${1:5:2}

    echo "#${AA}${AA}${BB}${BB}${CC}${CC}"
}



# |
# | Set gnome Variables
# | ===========================================

BACKGROUD_COLOR=$(gnome_color $BACKGROUD_COLOR)
FOREGROUND_COLOR=$(gnome_color $FOREGROUND_COLOR)

COLOR_01=$(gnome_color $COLOR_01)
COLOR_02=$(gnome_color $COLOR_02)
COLOR_03=$(gnome_color $COLOR_03)
COLOR_04=$(gnome_color $COLOR_04)
COLOR_05=$(gnome_color $COLOR_05)
COLOR_06=$(gnome_color $COLOR_06)
COLOR_07=$(gnome_color $COLOR_07)
COLOR_08=$(gnome_color $COLOR_08)

COLOR_09=$(gnome_color $COLOR_09)
COLOR_10=$(gnome_color $COLOR_10)
COLOR_11=$(gnome_color $COLOR_11)
COLOR_12=$(gnome_color $COLOR_12)
COLOR_13=$(gnome_color $COLOR_13)
COLOR_14=$(gnome_color $COLOR_14)
COLOR_15=$(gnome_color $COLOR_15)
COLOR_16=$(gnome_color $COLOR_16)



# |
# | Apply Variables
# | ===========================================

gsettings set org.pantheon.terminal.settings background "${BACKGROUD_COLOR}"
gsettings set org.pantheon.terminal.settings foreground "${FOREGROUND_COLOR}"
gsettings set org.pantheon.terminal.settings cursor-color "${FOREGROUND_COLOR}"
gsettings set org.pantheon.terminal.settings palette "${COLOR_01}:${COLOR_02}:${COLOR_03}:${COLOR_04}:${COLOR_05}:${COLOR_06}:${COLOR_07}:${COLOR_08}:${COLOR_09}:${COLOR_10}:${COLOR_11}:${COLOR_12}:${COLOR_13}:${COLOR_14}:${COLOR_15}:${COLOR_16}"
