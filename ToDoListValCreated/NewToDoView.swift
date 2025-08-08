//
//  NewToDoView.swift
//  ToDoListValCreated
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack{
            Text("Task Title: ")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter your task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                Text("Save")
            }
        }//end VStack
        .padding()
    }//end body
}//end struct

#Preview {
    NewToDoView()
}
