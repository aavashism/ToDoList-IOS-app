//
//  Task.swift
//  ToDoListApp
//
//  Created by Aavash Upadhyaya on 4/7/24.
//  Copyright © 2024 Aavash Upadhyaya. All rights reserved.
//

import Foundation

struct Task: Identifiable, Codable {
    var id = UUID()
    var name: String
    var isCompleted: Bool = false
}
