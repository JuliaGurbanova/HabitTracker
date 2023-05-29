//
//  HabitDetailView.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import SwiftUI

struct HabitDetailView: View {
    let habitItem: HabitItem
    
    var body: some View {
        NavigationView {
            Text(habitItem.description)
            .navigationTitle(habitItem.title)
        }
        
    }
}

struct HabitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetailView(habitItem: HabitItem(title: "Habit", description: "Description"))
    }
}
