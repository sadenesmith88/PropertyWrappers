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
  @State private var name: String = ""
  @State private var friends: [String] = []



  var body: some View {
    VStack {
      TextField("Enter name", text: $name)
        .textFieldStyle(.roundedBorder)
        .onSubmit {
          friends.append(name)
          name = ""
        }

      //display frineds array
      List(friends, id: \.self) { friend in
        Text(friend)
      }


      Spacer()
    }.padding()
  }
}

#Preview {
    ContentView()
}
