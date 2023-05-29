//
//  HabitList.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import Foundation

class Habits: ObservableObject {
    @Published var habits: [HabitItem] {
        didSet {
            if let encoded = try? JSONEncoder().encode(habits) {
                UserDefaults.standard.set(encoded, forKey: "Habits")
            }
        }
    }
    
    init() {
        if let saved = UserDefaults.standard.data(forKey: "Habits") {
            if let decoded = try? JSONDecoder().decode([HabitItem].self, from: saved) {
                habits = decoded
                return
            }
        }
        
        habits = []
    }
    
}
