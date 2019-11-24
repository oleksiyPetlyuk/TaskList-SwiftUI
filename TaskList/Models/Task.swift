//
//  Task.swift
//  TaskList
//
//  Created by Oleksiy Petlyuk on 22.11.2019.
//  Copyright © 2019 Oleksiy Petlyuk. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var completed = false
}
