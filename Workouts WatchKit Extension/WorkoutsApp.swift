//
//  WorkoutsApp.swift
//  Workouts WatchKit Extension
//
//  Created by Frank Bara on 9/29/21.
//

import SwiftUI

@main
struct WorkoutsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
