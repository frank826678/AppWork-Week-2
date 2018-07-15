//
//  FactProvider.swift
//  FunFacts
//
//  Created by Screencast on 11/2/16.
//  Copyright © 2016 Treehouse Island. All rights reserved.
//

import GameKit

struct FactProvider {
    let facts = [
        "Ants stretch when they wake up in the morning",
        "Ostriches can run faster than horses",
        "Olympic gold medals are actually made mostly of silver",
        "You are born with 300 bones; by the time you are an adult you will have 206",
        "It takes about 8 minutes for the light from the Sun to reach Earth",
        "Some bamboo plants can grow almost a meter in just one day",
        "The state of Florida is bigger than England",
        "Some penguins can leap 2-3 meters out of the water",
        "On average, it takes 66 days to form a new habit",
        "Mammoths still walked the Earth when the Great Pyramid was being built"
    ]
    
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        return facts[randomNumber]
    }
}


struct FactProvider2 {
    let facts = [
        "Loremipsumdolorsitamet,consecteturadipiscingelit.Maecenastempus.",
        "Contrarytopopularbelief,LoremIpsumisnotsimplyrandomtext.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one ofthemoreobscureLatinwords,consectetur",
        "from a Lorem Ipsum passage, and going through the cites of the word",
        "This book is atreatiseonthetheoryofethics,verypopularduringthe",
        "The first line of LoremIpsum,Loremipsumdolorsitamet..",
        "The standard chunk of LoremIpsumusedsincethe1500sisreproduced.",
        "There are many variationsofpassagesofLoremIpsumavailable.",
        "but the majority have suffered alteration in some form"
        ]
    
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        return facts[randomNumber]
    }
}








































