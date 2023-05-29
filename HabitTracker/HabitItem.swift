//
//  Habit.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import Foundation

struct HabitItem: Identifiable, Codable {
    var id = UUID()
    var title: String
    var description: String
}
