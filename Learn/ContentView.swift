//
//  ContentView.swift
//  Learn
//
//  Created by Mohammad Azam on 10/26/23.
//

import SwiftUI
import Observation

@Observable
class AppState: ObservableObject {
   var isOn: Bool = false
}

struct LightBulbView: View {

  @Environment(AppState.self) private var appState: AppState

  var body: some View {

    VStack {
      Image(systemName: appState.isOn ? "lightbulb.fill": "lightbulb")
        .foregroundStyle(appState.isOn ? .yellow: .black)
        .font(.largeTitle)
      Button("Toggle") {
        appState.isOn.toggle()
      }
    }
  }
}

struct LightRoomView: View {

  @Binding var isOn: Bool

  var body: some View {
    LightBulbView()
  }
}

struct ContentView: View {
  @Environment(AppState.self) private var appState: AppState



  var body: some View {
    VStack {
      LightBulbView()
    }
    .padding()
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(appState.isOn ? .black: .white )
  }
}

#Preview {
    ContentView()
    .environment(AppState())
}
