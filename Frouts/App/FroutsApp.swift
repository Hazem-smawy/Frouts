//
//  FroutsApp.swift
//  Frouts
//
//  Created by hazem smawy on 9/6/22.
//

import SwiftUI

@main
struct Frouts: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
