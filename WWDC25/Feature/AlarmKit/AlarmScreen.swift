//
//  AlarmScreen.swift
//  WWDC25
//
//  Created by ryo.tsuzukihashi on 2025/06/11.
//

import SwiftUI
import AlarmKit

struct AlarmScreen: View {

  var body: some View {
    Text("AlarmScreen!")
  }

  private func requestAuthorization() async {
    do {
      let status = try await AlarmManager.shared.requestAuthorization()
    } catch {

    }
  }
}

#Preview {
  AlarmScreen()
}
