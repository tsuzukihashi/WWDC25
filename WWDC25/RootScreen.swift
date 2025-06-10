//
//  RootScreen.swift
//  WWDC25
//
//  Created by ryo.tsuzukihashi on 2025/06/11.
//

import SwiftUI

struct RootScreen: View {
  var body: some View {
    NavigationStack {
      List {
        NavigationLink(value: NavigationPath.alarmKit) {
          Text("AlarmKit")
        }
      }
      .navigationTitle("WWDC25")
      .navigationDestination(for: NavigationPath.self) { path in
        switch path {
        case .alarmKit:
          AlarmScreen()
        }
      }
    }
  }
}

#Preview {
  RootScreen()
}
