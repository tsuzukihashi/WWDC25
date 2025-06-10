//
//  AlarmScreenViewModel.swift
//  WWDC25
//
//  Created by ryo.tsuzukihashi on 2025/06/11.
//

import Foundation
import AlarmKit

@Observable @MainActor
class AlarmScreenViewModel {
  var showError: Bool = false
  var errorMessage: String = ""

  private let alarmManager: AlarmManager

  init(alarmManager: AlarmManager) {
    self.alarmManager = alarmManager
  }

  func didTapRequestAuthorization() async {
    do {
      let status = try await AlarmManager.shared.requestAuthorization()
    } catch {
      showError(error.localizedDescription)
    }
  }

  private func showError(_ message: String) {
    showError = true
    errorMessage = message
  }
}
