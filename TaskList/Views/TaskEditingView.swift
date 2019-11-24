//
//  TaskEditingView.swift
//  TaskList
//
//  Created by Oleksiy Petlyuk on 22.11.2019.
//  Copyright © 2019 Oleksiy Petlyuk. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: Task
    
    var body: some View {
        Form {
            TextField("Name", text: $task.name)
            Toggle("Completed", isOn: $task.completed)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant(Task(name: "To Do")))
    }
}
