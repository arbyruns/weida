//
//  Stats.swift
//  Weida
//
//  Created by robevans on 8/10/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI
import UIKit

struct Stats: View {
    var body: some View {
        Form {
            Text("Max Lifts")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            ForEach(stats) { maxstats in
                maxliftsview(maxstats: maxstats)
            }
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}

struct MaxStats: Identifiable {
    var id = UUID()
    var exercise: String
    var date: Int
    var weight: Int
}

var stats = [
    MaxStats(exercise:"Bench", date:1/1/1949, weight: 0),
    MaxStats(exercise:"Squat", date:0, weight: 0),
    MaxStats(exercise:"Deadlift", date:0, weight: 0),
    MaxStats(exercise:"Back",  date:0, weight: 0),
    MaxStats(exercise:"Strict Press", date:0, weight: 0)
]

struct maxliftsview: View {
    var maxstats: MaxStats
    @State var weightvar: String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(maxstats.exercise)
                    .font(.subheadline)
                    .fontWeight(.bold)
                Spacer()
                Text("Date")
                    .font(.subheadline)
            }
            Spacer()
            TextField("max rep", text: $weightvar)
                .frame(width: 100)
                .keyboardType(.numberPad)
            Text("lb")
        }
    }
}

//swiftui does not have a modifier to dismiss keyboard.  This seems the best way universally on the internet. https://www.hackingwithswift.com/quick-start/swiftui/how-to-dismiss-the-keyboard-for-a-textfield

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
