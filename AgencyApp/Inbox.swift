//
//  Inbox.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 03/02/2024.
//

import SwiftUI

struct Inbox: View {
    @State private var isMessTempActive = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    if !isMessTempActive {
    //                MARK: TOP HStack
                        HStack {
                            Text("BRANCH 1")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
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
                                .foregroundColor(Color.white)
                                .underline(true, color: .white)
                            Spacer()
                            NavigationLink("Viewings", destination: Viewings())
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                            NavigationLink("Listings", destination: Listings())
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                        Spacer()
                            .frame(height: 5)
                        
    //                MARK: MENU UNDERLINE Rectangle
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(height: 1)
                        Spacer()
                    }
//                MARK: ScrollView
                    Messages(isMessTempActive: $isMessTempActive)
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
