# WaterCat Browser

WaterCat — минималистичный веб-браузер, написанный на **DDLanguage** (Debian Distributions Language).

## Возможности

- Поиск через Google, Yandex, DuckDuckGo, Bing.
- Генерация HTML-страницы из кода DDL.
- Работа через WebKitGTK.

## Установка

Скачайте `.deb` пакет из [релиза](https://github.com/rond04kaegor-code/watercat-browser/releases) и установите:

sudo dpkg -i watercat_1.0.0_amd64.deb

Запуск
watercat

или же сделайте команду

# Создать ярлык на рабочем столе
```
cat > ~/Рабочий\ стол/watercat.desktop << EOF
[Desktop Entry]
Name=🐱 WaterCat Browser
Comment=Lightweight Web Browser
Exec=watercat
Terminal=false
Type=Application
Icon=web-browser
EOF

chmod +x ~/Рабочий\ стол/watercat.desktop
```

Лицензия

GNU General Public License v3.0
Сайт языка
https://rond04kaegor-code.github.io/website-ddl/
