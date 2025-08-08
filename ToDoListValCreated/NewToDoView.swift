//
//  NewToDoView.swift
//  ToDoListValCreated
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext

    var body: some View {
        VStack{
            Text("Task Title: ")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter your task description...", text: $toDoItem.title, axis:.vertical)
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            Button {
                addToDo()
            } label: {
                Text("Save")
            }
        }//end VStack
        .padding()
    }//end body
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)

    }
}//end struct

#Preview {
    ContentView()
            .modelContainer(for: ToDoItem.self, inMemory: true)    }
   

