//
//  BookwormApp.swift
//  Bookworm
//
//  Created by JOY JAIN on 08/02/24.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
