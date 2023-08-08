wget $(curl -s -H "User-agent: 'your bot 0.1'" https://www.reddit.com/r/wallpapers/hot.json?limit=12 | jq '.' | grep url_overridden_by_dest |  grep -Eo '(http|https)://[^/"]+[^"]+')
