//
//  ContentView.swift
//  Learn
//
//  Created by Mohammad Azam on 10/26/23.
//

import SwiftUI

struct LightBulbView: View {

  @Binding  var isOn: Bool

  var body: some View {
    VStack {
      Image(systemName: isOn ? "lightbulb.fill": "lightbulb")
        .foregroundStyle(isOn ? .yellow: .black)
        .font(.largeTitle)
      Button("Toggle") {
        isOn.toggle()
      }
    }
  }
}

struct ContentView: View {

  @State private var isLightOn: Bool = false

  var body: some View {
    VStack {
      LightBulbView(isOn: $isLightOn )
    }
    .padding()
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(isLightOn ? .black: .white )
  }
}

#Preview {
    ContentView()
}
