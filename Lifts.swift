//
//  LiftsView.swift
//  Weida
//
//  Created by robevans on 8/4/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct Lifts: View {

    //the binding is below in Liftview
    @State var lifts = liftsData //out data array
    @State var active  = false
    @State var hidenavbar = false
    @State var activeTitle = ""
    @State var activeLift = ""

    var body: some View {
            List(liftsData.indices, id: \.self) { index in
//                if (0...12).contains(index){
                    NavigationLink(destination: {
                        VStack{
                            if liftsData[index].text.contains("Lifts") {
                                LiftsTabView(activeTitle: self.$activeTitle, activeLift: self.$activeLift )
                                    .onAppear{
                                        print(liftsData[index].title, liftsData[index].text)
                                        self.activeTitle = liftsData[index].title
                                        UIImpactFeedbackGenerator(style: .medium)
                                            .impactOccurred()
                                }
                            }

                                //I can use an else if for additional programs
                            else {
                                AddLiftView()
                            }
                        }
                    }())
                    {
                        classicliftview(lift: liftsData[index])
                    }
                .padding(.vertical, 15.0)
//                } else {
//                    Text("About \(index)")
//                }
            }
            .navigationBarTitle("The Weida Way")
        }
}

struct LiftsView_Previews: PreviewProvider {
    static var previews: some View {
        Lifts()
        //        Lifts().environment(\.colorScheme, .dark)
    }
}

let screen = UIScreen.main.bounds


struct Lift: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var show: Bool
}

let liftsData = [
    Lift(title:"Chest", text:"Classic Lifts", image:"1_The_Weida_Way_Chest_Day", show: false),
    Lift(title:"Legs", text:"Classic Lifts", image:"3_The_Weida_Way_Leg_Day", show: false),
    Lift(title:"Back", text:"Classic Lifts", image: "2_The_Weida_Way_Back_Day", show: false),
    Lift(title:"Shoulder", text:"Classic Lifts", image:"4_The_Weida_Way_Shoulder_Day", show: false),
    Lift(title:"Arms", text:"Classic Lifts", image:"5_The_Weida_Way_Arm_Day", show: false)
]

struct classicliftview: View {
    var lift : Lift

    var body: some View {
        VStack(alignment: .leading) {
            Text(lift.title)
                .font(.headline)
            Text(lift.text)
                .font(.subheadline)
        }
    }
}
