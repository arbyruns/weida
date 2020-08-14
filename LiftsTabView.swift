//
//  LiftsTabView.swift
//  Weida
//
//  Created by robevans on 8/14/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct LiftsTabView: View {

    @State private var currentTab = 0
    @Binding var activeTitle: String
    @Binding var activeLift: String

    var body: some View {
        VStack {
            Text(activeTitle)
                .font(.title)
            Divider()
                .background(Color("background2"))
                .frame(width: 400)
            if activeTitle == "Chest" {
                Text("Main Lift")
                    .modifier(WorkoutLabel())
                Text(classiclifts[0].main_lift)
                .modifier(ExerciseLabel())
                Text("Accessory Lifts")
                    .modifier(WorkoutLabel())
                Text(classiclifts[0].accesorylift1)
                    .modifier(ExerciseLabel())
                Text(classiclifts[0].accesorylift2)
                    .modifier(ExerciseLabel())
                Text(classiclifts[0].accesorylift3)
                    .modifier(ExerciseLabel())
            } else if activeTitle == "Legs" {
                Text("Main Lift")
                    .modifier(WorkoutLabel())
                Text(classiclifts[1].main_lift)
                .modifier(ExerciseLabel())
                Text("Accessory Lifts")
                    .modifier(WorkoutLabel())
                Text(classiclifts[1].accesorylift1)
                    .modifier(ExerciseLabel())
                Text(classiclifts[1].accesorylift2)
                    .modifier(ExerciseLabel())
                Text(classiclifts[1].accesorylift3)
                    .modifier(ExerciseLabel())
                Text(classiclifts[1].accesorylift4)
                    .modifier(ExerciseLabel())
            } else if activeTitle == "Back" {
                Text("Main Lift")
                    .modifier(WorkoutLabel())
                Text(classiclifts[2].main_lift)
                .modifier(ExerciseLabel())
                Text("Accessory Lifts")
                    .modifier(WorkoutLabel())
                Text(classiclifts[2].accesorylift1)
                    .modifier(ExerciseLabel())
                Text(classiclifts[2].accesorylift2)
                    .modifier(ExerciseLabel())
                Text(classiclifts[2].accesorylift3)
                    .modifier(ExerciseLabel())
                Text(classiclifts[2].accesorylift4)
                    .modifier(ExerciseLabel())
            } else if activeTitle == "Shoulder" {
                Text("Main Lift")
                    .modifier(WorkoutLabel())
                Text(classiclifts[3].main_lift)
                .modifier(ExerciseLabel())
                Text("Accessory Lifts")
                    .modifier(WorkoutLabel())
                Text(classiclifts[3].accesorylift1)
                    .modifier(ExerciseLabel())
                Text(classiclifts[3].accesorylift2)
                    .modifier(ExerciseLabel())
                Text(classiclifts[3].accesorylift3)
                    .modifier(ExerciseLabel())
            } else if activeTitle == "Arms" {
                Text("Main Lift")
                    .modifier(WorkoutLabel())
                Text(classiclifts[4].main_lift)
                .modifier(ExerciseLabel())
                Text("Accessory Lifts")
                    .modifier(WorkoutLabel())
                Text(classiclifts[4].accesorylift1)
                    .modifier(ExerciseLabel())
                Text(classiclifts[4].accesorylift2)
                    .modifier(ExerciseLabel())
                Text(classiclifts[4].accesorylift3)
                    .modifier(ExerciseLabel())
                Text(classiclifts[4].accesorylift4)
                    .modifier(ExerciseLabel())
            }
            Spacer()
        }
    }
}

struct LiftsTabView_Previews: PreviewProvider {
    static var previews: some View {
        //        LiftsTabView(activeTitle: .constant("Chest"), activeLift: .constant("Chest"))
        LiftsTabView(activeTitle: .constant("Chest"), activeLift: .constant("Chest")).environment(\.colorScheme, .dark)
    }
}

struct Classiclift: Identifiable {
    var id = UUID()
    var lift: String
    var program: String
    var show: Bool
    var main_lift: String
    var accesorylift1: String
    var accesorylift2: String
    var accesorylift3: String
    var accesorylift4: String

}

let classiclifts = [
    Classiclift(lift:"Chest",
                program:"Classic Lift",
                show:false,
                main_lift:"Bench Press - 2x15, 1x12, 1x8, 1x6, 3x1, 1x20+",
                accesorylift1:"Incline Dumbbell -  Press 6x6",
                accesorylift2:"Pec Dec -  1x15, 1x12, 1x8, 2-3x6",
                accesorylift3:"Cable Flys - Down 3x15, Up 3x15",
                accesorylift4:""
    ),
    Classiclift(lift:"Legs",
                program:"Classic Lift",
                show:false,
                main_lift:"Squat - 1x15, 1x10, 1x8, 1x4, 3x1, 1x20+",
                accesorylift1:"Leg Press - 2x12-15, 2x6-8, 2x4-6, 1x20+",
                accesorylift2:"Quad Extension - 5x10-15",
                accesorylift3:"Hamstring Curls 5x10-15",
                accesorylift4:"Lunges - 4x15ft"
    ),
    Classiclift(lift:"Back",
                program:"Classic Lift",
                show:false,
                main_lift:"Wide Arm Pull-Ups - 10, 8, 6, 4, 2, Bent Over Rows - 2x15, 1x10, 1x8, 3x4-6",
                accesorylift1:"Lat Pull Downs - 1x15, 1x12, 1x8, 1x6, 2x4, 1x15-20",
                accesorylift2:"T-Bar Row - 1x12, 1x8, 2x4-6",
                accesorylift3:"Single Arm Row 4x6",
                accesorylift4:"Reverse Cable 3x15"
    ),
    Classiclift(lift:"Shoulder",
                program:"Classic Lift",
                show:false,
                main_lift:"Standing BB or Seated DB Press - 1x15, 1x12, 1x8, 1x6, 3x2-4, 1x15",
                accesorylift1:"Rope Face Pulls - 4x15",
                accesorylift2:"DB Lateral Raise - 1x15, 1x10-12, 2x6-8, DB Front Raise - 2x10, 2x6-8",
                accesorylift3:"Upright Row 4x10-15",
                accesorylift4:""
    ),
    Classiclift(lift:"Arms",
                program:"Classic Lift",
                show:false,
                main_lift:"Cable EZ Bar 21's SS w/Rope Tricape Extension - 4x21",
                accesorylift1:"BB Curl - 1x15, 1x12, 1x8, 2x6, 1x15",
                accesorylift2:"Dips 4x10-15",
                accesorylift3:"Seated DD Curl 4x10-15, Skull Crushers 4x10-15",
                accesorylift4:"Preacher Curl 2x12-15, 2x6-8, V-Bar Cable Extension - 4x10-15"
    ),
]
