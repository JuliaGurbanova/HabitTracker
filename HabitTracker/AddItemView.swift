//
//  AddItemView.swift
//  HabitTracker
//
//  Created by Julia Gurbanova on 26.05.2023.
//

import SwiftUI

struct AddItemView: View {
    @ObservedObject var habits: Habits
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
                    let item = HabitItem(title: title, description: description)
                    habits.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(habits: Habits())
    }
}
