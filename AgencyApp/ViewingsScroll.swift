//
//  Messages.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 06/02/2024.
//

import SwiftUI

struct ViewingsValues: Identifiable {
    let id = UUID()
    let username: String
    let imageName: String
    let time: String
}

struct ViewingsScroll: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var BookingPosts: [ViewingsValues] = [
        ViewingsValues(username: "Student name", imageName: "Micro_Mansion", time: "11:00 - 11:30 - 21/04/2024"),
        ViewingsValues(username: "Student name", imageName: "55Kest Kitchen", time: "12:00 - 12:30 - 21/04/2024"),
        ViewingsValues(username: "Student name", imageName: "1032Persh lounge", time: "10:15 - 10:45 - 22/04/2024"),
        ViewingsValues(username: "Student name", imageName: "27Fitz kitchen", time: "13:00 - 13:30 - 23/04/2024"),
        ViewingsValues(username: "Student name", imageName: "1032Persh kitchen", time: "14:30 - 15:00 - 23/04/2024"),
        // Add more posts as needed
    ]
    
    @State private var LikedBookings: [ViewingsValues] = []
        
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea(.all)
                VStack {
                    ScrollView {
                        LazyVStack(spacing: 10) {
                            ForEach(BookingPosts) { BookingPosts in
                                NavigationLink(destination: Message_Template()) {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Divider()
                                        HStack {
                                            Image(BookingPosts.imageName)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 60, height: 60)
                                                .cornerRadius(10)
                                                .clipped()

                                            VStack(alignment: .leading) {
                                                Spacer()
                                                Text(BookingPosts.username)
                                                    .font(.callout)
                                                    .foregroundColor(Color.white)
                                                
                                                Spacer()
                                                    .frame(height: 5)
                                                
                                                Text(BookingPosts.time)
                                                    .font(.subheadline)
                                                    .foregroundColor(Color.gray)
                                                Spacer()
                                            }
                                            
                                            Spacer()
                                        }
                                    }
                                    .padding()
                                }
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                }
            }
        }
        // Hide the default back button
        .navigationBarBackButtonHidden(true)
        // Add custom back button to the navigation bar
        .navigationBarItems(leading: EmptyView())
    }
}

struct ViewingsScroll_Previews: PreviewProvider {
    static var previews: some View {
        ViewingsScroll()
    }
}

