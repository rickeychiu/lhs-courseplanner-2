//
//  CoursePlannerApp.swift
//  Shared
//
//  Created by Rickey Chiu on 7/19/23.
//

import SwiftUI
import CoreData

@main
struct CoursePlannerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ScheduleListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
