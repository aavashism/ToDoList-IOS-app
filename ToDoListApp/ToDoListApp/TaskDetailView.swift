//
//  TaskDetailView.swift
//  ToDoListApp
//
//  Created by Aavash Upadhyaya on 4/7/24.
//  Copyright © 2024 Aavash Upadhyaya. All rights reserved.
//

import Foundation
import SwiftUI

struct TaskDetailView: View {
    @Binding var task: Task

    var body: some View {
        TextField("Enter task name", text: $task.name)
            .padding()
    }
}
