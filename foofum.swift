//
//  foo.swift
//  Weida
//
//  Created by robevans on 8/13/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct foofum: View {
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()

    var dueDate = Date()

    var body: some View {
        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
    }
}

struct foofum_Previews: PreviewProvider {
    static var previews: some View {
        foofum()
    }
}
