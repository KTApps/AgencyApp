//
//  Data.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 06/02/2024.
//

import Foundation

struct Destination: Identifiable {
    let id = UUID()
    var address: String
    var distance: String
    var priceCM: String
    var NoBed: String
    var NoShowers: String
    var imageName: [String]
    var latitude: Double
    var longitude: Double
}

var Data: [Destination] = [
//    27 Fitzwilliam Leys
    Destination(address: "27 Fitzwilliam leys", distance: "1.2 miles", priceCM: "£530pcm", NoBed: "5", NoShowers: "2", imageName: ["House_Interior", "27Fitz kitchen", "27Fitz exterior"], latitude: 52.3138, longitude: -0.5958),
    
//    55 kestrel lane
    Destination(address: "55 kestrel lane", distance: "0.6 miles", priceCM: "£510pcm", NoBed: "8", NoShowers: "3", imageName: ["55Kest lounge", "Micro_Mansion", "55Kest Kitchen"], latitude: 52.3158, longitude: -0.6939),
    
//    1032 pershore road
    Destination(address: "1032 pershore road", distance: "2 miles", priceCM: "£570pcm", NoBed: "3", NoShowers: "1", imageName: ["1032Persh lounge", "1032Persh kitchen", "Modern_Mansion"], latitude: 52.4368, longitude: -1.9169)
]
