//
//  SwiftUI_List_StarterApp.swift
//  mobilsatrancc
//
//  Created by DOGUHAN on 1.06.2024.
//

import SwiftUI

@main
struct SwiftUI_List_StarterApp: App {
    @State private var showOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if showOnboarding {
                OnboardingView(showOnboarding: $showOnboarding)
            } else {
                VideoListView()
            }
        }
    }
}


