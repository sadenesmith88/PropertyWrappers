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
  @State private var isOn: Bool = false


    
    var body: some View {
      VStack {
        Toggle(isOn: $isOn, label: {
          Text(isOn ? "ON": "OFF")
        }).fixedSize()
      }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? .yellow: .purple)
    }
}

#Preview {
    ContentView()
}
