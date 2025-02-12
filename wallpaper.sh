# Resolutions
RES=1920x1080

# Array of wallpaper search queries
queries=("anime" "cybersecurity" "linux" "motivation" "manhood" "old town" "bug hunting" "positiveness")

random_index=$((RANDOM % ${#queries[@]}))
query=${queries[$random_index]}
echo $query
curl -s "https://wallhaven.cc/api/v1/search?q=$query&resolutions=$RES" | jq -r '.data[] | .path'

