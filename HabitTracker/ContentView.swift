//
//  ContentView.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var habits = Habits()
    @State private var showingAddHabit = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(habits.habits) { item in
                    NavigationLink {
                        HabitDetailView(habitItem: item)
                    } label: {
                         Text(item.title)
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("HabitTracker")
            .toolbar {
                Button {
                    showingAddHabit = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddHabit) {
                AddItemView(data: habits)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        habits.habits.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
