//
//  TaskStore.swift
//  TaskList
//
//  Created by Oleksiy Petlyuk on 22.11.2019.
//  Copyright © 2019 Oleksiy Petlyuk. All rights reserved.
//

import Combine

class TaskStore: ObservableObject {
    @Published var prioritizedTasks = [
        PrioritizedTasks(priority: .high, tasks: [
            Task(name: "Test 1"),
            Task(name: "Test 2"),
            Task(name: "Test 3"),
        ]),
        PrioritizedTasks(priority: .medium, tasks: [
            Task(name: "Test 1"),
            Task(name: "Test 2"),
            Task(name: "Test 3"),
        ]),
        PrioritizedTasks(priority: .low, tasks: [
            Task(name: "Test 1"),
            Task(name: "Test 2"),
            Task(name: "Test 3"),
        ]),
        PrioritizedTasks(priority: .no, tasks: [
            Task(name: "Test 1"),
            Task(name: "Test 2"),
            Task(name: "Test 3"),
        ]),
    ]
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTasks.firstIndex { $0.priority == priority }!
    }
}
