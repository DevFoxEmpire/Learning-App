//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Olha Hladush on 12/20/22.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
