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
    @State var showFavoritesOnly = true


    //This is determine favorites
//    if !self.showFavoritesOnly  || cafes[index].isFavorite == false{
    
    var body: some View {
        VStack {
            //weeks is the object array where Week is the object in the array
            List(weeks, id: \.id) {weeks in
                        NavigationLink(destination: {
                            VStack{
                                    sff2tabview(activeIndex: self.$activeIndex, activeTitle: self.$activeTitle, activeWeek: self.$activeWeek)
                                        //haptic feedback
                                        .onAppear{
                                            print(weeks.title, weeks.text)
                                            self.activeTitle = weeks.title
                                            UIImpactFeedbackGenerator(style: .medium)
                                                .impactOccurred()
                                    }
                            }
                        }())
                        {
                            weeksview(week: weeks) //week is defined in weeksview as the var. weeks is the object array []
                        }
                        .padding(.vertical, 15.0)
            }
            .navigationBarTitle("So Fit 2.0")
            .navigationBarItems(trailing: Toggle(isOn: self.$showFavoritesOnly) {
                Text("Favorites")
            })

        }
    }
}


struct SFF2_Previews: PreviewProvider {
    static var previews: some View {
        SFF2()
    }
}

struct weeksview: View {
    
    var week : Week
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(week.title)
                    .font(.headline)
                Text(week.text)
                    .font(.subheadline)

            }
            Spacer()
            if week.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}


struct Week: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var week: Int
    var show: Bool
    var isFavorite: Bool
}

let weeks = [
    Week(title:"Week 1", text:"SFF v2.0", image:"SoFuckingFit2.0_(week_1)", week: 2, show: false ,isFavorite: false),
    Week(title:"Week 2", text:"SFF v2.0", image: "SoFuckingFit2.0_(week2)", week: 3, show: false, isFavorite: true),
    Week(title:"Week 3", text:"SFF v2.0", image:"SoFuckingFit2.0_(week3)", week: 4, show: false, isFavorite: true),
    Week(title:"Week 4", text:"SFF v2.0", image:"SoFuckingFit2.0_(week4)", week: 5, show: false, isFavorite: false),
    Week(title:"Week 5", text:"SFF v2.0", image:"SoFuckingFit2.0_(week5)", week: 6, show: false, isFavorite: false),
    Week(title:"Week 6", text:"SFF v2.0", image:"SoFuckingFit2.0_(week6)", week: 7, show: false, isFavorite: false),
    Week(title:"Week 7", text:"SFF v2.0", image: "SoFuckingFit2.0_(week7)", week: 8, show: false, isFavorite: false),
    Week(title:"Week 8", text:"SFF v2.0", image:"SoFuckingFit2.0_(week8)", week: 9, show: false, isFavorite: false),
    Week(title:"Week 9", text:"SFF v2.0", image:"SoFuckingFit2.0_(week9)", week: 10, show: false, isFavorite: false),
    Week(title:"Week 10", text:"SFF v2.0", image:"SoFuckingFit2.0_(week10)", week: 11, show: false, isFavorite: false),
    Week(title:"Week 11", text:"SFF v2.0", image:"SoFuckingFit2.0_(week11)", week: 12, show: false, isFavorite: false),
    Week(title:"Week 12", text:"Test Week", image:"SoFuckingFit2.0_(week12)", week: 13, show: false, isFavorite: false)
]
