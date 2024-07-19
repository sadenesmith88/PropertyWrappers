//
//  ContentView.swift
//  Learn
//
//  Created by Mohammad Azam on 10/26/23.
//

import SwiftUI

struct ContentView: View {

  //storage for data update user interface using data
  //ui reflects what is in state
  //must be in sync to get swiftui working correctly
  @State private var search: String = ""
  @State private var friends: [String] = ["John", "Joe", "Jenn", "Josh"]
  @State private var filteredFriends: [String] = []
  var body: some View {
    VStack {
      //display frineds array
      List(filteredFriends, id: \.self) { friend in
        Text(friend)
      }
      .listStyle(.plain)
      .searchable(text: $search)
      .onChange(of: search) {
        if search.isEmpty {
          filteredFriends = friends
        } else {
          filteredFriends = friends.filter { $0.contains(search) }

        }
      }

      Spacer()
    }.padding()
      .onAppear(perform: {
        //initial value of filtered friends
        filteredFriends = friends
      })
      .navigationTitle("Friends List")
  }
}

#Preview {
  NavigationStack {
    ContentView()
  }
}
