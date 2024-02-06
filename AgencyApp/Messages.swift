//
//  Messages.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 06/02/2024.
//

import SwiftUI

struct LineTime: Identifiable {
    let id = UUID()
    let username: String
    let imageName: String
}

struct Messages: View {
    @Binding var isMessTempActive: Bool
    @Environment(\.presentationMode) var presentationMode
    
    @State private var BookingPosts: [LineTime] = [
        LineTime(username: "Student name", imageName: "Micro_Mansion"),
        LineTime(username: "Student name", imageName: "27Fitz exterior"),
        LineTime(username: "Student name", imageName: "Modern_Mansion"),
        LineTime(username: "Student name", imageName: "55Kest lounge"),
        LineTime(username: "Student name", imageName: "55Kest Kitchen"),
        LineTime(username: "Student name", imageName: "1032Persh lounge"),
        LineTime(username: "Student name", imageName: "27Fitz kitchen"),
        LineTime(username: "Student name", imageName: "1032Persh kitchen"),
        // Add more posts as needed
    ]
    
    @State private var LikedBookings: [LineTime] = []
        
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea(.all)
                VStack {
                    ScrollView {
                        LazyVStack(spacing: 10) {
                            ForEach(BookingPosts) { BookingPosts in
                                NavigationLink(destination: Message_Template(), isActive: $isMessTempActive) {
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
                                                
                                                Text("Message preview.....")
                                                    .fontWeight(.thin)
                                                    .font(.body)
                                                    .foregroundColor(Color.white)
                                                
                                                Spacer()
                                            }
                                            
                                            Spacer()
                                            
                                            VStack {
                                                Text("17:43")
                                                    .foregroundColor(Color.white)
                                                Spacer()
                                                    .frame(height: 30)
                                            }
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

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages(isMessTempActive: .constant(false))
    }
}

