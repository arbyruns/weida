//
//  ClassicLifts.swift
//  Weida
//
//  Created by robevans on 8/14/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct ClassicLifts: View {

    @State var active  = false
    @State var hidenavbar = false
    @State var activeIndex = -1
    @State var activeTitle = ""
    @State var activeLift = -1

    var body: some View {
        List(cafes.indices, id: \.self) { index in
            if (0...12).contains(index){
                NavigationLink(destination: {
                    VStack{
                        if cafes[index].title.contains("Week") {
                            sff2tabview(activeIndex: self.$activeIndex, activeTitle: self.$activeTitle, activeLift: self.$activeLift)
                                .onAppear{
                                    print(cafes[index].title, cafes[index].text)
                                    self.activeTitle = cafes[index].title
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
                    weeksview(cafe: cafes[index])
                }
            } else {
                Text("About \(index)")
            }
        }
        .navigationBarTitle("So Fit 2.0")
    }
}

struct ClassicLifts_Previews: PreviewProvider {
    static var previews: some View {
        ClassicLifts()
    }
}

struct CLift: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var show: Bool
}

let cliftsData = [
    CLift(title:"Chest", text:"Classic Lifts", image:"1_The_Weida_Way_Chest_Day", show: false),
    CLift(title:"Legs", text:"Classic Lifts", image:"3_The_Weida_Way_Leg_Day", show: false),
    CLift(title:"Back", text:"Classic Lifts", image: "2_The_Weida_Way_Back_Day", show: false),
    CLift(title:"Shoulder", text:"Classic Lifts", image:"4_The_Weida_Way_Shoulder_Day", show: false),
    CLift(title:"Arms", text:"Classic Lifts", image:"5_The_Weida_Way_Arm_Day", show: false)
]

