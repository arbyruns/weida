//
//  SFF2.swift
//  Weida
//
//  Created by robevans on 8/7/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct SFF2: View {
    //the binding is below in Liftview
    //    @State var ssf2 = Weeksff2Data //out data array
    @State var active  = false
    @State var hidenavbar = false
    @State var activeIndex = -1
    @State var activeTitle = ""
    @State var activeWeek = -1


    var body: some View {
        List(cafes.indices, id: \.self) { index in
            if (0...12).contains(index){
                NavigationLink(destination: {
                    VStack{
                        if cafes[index].title.contains("Week") {
                            sff2tabview(activeIndex: self.$activeIndex, activeTitle: self.$activeTitle, activeWeek: self.$activeWeek)
                                .onAppear{
                                    print(cafes[index].title, cafes[index].text)
                                    self.activeTitle = cafes[index].title
                                    UIImpactFeedbackGenerator(style: .medium)
                                    .impactOccurred()
                            }
                        }
                            
                            //I can use an else if for additional programs
                        else {
                            foo()
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
    }
}

//.onTapGesture {
//
//}

struct SFF2_Previews: PreviewProvider {
    static var previews: some View {
        SFF2()
    }
}

struct weeksview: View {

    var cafe : Cafe

    var body: some View {
        VStack(alignment: .leading) {
            Text(cafe.title)
                .font(.headline)
            Text(cafe.text)
                .font(.subheadline)
        }
    }
}


struct Cafe: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var week: Int
    var show: Bool
}

let cafes = [
    Cafe(title:"Week 1", text:"SFF v2.0", image:"SoFuckingFit2.0_(week_1)", week: 2, show: false),
    Cafe(title:"Week 2", text:"SFF v2.0", image: "SoFuckingFit2.0_(week2)", week: 3, show: false),
    Cafe(title:"Week 3", text:"SFF v2.0", image:"SoFuckingFit2.0_(week3)", week: 4, show: false),
    Cafe(title:"Week 4", text:"SFF v2.0", image:"SoFuckingFit2.0_(week4)", week: 5, show: false),
    Cafe(title:"Week 5", text:"SFF v2.0", image:"SoFuckingFit2.0_(week5)", week: 6, show: false),
    Cafe(title:"Week 6", text:"SFF v2.0", image:"SoFuckingFit2.0_(week6)", week: 7, show: false),
    Cafe(title:"Week 7", text:"SFF v2.0", image: "SoFuckingFit2.0_(week7)", week: 8, show: false),
    Cafe(title:"Week 8", text:"SFF v2.0", image:"SoFuckingFit2.0_(week8)", week: 9, show: false),
    Cafe(title:"Week 9", text:"SFF v2.0", image:"SoFuckingFit2.0_(week9)", week: 10, show: false),
    Cafe(title:"Week 10", text:"SFF v2.0", image:"SoFuckingFit2.0_(week10)", week: 11, show: false),
    Cafe(title:"Week 11", text:"SFF v2.0", image:"SoFuckingFit2.0_(week11)", week: 12, show: false),
    Cafe(title:"Week 12", text:"Test Week", image:"SoFuckingFit2.0_(week12)", week: 13, show: false)
]
