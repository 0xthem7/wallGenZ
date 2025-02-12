# Automate your Wallpaper 

This program usages wallhevens api and downloads random image and sets it as your desktop wallpaper.

### Requirements
* swww
* curl
* wget
* wayland

### Installation

**File initilazation**
```
mkdir -p ~/.wallpaper
mkdir -p ~/.scripts
git clone https://github.com/0xthem7/wallGenZ.git ~/.scripts/
```


**Service Configuration placement**
```
cp ~/.scripts/wallGenZ/wallpaper.service ~/.config/systemd/user/wallpaper.service
cp ~/.scripts/wallGenZ/wallpaper.timer ~/.config/systemd/user/wallpaper.timer
```

**Service initiating**
```
systemctl --user daemon-reload
systemctl --user start wallpaper.service
systemctl --user start wallpaper.timer
```
