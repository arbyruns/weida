//
//  LiftsListView.swift
//  Weida
//
//  Created by robevans on 8/11/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct LiftsListView: View {
    var liftslist = ["Bench Press","Deadlift","Squat","Back Row","Strict Press"]
    @State private var selectedlLiftsList = 0


    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedlLiftsList, label: Text("Select Lift")) {
                        ForEach(0 ..< liftslist.count ){
                            Text(self.liftslist[$0])
                        }
                    }
                    Text(liftslist[selectedlLiftsList])
                }
            }
        }
    }
}

struct LiftsListView_Previews: PreviewProvider {
    static var previews: some View {
        LiftsListView()
    }
}
