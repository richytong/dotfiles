config.load_autoconfig()

c.tabs.position = "top"

c.url.searchengines = {
    "DEFAULT": "https://www.google.com/search?hl=en&q={}",
    "ddg": "https://duckduckgo.com/?q={}",
    "aw": "https://wiki.archlinux.org/?search={}",
    "yt": "https://www.youtube.com/results?search_query={}",
    "gh": "https://github.com/search?q={}",
    "amzn": "https://amazon.com/s?k={}",
    "aws-sdk-js": "https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/{}.html",
    "yelp": "https://www.yelp.com/search?find_desc={}&find_loc=Los+Angeles%2C+CA",
    "emoji": "https://emojipedia.org/search/?q={}"
}

c.content.blocking.whitelist = [
    "mixpanel.com", "mixpanel.com/*"
    "*.hotjar.com", "*.hotjar.com/*",
    "googletagmanager.com", "googletagmanager.com/*",
    "analytics.google.com", "analytics.google.com/*",
    "marketingplatform.google.com", "marketingplatform.google.com/*",
]
