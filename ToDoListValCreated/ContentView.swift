//
//  ContentView.swift
//  ToDoListValCreated
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    print("hi")
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding()
            Spacer()
            List {
                    ForEach (toDos) { toDoItem in
                            Text(toDoItem.title)
                       
                        }
                        }
                    }
                }
            }
//        .padding()
        //end body
    //end struct


#Preview {
    ContentView()
            .modelContainer(for: ToDoItem.self, inMemory: true)
    }

