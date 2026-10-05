# Первый вариант конфигов, возможны ошибки, но для первой версии достаточно вводных

## Компоненты

| Роль | Программа |
|------|-----------|
| Window Manager | [Hyprland](https://hyprland.org/) |
| Status Bar | [Waybar](https://github.com/Alexays/Waybar) |
| Terminal | [Kitty](https://sw.kovidgoyal.net/kitty/) |
| Editor | [Neovim](https://neovim.io/) |
| Launcher | [Wofi](https://hg.sr.ht/~scoopta/wofi) |
| Lock Screen | [Hyprlock](https://github.com/hyprwm/hyprlock) |
| Wallpaper | [swww](https://github.com/LGFae/swww) |
| Shell | [Fish](https://fishshell.com/) |
| Display Manager | [SDDM](https://github.com/sddm/sddm) + [sddm-astronaut-theme](https://github.com/keyitdev/sddm-astronaut-theme) |
| Colorscheme | Catppuccin Macchiato |

---

## Установка

```bash
git clone https://github.com/wndslr/wndArch.git ~/wndArch
cd ~/wndArch/
./install.sh
```

### Зависимости

```bash
yay -S hyprland waybar kitty neovim wofi hyprlock hyprpaper swww fish
```

---

## Обои

Скрипт `set-wallpaper.fish` ставит случайные обои из папки `~/wallpapers/`.

```fish
set wallpaper_dir $HOME/wallpapers/
```

Запускается через `Super + A`.

---

## Хоткеи

> `$mainMod` = **Super (Win)**

### Приложения

| Хоткей | Действие |
|--------|----------|
| `Super + Q` | Открыть терминал |
| `Super + E` | Файловый менеджер |
| `Super + R` | Launcher (wofi) |
| `Super + B` | Браузер (zen-browser) |
| `Super + T` | Telegram |
| `Super + V` | Буфер обмена (clipse) |
| `Super + A` | Случайные обои |

### Система

| Хоткей | Действие |
|--------|----------|
| `Super + W` | Закрыть окно |
| `Super + L` | Заблокировать экран |
| `Super + D` | Показать/скрыть Waybar |
| `Super + M` | Выйти из Hyprland |

### Скриншоты

| Хоткей | Действие |
|--------|----------|
| `Print` | Скриншот выделенной области |
| `Super + F12` | Скриншот всего экрана |

### Звук

| Хоткей | Действие |
|--------|----------|
| `Super + F1` | Mute |
| `Super + F2` | Громкость −10% |
| `Super + F3` | Громкость +10% |

### Яркость экрана

| Хоткей | Действие |
|--------|----------|
| `Super + F4` | Яркость мин. |
| `Super + F5` | Яркость макс. |

### Навигация

| Хоткей | Действие |
|--------|----------|
| `Super + ←↑↓→` | Фокус на окно |
| `Super + 1–0` | Переключить workspace |
| `Super + Shift + 1–0` | Переместить окно в workspace |
| `Super + S` | Special workspace |
| `Super + Shift + S` | Переместить в special workspace |
| `Super + ЛКМ` | Перетащить окно |
| `Super + ПКМ` | Изменить размер окна |

---

## Специфично для ASUS, тестил на vivobook pro 15 с Amd Ryzen 7 5800H

Следующие хоткеи и функции работают только на ноутбуках ASUS,
и требуют `asusctl` + `brightnessctl`:

- `Super + F6/F7` — подсветка клавиатуры
- `Super + F8/F9` — включить/выключить тачпад
- Fish функции `bat60` / `bat100` — лимит заряда батареи
- Fish функции `offtouch` / `ontouch` — тачпад (device id надо поменять на свой)

Посмотреть свой device id тачпада:
```bash
hyprctl devices | grep -i touchpad
```

---

## Fish функции

| Функция | Действие |
|---------|----------|
| `update` | `yay -Syu` |
| `performance` | Режим производительности CPU |
| `powersave` | Режим экономии CPU |
| `archScreen` | Создать снапшот Timeshift |
| `mousemode` | Чувствительность мыши −0.8 |
| `touchpadmode` | Чувствительность тачпада 0 |

Тут нужно подгнать чувствительность под себяб диапазон от -1 до 1 
'performance' и 'powersave' надо тестить на других системах, может сходу не заработать (буду править)
