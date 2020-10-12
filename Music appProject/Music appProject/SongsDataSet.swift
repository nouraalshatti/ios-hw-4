//
//  SongsDataSet.swift
//  Music appProject
//
//  Created by Noura on 10/11/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import Foundation

fileprivate var wallowsSongs: [Song] = [
    .init(name: "Scrawny", image: "scrawny", songName: "scrawny.mp4"),
    .init(name: "These Days", image: "these days", songName: "these days.mp4"),
    .init(name: "Are you Bored yet?", image: "wallows are you bored yet", songName: "bored yet.mp4"),
]


fileprivate var CavetownSongs: [Song] = [
    .init(name: "Fool", image: "fool", songName: "fool.mp4"),
    .init(name: "Juliet", image: "juleit", songName: "juleit.mp4"),
    .init(name: "home", image: "home", songName: "home.mp4"),
]
fileprivate var DayGlowSongs: [Song] = [
    .init(name: "Can I Call You Tonight?", image: "Can I call you tonight", songName: "tonight.mp4"),
    .init(name: "Hot Rod", image: "hot rod", songName: "hot rod.mp4"),
    .init(name: "Listerine", image: "listerine", songName: "listerine.mp4"),
]
var artists: [Artist] = [
    
    Artist.init(name: "Wallows", image: "wallows", songs: wallowsSongs),
    Artist.init(name: "Cavetown", image: "robbie", songs: CavetownSongs),
    Artist.init(name: "Dayglow", image: "dayglow", songs: DayGlowSongs),
]

