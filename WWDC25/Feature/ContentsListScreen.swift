//
//  ContentsListScreen.swift
//  WWDC25
//
//  Created by Ryo Tsuzukihashi on 2025/06/11.
//

import SwiftUI
import AlarmKit

struct ContentsListScreen: View {
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
          AlarmScreen(viewModel: .init(alarmManager: .shared))
        }
      }
    }
  }
}

#Preview {
  ContentsListScreen()
}
