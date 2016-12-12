//
//  EpisodeRepository.swift
//  MasterDetail
//
//  Created by Peter Shearer on 12/12/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

class EpisodeRepository {
    
    class func getEpisodeList() -> [Episode] {
        var episodes = [Episode]()
        
        let girl = Episode(
            episodeTitle: "The Girl in the Fireplace",
            writerName: "Steven Moffat",
            doctorName: "10th Doctor, David Tennant",
            episodeNumber: "Series 2 Episode 4",
            synopsis: "For their first trip with Mickey, the Tenth Doctor and Rose end up on a space ship in the future that contains several portals to pre-Revolutionary France. When he steps through one of these portals, shaped like a fireplace, the Doctor discovers the even greater mystery of actual, romantic love.")
        
        episodes.append(girl)
        
        let vince = Episode(
            episodeTitle: "Vincent and the Doctor",
            writerName: "Richard Curtis",
            doctorName: "11th Doctor, Matt Smith",
            episodeNumber: "Series 5 Episode 10",
            synopsis: "While taking Amy to several peaceful locations, the Eleventh Doctor's trip to a museum takes turn for the worse: his interest is caught by a painting of a church by Vincent van Gogh. What troubles the Doctor is that there's a face in the church's window; it's not a nice face, it's a curious, shadowed, creepy face with a beak and nasty eyes. The Doctor knows evil when he sees it and this face is definitely evil; it may pose a threat to the one who painted this face into the church. Only one thing will calm the Doctor's nerves: a trip in the TARDIS to 1890 so the Doctor can find out from the artist himself.")
        
        episodes.append(vince)
        
        let dalek = Episode(
            episodeTitle: "Dalek",
            writerName: "Robert Shearman",
            doctorName: "9th Doctor, Christopher Eccleston",
            episodeNumber: "Series 1 Episode 6",
            synopsis: "The Ninth Doctor and Rose Tyler arrive in 2012 to answer a distress signal and meet a collector of alien artefacts who has one living specimen. However, the Doctor is horrified to find out that the creature is a member of a race he thought was destroyed: a Dalek.")
        
        episodes.append(dalek)
        
        let midnight = Episode(
            episodeTitle: "Midnight",
            writerName: "Russell T Davies",
            doctorName: "10th Doctor, David Tennant",
            episodeNumber: "Series 4 Episode 10",
            synopsis: "The Tenth Doctor and Donna Noble go to the leisure planet of Midnight for a simple, relaxing vacation. However, life with the Doctor can never be that simple, and things go horribly wrong for the Doctor when he decides to go off on a bus trip to see the Sapphire Waterfall, starting with the bus shutting down. When a mysterious entity infiltrates the shuttle bus, no one is to be trusted. Not even the Doctor himself...")
        
        episodes.append(midnight)
        
        let blink = Episode(
            episodeTitle: "Blink",
            writerName: "Steven Moffat",
            doctorName: "10th Doctor, David Tennant",
            episodeNumber: "Series 3 Episode 10",
            synopsis: "In an abandoned house, the Weeping Angels wait. The only hope to stop them is a young woman named Sally Sparrow and her friend Larry Nightingale. The only catch: The Weeping Angels can move in the blink of an eye. To defeat the ruthless enemy — with only a half of a conversation from the Tenth Doctor as help — the one rule is this: don't turn your back, don't look away and don't blink!")
        
        episodes.append(blink)
        
        let wife = Episode(
            episodeTitle: "The Doctor's Wife",
            writerName: "Neil Gaiman",
            doctorName: "11th Doctor, Matt Smith",
            episodeNumber: "Series 6 Episode 4",
            synopsis: "The Eleventh Doctor receives a message from an old Time Lord friend. The message brings him, Rory Williams and Amy Pond to another universe where they meet an alien who eats TARDISes.")
        
        episodes.append(wife)
        
        return episodes
    }
}
