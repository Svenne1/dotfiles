alias pacin="sudo nala install"
alias pacun="sudo nala remove"
alias paclean="sudo nala autoclean -y && sudo nala autoremove -y"
alias pacupg="sudo nala upgrade -y && flatpak update -y"
alias cat="batcat -pp"
alias less="batcat --paging=always"
fish_add_path /home/pontus/.spicetify
# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
