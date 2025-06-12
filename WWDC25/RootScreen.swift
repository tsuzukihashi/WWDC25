//
//  RootScreen.swift
//  WWDC25
//
//  Created by ryo.tsuzukihashi on 2025/06/11.
//

import SwiftUI

struct RootScreen: View {
  var body: some View {
    TabView {
      ContentsListScreen()
        .tabItem {
          Label("リスト", systemImage: "list.bullet")
        }
      SettingScreen()
        .tabItem {
          Label("設定", systemImage: "gearshape")
        }
    }
    .tint(.green)
    .overlay(alignment: .bottomTrailing) {
      Button {

      } label: {
        Image(systemName: "plus")
      }
      .buttonStyle(.glass)
      .glassEffect(.regular, in: .circle)
      .padding(.trailing)
      .padding(8)
    }
  }
}

#Preview {
  RootScreen()
}
