# Resolutions
RES=1920x1080

# Array of wallpaper search queries
queries=("anime" "hacking" "linux" "motivation" "man" "town" "robot" "space" "pixel" "game" "dark" "naruto")

random_index=$((RANDOM % ${#queries[@]}))
query=${queries[$random_index]}

walls=($(curl -s "https://wallhaven.cc/api/v1/search?q=$query&resolutions=$RES" | jq -r '.data[] | .path'))

if [ ${#walls[@]} -eq 0 ]; then
	exit 1
fi

random_wall=${walls[$((RANDOM % ${#walls[@]}))]}

curl -s -o /home/`whoami`/.wallpaper/wallpaper.png $random_wall
swww img /home/`whoami`/.wallpaper/wallpaper.png
