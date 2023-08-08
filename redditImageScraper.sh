URL="https://www.reddit.com/r/{subreddit}.json?limit={limit}"
read -p "Enter subreddit name(Lowercase): " subreddit
read -p "Enter the limit you want for the amount of images you want to download: " limit
IMAGES_DIR="reddit_images/$SUBREDDIT"
mkdir -p "$IMAGES_DIR"
cd reddit_images/$SUBREDDIT
wget $(curl -s -H "User-agent: 'your bot 0.1'" $URL | jq '.' | grep url_overridden_by_dest |  grep -Eo '(http|https)://[^/"]+[^"]+')
