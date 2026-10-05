set -g fish_greeting ""
set -g fish_color_user white
set -g fish_color_host white

if status is-interactive
    # Commands to run in interactive sessions can go here

end

function performance
    sudo cpupower frequency-set -g performance
end

function powersave
    sudo cpupower frequency-set -g powersave
end

function mousemode
    hyprctl keyword input:sensitivity -0.8
end

function touchpadmode
    hyprctl keyword input:sensitivity 0
end

function bat60
    asusctl battery limit 60
    echo OK
end

function bat100
    asusctl battery limit 100
    echo OK
end

function archScreen
    echo "Удаляю прошлые скрины..."
    sleep 2
    sudo timeshift --delete-all
    echo "Удаление прошло успешно!"
    sleep 1
    echo "Начало скрина системы..."
    set now (date "+%d-%m-%Y %H:%M:%S")
    sudo timeshift --create --comments "Бэкап за $now"
    echo "Скрин успешно создан!"
end

function update
    yay -Syu
end

function stopVPN
    sudo systemctl stop sing-box
end

function startVPN
    sudo systemctl start sing-box
end

function offtouch
    hyprctl keyword device[asue120b:00-04f3:31c0-touchpad]:enabled false
end

function ontouch
    hyprctl keyword device[asue120b:00-04f3:31c0-touchpad]:enabled true
end
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source
