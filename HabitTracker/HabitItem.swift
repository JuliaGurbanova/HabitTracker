//
//  Habit.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import Foundation

struct HabitItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}
