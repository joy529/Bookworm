//
//  ContentView.swift
//  Bookworm
//
//  Created by JOY JAIN on 08/02/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var books: [Book]
    
    @State private var showingAddAcreen = false
    
    var body: some View {
        NavigationStack {
            Text("Count: \(books.count)")
                .navigationTitle("Bookworm")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Add Book", systemImage: "Plus") {
                            showingAddAcreen.toggle()
                        }
                    }
                }
                .sheet(isPresented: $showingAddAcreen) {
                    addBookView()
                }
        }
    }
}

#Preview {
    ContentView()
}
