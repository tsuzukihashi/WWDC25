//
//  AlarmScreen.swift
//  WWDC25
//
//  Created by ryo.tsuzukihashi on 2025/06/11.
//

import SwiftUI
import AlarmKit

struct AlarmScreen: View {
  @State var viewModel: AlarmScreenViewModel

  var body: some View {
    Button {
      Task { await viewModel.didTapRequestAuthorization() }
    } label: {
      Text("Request Authorization")
    }
  }
}

#Preview {
  AlarmScreen(viewModel: .init(alarmManager: AlarmManager.shared))
}
