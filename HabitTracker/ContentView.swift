//
//  ContentView.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = Habits()
    @State private var showingAddHabit = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(data.habits) { item in
                    NavigationLink {
                        HabitDetailView(data: data, habitItem: item)
                    } label: {
                        HStack {
                            Text(item.title)
                            Spacer()
                            Text(String(item.count))
                            
                        }
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("HabitTracker")
            .toolbar {
                Button {
                    showingAddHabit = true
                } label: {
                    Label("Add new habit", systemImage: "plus")
                }
            }
            .sheet(isPresented: $showingAddHabit) {
                AddItemView(data: data)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        data.habits.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
