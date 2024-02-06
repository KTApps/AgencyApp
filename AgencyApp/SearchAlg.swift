//
//  SearchAlg.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 06/02/2024.
//

import SwiftUI

struct Destination2: Identifiable {
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

var Data2: [Destination2] = [
//    27 Fitzwilliam Leys
    Destination2(address: "27 Fitzwilliam leys", distance: "1.2 miles", priceCM: "£530pcm", NoBed: "5", NoShowers: "2", imageName: ["House_Interior", "27Fitz kitchen", "27Fitz exterior"], latitude: 52.3138, longitude: -0.5958),
    
//    55 kestrel lane
    Destination2(address: "55 kestrel lane", distance: "0.6 miles", priceCM: "£510pcm", NoBed: "8", NoShowers: "3", imageName: ["55Kest lounge", "Micro_Mansion", "55Kest Kitchen"], latitude: 52.3158, longitude: -0.6939),
    
//    1032 pershore road
    Destination2(address: "1032 pershore road", distance: "2 miles", priceCM: "£570pcm", NoBed: "3", NoShowers: "1", imageName: ["1032Persh lounge", "1032Persh kitchen", "Modern_Mansion"], latitude: 52.4368, longitude: -1.9169)
]

struct ViewingsValues2: Identifiable {
    let id = UUID()
    let username: String
    let imageName: String
    let time: String
}

var BookingPosts2: [ViewingsValues2] = [
    ViewingsValues2(username: "Student name", imageName: "Test_1", time: "11:00 - 11:30 - 21/04/2024"),
    ViewingsValues2(username: "Student name", imageName: "55Kest Kitchen", time: "12:00 - 12:30 - 21/04/2024"),
    ViewingsValues2(username: "Student name", imageName: "1032Persh lounge", time: "10:15 - 10:45 - 22/04/2024"),
    ViewingsValues2(username: "Student name", imageName: "27Fitz kitchen", time: "13:00 - 13:30 - 23/04/2024"),
    ViewingsValues2(username: "Student name", imageName: "1032Persh kitchen", time: "14:30 - 15:00 - 23/04/2024"),
    // Add more posts as needed
]

struct SearchAlg: View {
    var body: some View {
        // Call a separate function to handle the logic and return a view
        displayImageNameExistence()
    }
    
    func displayImageNameExistence() -> some View {
        // Use a VStack to stack the Text views
        VStack {
            ForEach(BookingPosts2) { bookingPost in
                let imageNameExistsInData = checkImageNameExistsInData(bookingPost.imageName)
                Text("\(bookingPost.imageName) exists in Data2: \(imageNameExistsInData ? "Yes" : "No")")
            }
        }
    }
    
    func checkImageNameExistsInData(_ imageName: String) -> Bool {
        for destination in Data2 {
            if destination.imageName.contains(imageName) {
                return true
            }
        }
        return false
    }
}

// Preview
struct SearchAlg_Previews: PreviewProvider {
    static var previews: some View {
        SearchAlg()
    }
}

