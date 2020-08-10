//
//  foo.swift
//  Weida
//
//  Created by robevans on 8/8/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct foo: View {
    @State private var currentTab = 0

    var body: some View {
        VStack {
            VStack {
                Text("Text")
                    .font(.title)
                Picker(selection: $currentTab, label: Text("")) {
                    //for now will use text, but should look for images
                    Text("D1").tag(0)
                    Text("D2").tag(1)
                    Text("D3").tag(2)
                    Text("D4").tag(3)
                    Text("D5").tag(4)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.top)

                Spacer()
                if currentTab == 0 {
                    VStack {
                        List(programs.indices, id: \.self) { index in
                            if programs[index].title.contains("Week 1") {
                                VStack {
                                    Text("test")
                                }
                            }

                        }
                    }
                }
                if currentTab == 1 {
                    Text(programs[1].text)
                }
                if currentTab == 2 {

                }
                if currentTab == 3 {

                }
                if currentTab == 4 {

                }
            }
        }
    }
}

struct foo_Previews: PreviewProvider {
    static var previews: some View {
        foo()
    }
}

struct FooProgram: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var week: Int
    var show: Bool
}

let programs = [
    FooProgram(title:"Intro", text:"SFF v2.0", week: 1, show: false),
    FooProgram(title:"Week 1", text:"SFF v2.0",week: 2, show: false),
    FooProgram(title:"Week 2", text:"SFF v2.0", week: 3, show: false),
    FooProgram(title:"Week 3", text:"SFF v2.0",  week: 4, show: false),
    FooProgram(title:"Week 4", text:"SFF v2.0",  week: 5, show: false),
    FooProgram(title:"Week 5", text:"SFF v2.0",  week: 6, show: false),
    FooProgram(title:"Week 6", text:"SFF v2.0",  week: 7, show: false),
    FooProgram(title:"Week 7", text:"SFF v2.0", week: 8, show: false),
    FooProgram(title:"Week 8", text:"SFF v2.0",  week: 9, show: false),
    FooProgram(title:"Week 9", text:"SFF v2.0",  week: 10, show: false),
    FooProgram(title:"Week 10", text:"SFF v2.0", week: 11, show: false),
    FooProgram(title:"Week 11", text:"SFF v2.0", week: 12, show: false),
    FooProgram(title:"Test Week", text:"SFF v2.0", week: 13, show: false)
]
