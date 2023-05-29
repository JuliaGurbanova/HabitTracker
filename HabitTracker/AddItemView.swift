//
//  AddItemView.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import SwiftUI

struct AddItemView: View {
    @ObservedObject var data: Habits
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var description = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                TextField("Description", text: $description)
            }
            .navigationTitle("Add habit")
            .toolbar {
                Button("Save") {
                    let trimmedTitle = title.trimmingCharacters(in: .whitespaces)
                    guard trimmedTitle.isEmpty == false else { return }
                    
                    let habit = HabitItem(title: trimmedTitle, description: description)
                    
                    data.habits.append(habit)
                    dismiss()
                }
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(data: Habits())
    }
}
