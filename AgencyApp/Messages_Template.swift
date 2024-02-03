//
//  Message Template.swift
//  AgencyApp
//
//  Created by Kelvin Mahaja on 03/02/2024.
//

import SwiftUI

struct MessageItem: Identifiable, Equatable {
    let id = UUID()
    let content: String
    
    static func == (lhs: MessageItem, rhs: MessageItem) -> Bool {
        return lhs.id == rhs.id && lhs.content == rhs.content
    }
}

struct Message_Template: View {
    @Environment(\.presentationMode) var presentationMode
    @State var searchText = ""
    @State private var messages: [MessageItem] = []
    @State private var textButton = false
    @State private var scrollProxy: ScrollViewProxy?
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            VStack {
                HStack {
                    Button(action: {
                        // Handle back button action here
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.blue)
                            .font(.title)
                    }
                    Spacer()
                        .frame(width: 15)

                    Text("Message Template")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image(systemName: "video")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 20)
                            .foregroundColor(.blue)
                    }
                    Spacer()
                        .frame(width: 15)
                    Button(action: {
                        
                    }) {
                        Image(systemName: "phone")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 20)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
                Divider()
                ScrollView {
                    ScrollViewReader { proxy in
                        LazyVStack {
                            ForEach(0..<20) { num in
                                HStack {
                                    if num.isMultiple(of: 2) {
                                        Spacer()
                                    }
                                    VStack {
                                        HStack {
                                            Text("Hello world")
                                        }
                                        .padding(.horizontal)
                                        .padding(.vertical, 10)
                                        .background(num.isMultiple(of: 2) ? .blue : .green)
                                        .cornerRadius(10)
                                    }
                                    if !num.isMultiple(of: 2) {
                                        Spacer()
                                    }
                                }
                                .padding(.vertical, 5)
                                .padding(.horizontal)
                            }
                            ForEach(messages) { message in
                                HStack {
                                    Spacer()
                                    Text(message.content)
                                        .padding(.horizontal)
                                        .padding(.vertical, 10)
                                        .background(.blue)
                                        .cornerRadius(10)
                                        .id(message.id)
                                        .onAppear {
                                            // Capture the ScrollViewProxy when the message appears
                                            if scrollProxy == nil {
                                                scrollProxy = proxy
                                            }
                                        }
                                }
                                .padding(.vertical, 5)
                                .padding(.horizontal)
                            }
                        }
                        .onChange(of: messages) { _ in
                            // Scroll to the bottom when messages change
                            withAnimation {
                                proxy.scrollTo(messages.last?.id, anchor: .bottom)
                            }
                        }
                    }
                }
                Divider()
                Spacer()
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "plus")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 20)
                            .foregroundColor(.blue)
                    }
                    
                    Spacer()
                        .frame(width: 15)
                    TextField ("", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .overlay(
                            HStack {
                                Spacer()
                                    .frame(width: 220)
                                Button(action: {
                                    messages.append(MessageItem(content: searchText))
                                    searchText = ""
                                    textButton.toggle()
                                }) {
                                    Image(systemName: "paperplane")
                                }
                            }
                        )
                    
                    Spacer()
                        .frame(width: 15)
                    Button(action: {
                        
                    }) {
                        Image(systemName: "camera")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 20)
                            .foregroundColor(.blue)
                    }
                    Spacer()
                        .frame(width: 15)
                    Button(action: {
                        
                    }) {
                        Image(systemName: "mic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 15, height: 10)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
            }
        }
        // Hide the default back button
        .navigationBarBackButtonHidden(true)
        // Add custom back button to the navigation bar
        .navigationBarItems(leading: EmptyView())
    }
}

struct Message_Template_Previews: PreviewProvider {
    static var previews: some View {
        Message_Template()
    }
}
