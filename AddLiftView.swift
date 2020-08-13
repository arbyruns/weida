//
//  foo.swift
//  Weida
//
//  Created by robevans on 8/8/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct AddLiftView: View {
    
    var liftslist = ["Cow","Bench Press","Deadlift","Squat","Back Row","Strict Press"]

    @State private var selectedlLiftsList = 0
    @State private var currentTab = 0
    @State private var newStatItemLift = ""
    @State private var newStatItemWeight = ""
    @State private var showButton = false

    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: StatItem.getStatItems()) var statItems:FetchedResults<StatItem>

    var body: some View {
        VStack {
//            NavigationView {
//                Form{
                    List {
                        Section(header: Text("Max Rep")){
                            Picker(selection: $selectedlLiftsList, label: Text("Select Lift")) {
                                ForEach(0 ..< liftslist.count ){
                                    Text(self.liftslist[$0])
                                }
                            }
                            HStack{
                                TextField("Weight", text: self.$newStatItemWeight)
                                    .keyboardType(.numberPad)
                                Button(action: {
                                    guard self.newStatItemWeight.count > 0 else {return}
                                    guard  self.liftslist[self.selectedlLiftsList] == "Cow" else { return }
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
                        }
                        .labelsHidden()
                        .font(.headline)
                    }
//                }
//            }
        }
    }
}

        struct foo_Previews: PreviewProvider {
            static var previews: some View {
                AddLiftView()
            }
        }
