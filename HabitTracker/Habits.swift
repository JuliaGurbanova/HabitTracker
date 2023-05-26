//
//  HabitList.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import Foundation

class Habits: ObservableObject {
    @Published var items = [HabitItem]()
}
