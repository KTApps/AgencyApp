//
//  Listings.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 03/02/2024.
//

import SwiftUI

struct Listings: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    
//                MARK: TOP HStack
                    HStack {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.blue)
                                .font(.title)
                        }
                        Spacer()
                            .frame(width: 15)
                        Text("Name")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    .padding(.horizontal)
                    Spacer()
                        .frame(height: 10)
                    
//                MARK: MENU HStack
                    HStack {
                        NavigationLink("Inbox", destination: Inbox())
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                        NavigationLink("Viewings", destination: Viewings())
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                        Text("Listings")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .underline(true, color: .white)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                        .frame(height: 5)
                    
//                MARK: MENU UNDERLINE HStack
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 1)
                    Spacer()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: EmptyView())
    }
}

#Preview {
    Listings()
}
