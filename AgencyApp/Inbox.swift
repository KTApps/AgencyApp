//
//  Inbox.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 03/02/2024.
//

import SwiftUI

struct Inbox: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                
//                MARK: TOP HStack
                HStack {
                    Text("Name")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal, 20)
                Spacer()
                    .frame(height: 10)
                
//                MARK: MENU HStack
                HStack {
                    Text("Inbox")
                        .font(.title)
                        .fontWeight(.bold)
                        .underline(true, color: .black)
                    Spacer()
                    NavigationLink("Viewings", destination: Viewings())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Spacer()
                    NavigationLink("Listings", destination: Listings())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 20)
                Spacer()
                    .frame(height: 5)
                
//                MARK: MENU UNDERLINE Rectangle
                Rectangle()
                    .frame(height: 1)
                Spacer()
                
//                MARK: ScrollView
                ScrollView {
                    
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: EmptyView())
    }
}

#Preview {
    Inbox()
}
