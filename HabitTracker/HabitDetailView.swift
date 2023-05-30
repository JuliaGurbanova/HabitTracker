//
//  HabitDetailView.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import SwiftUI

struct HabitDetailView: View {
    @ObservedObject var data: Habits
    var habitItem: HabitItem
    
    var body: some View {
        List {
            Section {
                if !habitItem.description.isEmpty {
                    Text(habitItem.description)
                }
            }
            
            Section {
                Text("Completion count: \(habitItem.count)")
                
                Button("Mark Completed") {
                    var newHabit = habitItem
                    newHabit.count += 1
                    
                    if let index = data.habits.firstIndex(of: habitItem) {
                        data.habits[index] = newHabit
                    }
                }
            }
        }
        .navigationTitle(habitItem.title)
    }
}

struct HabitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetailView(data: Habits(), habitItem: HabitItem(title: "Title", description: "Description"))
    }
}
