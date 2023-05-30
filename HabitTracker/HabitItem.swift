//
//  Habit.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import Foundation

struct HabitItem: Identifiable, Codable, Equatable {
    var id = UUID()
    var title: String
    var description: String
    var count = 0
}
