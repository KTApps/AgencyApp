//
//  Viewings.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 03/02/2024.
//

import SwiftUI

struct Viewings: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.blue)
                            .font(.title)
                    }
                    Spacer()
                        .frame(width: 10)
                    Text("Name")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal)
                Spacer()
                    .frame(height: 10)
                HStack {
                    NavigationLink("Inbox", destination: Inbox())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Spacer()
                    Text("Viewings")
                        .font(.title)
                        .fontWeight(.bold)
                        .underline(true, color: .black)
                    Spacer()
                    NavigationLink("Listings", destination: Listings())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 20)
                Spacer()
                    .frame(height: 5)
                
//                MARK: MENU UNDERLINE HStack
                Rectangle()
                    .frame(height: 1)
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: EmptyView())
    }
}

#Preview {
    Viewings()
}
