var favoritePodcasts = ["Startup", ".Net Rocks!", "iPhreaks", "Pete on Software Podcast"]
favoritePodcasts[0]
print(favoritePodcasts[0])

var podcastHosts = [
    "Startup" : "Alex Blumberg and Lisa Chow",
    ".Net Rocks!" : "Carl Franklin and Richard Campbell",
    "iPhreaks" : "Charles Max Wood et al",
    "Pete on Software Podcast" : "Pete Shearer"
]

// cannot subscript a value of type '[String : String]' with an index of type 'Int'
// podcastHosts[0] // <-- 0 isn't a key!!!

podcastHosts["Startup"]

favoritePodcasts.append("Serial")
podcastHosts["Serial"] = "Sarah Koenig"


favoritePodcasts
podcastHosts

var emptyArray = [String]()
var emptyDictionary = Dictionary<Int, String>() // <-- No "new"

emptyDictionary[777] = "Not empty now"

emptyDictionary


for podcast in favoritePodcasts {
    print(podcast)
}

for podcast in favoritePodcasts {
    var host = podcastHosts[podcast]!
    print("\(podcast) is hosted by \(host)")
}

var citiesAndBaseballTeams = [
    "Cincinnati": "Reds",
    "Pittsburgh": "Pirates",
    "Cleveland": "Indians",
    "Oakland": "Athletics"
]

// You can name the keys and values usefully ...
for (city, team) in citiesAndBaseballTeams {
    print("The \(team) play in \(city)")
}

// ... or you can name them arbitrarily (name them usefully!!!!)
for (a, b) in citiesAndBaseballTeams {
    print("The \(b) play in \(a)")
}

