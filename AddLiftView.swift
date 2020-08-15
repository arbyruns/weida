//
//  foo.swift
//  Weida
//
//  Created by robevans on 8/8/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct AddLiftView: View {

    var liftslist = ["-","Bench Press","Deadlift","Squat","Back Row","Strict Press"]

    @State private var selectedlLiftsList = 0
    @State private var currentTab = 0
    @State private var newStatItemLift = ""
    @State private var newStatItemWeight = ""
    @State private var showButton = false

    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: StatItem.getStatItems()) var statItems:FetchedResults<StatItem>

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Select a lift")
                    .padding(.top, 50)){
                    Picker(selection: $selectedlLiftsList, label: Text("Select Lift")) {
                        ForEach(0 ..< liftslist.count ){
                            Text(self.liftslist[$0])
                        }
                    }
                }
                .labelsHidden()
                .font(.headline)
                HStack{
                    TextField("Weight", text: self.$newStatItemWeight)
                        .padding(.vertical, 15)
                        .keyboardType(.numberPad)
                    Button(action: {
                        guard self.newStatItemWeight.count > 0 else {
                            return
                        }
                        guard self.liftslist[self.selectedlLiftsList] != "-" else { return

                            print("pick a lift")

                        }
                        //formatting the date here
//                        let formatter = DateFormatter()
//                        formatter.dateFormat = "MMM d, yyyy" //You can change this
//                        let dateString = formatter.string(from: Date())

                        let statItem = StatItem(context: self.managedObjectContext)

                        statItem.lift = self.liftslist[self.selectedlLiftsList]
                        statItem.createdAt = Date()
                        statItem.weight = self.newStatItemWeight

                        do {
                            try self.managedObjectContext.save()
                            print("we saved \(self.newStatItemWeight)" )
                        }catch{
                            print(error)
                            print("We didn't save \(self.newStatItemWeight)")
                        }

                        self.newStatItemWeight = "" //this cleans the item
                    })
                    {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.green)
                            .imageScale(.large)

                    }
                }
//                .frame(width: 250)
                HStack {
                    Spacer()
                    Text("Enter New 1 Rep Max")
                        .font(.caption)
                    Spacer()
                }
            }
        }
    }
}

struct foo_Previews: PreviewProvider {
    static var previews: some View {
        AddLiftView()
    }
}
