//
//  TextModifiers.swift
//  Weida
//
//  Created by robevans on 8/10/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct WorkoutLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 15.0)
            .background(Color("background3"))
    }
}

struct ExerciseLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 20.0)
    }
}
