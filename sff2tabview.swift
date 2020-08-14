//
//  sff2tabview.swift
//  Weida
//
//  Created by robevans on 8/7/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct sff2tabview: View {
    @State private var currentTab = 0
    @Binding var activeIndex: Int
    @Binding var activeTitle: String
    @Binding var activeWeek: Int

    var body: some View {
        VStack {
            VStack {
                Text(activeTitle)
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
                .padding(.vertical, 30.0)
                Divider()
                    .background(Color("background2"))
                    .frame(width: 400)

                Spacer()
                //Day 1 Starts here
                if currentTab == 0 {

                    if activeTitle == "Week 1" {
                        //need to figure out how to add line seperators 
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[0].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[0].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[0].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[0].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }else if activeTitle == "Week 2" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[5].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[5].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[5].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[5].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 3" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[10].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[10].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[10].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[10].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 4" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[15].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[15].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[15].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[15].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 5" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[20].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[20].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[20].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[20].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 6" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[25].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[25].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[25].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[25].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 7" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[30].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[30].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[30].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[30].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 8" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[35].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[35].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[35].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[35].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 9" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[40].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[40].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[40].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[40].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 10" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[45].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[45].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[45].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[45].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 11" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[50].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[50].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[50].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[50].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }  else if activeTitle == "Week 12" {
                        ScrollView{
                            Text("Warmup")
                                .font(.headline)
                                .padding(.vertical, 15.0)
                            Text(sffweeks[55].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .font(.headline)
                                .padding(.vertical, 15.0)
                            Text(sffweeks[55].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .font(.headline)
                                .padding(.vertical, 15.0)
                            Text(sffweeks[55].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .font(.headline)
                                .padding(.vertical, 15.0)
                            Text(sffweeks[55].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }

                }
                //Day 2 Starts here
                if currentTab == 1 {

                    if activeTitle == "Week 1" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[1].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[1].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[1].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[1].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }else if activeTitle == "Week 2" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[6].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[6].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[6].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[6].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 3" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[11].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[11].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[11].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[11].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 4" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[16].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[16].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[16].accessory)
                                .modifier(ExerciseLabel())
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[16].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 5" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[21].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[21].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[21].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[21].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 6" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[26].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[26].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[26].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[26].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 7" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[31].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[31].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[31].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[31].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 8" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[36].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[36].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[36].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[36].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 9" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[41].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[41].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[41].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[41].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 10" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[46].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[46].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[46].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[46].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 11" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[51].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[51].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[51].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[51].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }  else if activeTitle == "Week 12" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[56].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[56].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[56].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[56].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                }
                //Day 3 Starts here
                if currentTab == 2 {
                    if activeTitle == "Week 1" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[2].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[2].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[2].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[2].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }else if activeTitle == "Week 2" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[7].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[7].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[7].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[7].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 3" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[12].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[12].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[12].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[12].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 4" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[17].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[17].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[17].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[17].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 5" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[22].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[22].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[22].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[22].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 6" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[27].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[27].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[27].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[27].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 7" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[32].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[32].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[32].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[32].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 8" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[37].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[37].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[37].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[37].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 9" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[42].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[42].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[42].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[42].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 10" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[47].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[47].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[47].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[47].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 11" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[52].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[52].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[52].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[52].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }  else if activeTitle == "Week 12" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[57].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[57].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[57].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[57].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                }
                //Day 4 Starts here
                if currentTab == 3 {
                    if activeTitle == "Week 1" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[3].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[3].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[3].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[3].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }else if activeTitle == "Week 2" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[8].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[8].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[8].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[8].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 3" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[13].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[13].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[13].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[13].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 4" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[18].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[18].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[18].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[18].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 5" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[23].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[23].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[23].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[23].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 6" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[28].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[28].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[28].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[28].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 7" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[33].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[33].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[33].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[33].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 8" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[38].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[38].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[38].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[38].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 9" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[43].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[43].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[43].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[43].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 10" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[48].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[48].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[48].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[48].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 11" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[53].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[53].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[53].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[53].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }  else if activeTitle == "Week 12" {
                        ScrollView{
                            Text("Warmup")
                                .font(.headline)
                                .padding(.vertical, 15.0)
                            Text(sffweeks[58].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .font(.headline)
                                .padding(.vertical, 15.0)
                            Text(sffweeks[58].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .font(.headline)
                                .padding(.vertical, 15.0)
                            Text(sffweeks[58].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .font(.headline)
                                .padding(.vertical, 15.0)
                            Text(sffweeks[58].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                }
                //Day 5 Starts here
                if currentTab == 4 {
                    if activeTitle == "Week 1" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[4].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[4].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[4].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[4].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }else if activeTitle == "Week 2" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[9].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[9].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[9].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[9].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 3" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[14].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[14].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[14].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[14].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 4" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[19].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[19].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[19].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[19].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 5" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[24].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[24].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[24].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[24].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 6" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[29].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[29].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[29].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[29].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 7" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[34].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[34].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[34].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[34].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 8" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[39].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[39].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[39].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[39].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 9" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[44].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[44].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[44].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[44].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 10" {

                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[49].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[49].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[49].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[49].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                    else if activeTitle == "Week 11" {
                        ScrollView{
                            Text("Warmup")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[54].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[54].strength)
                                .modifier(ExerciseLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[54].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[54].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }  else if activeTitle == "Week 12" {
                        ScrollView{
                            Text("Warmup")
                                 .modifier(WorkoutLabel())
                            Text(sffweeks[59].warmup)
                                .modifier(ExerciseLabel())
                            Text("Strength")
                                .modifier(WorkoutLabel())
                            .modifier(ExerciseLabel())
                                .modifier(WorkoutLabel())
                            Text("Accessory")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[59].accessory)
                                .modifier(ExerciseLabel())
                            Text("Conditioning")
                                .modifier(WorkoutLabel())
                            Text(sffweeks[59].conditioning)
                                .modifier(ExerciseLabel())
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct sff2tabview_Previews: PreviewProvider {
    static var previews: some View {
        sff2tabview(activeIndex: .constant(-1), activeTitle: .constant("Week 1"), activeWeek: .constant(-1)).environment(\.colorScheme, .dark)
//                sff2tabview(activeIndex: .constant(-1), activeTitle: .constant("Week 1"), activeWeek: .constant(-1))
        //        sff2tabview()
    }
}

struct SffWeek: Identifiable {
    var id = UUID()
    var weekday: String
    var program: String
    var show: Bool
    var warmup: String
    var strength: String
    var accessory: String
    var conditioning: String

}

let sffweeks = [
    SffWeek(weekday:"W1/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"1mile Run 3 Rounds 20 Kettlebell Swings (KBS) 10 KB Squats",
            strength:"Deadlifts 3 Sets of 5 Reps (3 x 5) at Each Percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 8 Good Mornings Hamstring Curls",
            conditioning:"14min AMRAP 10 Double KB Sumo Deadlifts 10 Weighted Sit Ups 10 Box Jumps/Bench Step Ups"
    ),

    SffWeek(weekday:"W1/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"200m Row 20 Push Ups",
            strength:"Bench Press, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 8 Weighted Push Ups Dips",
            conditioning:"5 Rounds For Time (RFT) 20 Burpees 14 Alt DB Snatches 8 Pull Ups"
    ),

    SffWeek(weekday:"W1/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"Back Squats, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 8 Goblet Squats @ 1⁄2 BW or As Heavy As Possible Leg Extensions",
            conditioning:"E3MOM (every 3min on the minute) 1:00 Bike 2:00 Accumulate as many Jumping/ Reverse Lunges as possible Continue, without rest until you have accumulated 100 jumping lunges on EACH leg."
    ),

    SffWeek(weekday:"W1/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds .25m Run 10 Light Double KB/DB Press",
            strength:" Strict Press, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 8 Arnold Press DB Front and Lateral Raises",
            conditioning:"21-18-15-12 American KBS Calorie Bike Double KB Push Press"
    ),

    SffWeek(weekday:"W1/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"1k row",
            strength:"Bent Over DB Rows, 3 x 8 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) SUPERSET 5 Pull Ups, Immediately after EACH set of rows.",
            accessory:"3 x 8 DB Pull Overs Bent Over Rear Delt Flyes DB Curls",
            conditioning:"1k Row 50 Barbell Thrusters 30 Strict Pull Ups"
    ),
    SffWeek(weekday:"W2/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"10min Cardio of Choice (Run, Walk, Row, Bike, Stairs, Elliptical)",
            strength:"Deadlift, 3 x 3 @ each percentage ,70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 10 Single Leg KB Deadlifts Hamstring Curls BB Glute Bridges",
            conditioning:"21-15-9 Deadlifts (approximately 40% 1RM) Bar Facing Burpees"
    ),

    SffWeek(weekday:"W2/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"5 Rounds 1min Sprint Rest :30 12 Light KB Push Press 12 Push Ups – Easy, use bench if needed",
            strength:"Bench Press, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 10 Incline DB Bench Press Decline Bench Flat DB Flyes",
            conditioning:"17min AMRAP 30 Burpees 20 Calorie Row (1min Run) 10 Dips -rest 1:00-"
    ),

    SffWeek(weekday:"W2/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 20 Calorie Row 20 Body Weight Squats 20 KBS",
            strength:"Back Squat, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% doAs Many Reps As Possible [AMRAP])",
            accessory:"3 x 10 Front Squats Leg Extensions",
            conditioning:"4 Rounds 20 Pistols/Single Leg Squats to Bench 20 American KBS 20 Hand Release Push Push Ups"
    ),

    SffWeek(weekday:"W2/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds .5m Run 10 BB Presses",
            strength:"Strict Press, 3 x 3 @ at each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 10 KB Push Press SS Lateral DB Raises Arnold Press",
            conditioning:"20min AMRAP 400m Run 25 American KBS 15 DB Thrusters 10 Pull Ups"
    ),

    SffWeek(weekday:"W2/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds 20 Calorie Row 10 Burpees Over the Rower",
            strength:"Bent Over DB Rows, 3 x 5 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP]) SUPERSET 6 Pull Ups, Immediately after EACH set of rows.",
            accessory:"3 x 10 Lat Pull Downs Seated Cable Rows Rear Cable Flyes",
            conditioning:"9min AMRAP 20 Alt DB Snatches 20 Calorie Bike 20 Double Unders/Single Unders"
    ),

    SffWeek(weekday:"W3/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"10min Bike",
            strength:"Deadlift, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"4x 8 Single Leg KB Deadlifts Single Leg Hamstring Curls x20 KBS",
            conditioning:"3 Rounds 20 Weighted Reverse Lunges 20 KBS 20 Box Jumps/Bench Step Ups 20 Hand Release Push Ups"
    ),

    SffWeek(weekday:"W3/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"5 Rounds .25m Sprint 10 Hand Release Push Ups",
            strength:"Bench Press, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 8 Incline DB Press SS Incline Flyes Decline Bench SS Decline DB Flyes",
            conditioning:"13min AMRAP 20 Alt Pistols/Single Leg Squats to Bench 16 Burpee Box Jumps/Step Ups 12 Dips"
    ),

    SffWeek(weekday:"W3/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"10min Row/Light Jog",
            strength:"Back Squat, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 8 Goblet Squat Jumps Lateral Lunges Weighted Reverse Lunges",
            conditioning:"3 Rounds 100 Single Unders 50 Body Weight Squats 30 Hand Release Push Ups 10 Back Squats at 50%"
    ),

    SffWeek(weekday:"W3/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"5min Row",
            strength:"Strict Press, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"4x 8 Arnold Press DB Push Press DB Lateral Raises",
            conditioning:"4 Rounds 400m Run 20 DB Thrusters"
    ),

    SffWeek(weekday:"W3/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"Bent Over DB Rows, 3 x 3 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP]) SUPERSET 7 Pull Ups, Immediately after EACH set of rows.",
            accessory:"4 x 8 Bench Supported Single Arm Row Single Arm Lat Pull Down Ez-Bar Curl (sub BB for Ez-Bar)",
            conditioning:"5 Rounds 26 Sit Ups 22 Alt DB Snatches 18 KBS 14 Pull Ups 10 HSPU/Box HSPU -Rest 2:00 per round-"
    ),

    SffWeek(weekday:"W4/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"Cycle #2, add 5# to your upper body maxes and 10# to your lower body maxes for the percentage calculations. Warm Up Of Choice, 10min",
            strength:"Deadlift, 3 x 5 @ each percentage 65%, 75%, 85% (last two sets at 85% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 10 Double KB Sumo Deadlifts Good Mornings Hamstring Curls",
            conditioning:"21min AMRAP 40 KBS 30 Burpees 20 Box Jumps 10 DB Thrusters"
    ),

    SffWeek(weekday:"W4/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 10 Inch Worms w/Push Ups 10 Push Ups 10 DB Lateral Raises 10 DB Presses",
            strength:"Bench Press, 3 x 5 @ each percentage 65%, 75%, 85% (last two sets at 85% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 10 Standing Straight Arm Lat Pull Down Incline DB Bench Cable Rope Triceps Extensions",
            conditioning:"E4MOM x 20min 18 Alt DB Snatches 18 Hand Release Push Ups 18 Goblet Squats"
    ),

    SffWeek(weekday:"W4/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"  Back Squat, 3 x 5 @ each percentage 65%, 75%, 85% (last two sets at 85% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 10 Front Squats Weighted Pistol/Single Leg Squat to Bench Leg Extensions",
            conditioning:"11min AMRAP 200m Row/1min Run 12 ManMakers"
    ),

    SffWeek(weekday:"W4/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"500m Row",
            strength:"Strict Press, 3 x 5 @ each percentage 65%, 75%, 85% (last two sets at 85% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 10 Cable Face Pulls DB Shoulder Press DB Front Raises SS DB Side Raises",
            conditioning:"13min AMRAP 30 Double/60 Single Unders 20 Box Jumps 10 Double KB Push Press"
    ),

    SffWeek(weekday:"W4/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"Bench Supported Single Arm DB Row, 3 x 8 @ each percentage 65%, 75%, 85% (last two sets at 85% do As Many Reps As Possible [AMRAP]) Superset 6 Pull Ups, Immediately following each set",
            accessory:"4 x 10 Bent Over Rear Delt Flyes DB Pull Overs Seated Machine Row – Wide Grip",
            conditioning:"1k Row 30 BB Thrusters 15 Pull Ups 750m Row 20 BB Thrusters 10 Pull Ups 500m Row 10 BB Thrusters 5 Pull Ups"
    ),

    SffWeek(weekday:"W5/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"10min 1:00 Jog :30 KB Deadlifts :30 rest",
            strength:"Deadlift, 3 x 3 @ each percentage, 70%, 80%, 90% (last two sets at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 10 Medicine Ball Single Leg Hamstring Curls Good Mornings Single Leg KB Deadlifts",
            conditioning:"21-18-15-12-9-6-3 Double KB Sumo Deadlifts Burpees Over KB"
    ),

    SffWeek(weekday:"W5/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 1:00 Bike 20 Push Ups 10 Sit Ups",
            strength:"Bench Press, 3 x 3 @ each percentage, 70%, 80%, 90% (last two sets at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 10 Narrow Grip Bench Press Incline DB Press Decline DB Flyes",
            conditioning:"  13min AMRAP 20 KBS 15 Sit Ups SffWeek(weighted if possible) 10 Hand Release Push Ups 5 Dips"
    ),

    SffWeek(weekday:"W5/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"Back Squat, 3 x 3 @ each percentage, 70%, 80%, 90% (last two sets at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 10 Weighted Lateral Lunges Front Squats Single Leg, Leg Extensions",
            conditioning:"6 Rounds Run 400m 10 Back Squats at 40%, 45%, 50%, 55%, 60%, 65% (so round 1: 400m, 10 Back Squats 40%, round 2: 400m, 10 Back Squats 45%, round 3: 400m, 10 Back Squats 50%)"
    ),

    SffWeek(weekday:"W5/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 10 Inch Worms 10 Hand Release Push Ups 10 (increasing weight) KB Push Press",
            strength:"Strict Press, 3 x 3 @ each percentage, 70%, 80%, 90% (last two sets at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 10 Arnold Press Cable Face Pulls DB Front Raises SS DB Lateral Raises",
            conditioning:"3 Rounds 12 Hand Stand Push Ups/Box Hand Stand Push Ups 12 Alt DB Snatches 12 Burpee Box Jump Overs/Step Overs -Rest 2:00 after each round-"
    ),

    SffWeek(weekday:"W5/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"2k Row",
            strength:"Bench Supported Single Arm DB Row, 3 x 5 @ each percentage, 70%, 80%, 90% (last two sets at 90% do As Many Reps As Possible [AMRAP]) Superset 7 Pull Ups, Immediately following each set",
            accessory:"4 x 10 Lat Pull Down – Narrow Seated Cable Row – Narrow",
            conditioning:"E2MOM x 14min 7 Pull Ups 7 Barbell Thrusters 7 American KBS"
    ),

    SffWeek(weekday:"W6/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds 400m Run 20 KB Deadlifts 20 KB Swings",
            strength:"Deadlift, 3 x 1 @ each percentage, 75%, 85%, 95% (last two sets at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 12 Single Leg Hamstring Curls Sumo Deadlifts SS Banded Good Mornings Weighted Calf Raises",
            conditioning:"7 Rounds 50’ Farmers Carry 10 Double DB Clean and Press -rest :45 after each round-"
    ),

    SffWeek(weekday:"W6/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds 10 Calorie Row 10 Inch Worms 10 Push Ups :30 High Plank (push up hold)",
            strength:"Bench Press, 3 x 1 @ each percentage, 75%, 85%, 95% (last two sets at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 12 Flat DB Bench Press Incline DB Flyes Decline BB Bench",
            conditioning:"15-12-9-6-3 Bar Facing Burpees Push Press Dips"
    ),

    SffWeek(weekday:"W6/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds 200m Row 20 Squats 20 KBS",
            strength:"Back Squat, 3 x 1 @ each percentage, 75%, 85%, 95% (last two sets at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 12 Leg Extensions SS 1⁄2 Body Weight Goblet Squats Lateral Lunges/Leg",
            conditioning:"20min AMRAP 400m Run 20 Weighted Box Step Ups 10 ManMakers"
    ),

    SffWeek(weekday:"W6/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"10min Cardio of Choice",
            strength:"Strict Press, 3 x 1 @ each percentage, 75%, 85%, 95% (last two sets at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 12 Upright Double KB Row Arnold Press DB Lateral Raises",
            conditioning:"4 Rounds 15 KB Sumo Deadlifts 10 KB Push Presses 15 Hand Release Push Ups"
    ),

    SffWeek(weekday:"W6/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"10min Row/Bike",
            strength:"Bench Supported Single Arm DB Row, 3 x 3 @ each percentage, 70%, 80%, 90% (last two sets at 90% do As Many Reps As Possible [AMRAP]) Superset 8 Pull Ups, Immediately following each set",
            accessory:"4 x 12 Rear Delt Flyes Shrugs SS Lat Pull Down DB Pull Over",
            conditioning:"8 Rounds 8 Alt DB Snatches 8 Strict Pull Ups 8 Burpees -rest :30 after each round-"
    ),

    SffWeek(weekday:"W7/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"Begins a new cycle, add 10# to your upper body maxes and 20# to your lower body maxes from the BEGINNING of the program, not last cycle. This cycle will include a second strength piece and increased reps. In the second strength portion, if you do not know a max to base it off, go by how difficult the weight feels. 10min Bike/Fast Walk",
            strength:"Deadlift, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Sumo Deadlift, 3 x 5 @ each percentage 65%, 75%, 85%",
            accessory: "5 x 10 Single Leg KB Deadlifts Single Leg Hamstring Curls Banded Good Mornings x 30",
            conditioning:"6 Rounds 400m Run 25 KBS 10 Pull Ups"
    ),

    SffWeek(weekday:"W7/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds 10 Hand Release Push Ups 10 Light DB Push Press",
            strength:"Bench, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Incline DB Bench, 3 x 5 @ each percentage 65%, 75%, 85%",
            accessory:"5 x 10 Flat DB Bench Press Incline DB Flyes Decline BB Bench",
            conditioning:"21-15-9 Deadlifts – moderate Dips Hand Release Push Ups"
    ),

    SffWeek(weekday:"W7/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"Back Squat, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Front Squat, 3 x 5 @ each percentage 65%, 75%, 85%",
            accessory:"5 x 10 Leg Extensions 1⁄2 Body Weight Goblet Squats",
            conditioning:"Accumulate 100 Jumping Lunges Per Leg, EMOM complete 3 Double KB Thrusters"
    ),

    SffWeek(weekday:"W7/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 500m Row 10 BB Press",
            strength:"Strick Press, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Push Press, 3 x 5 @ each percentage 65%, 75%, 85%",
            accessory:"5 x 10 Double KB Upright Row Cable Face Pulls DB Side Raises",
            conditioning:"E5MOM x 25min 10 DB Clean and Press 10 Burpee Box Jump Overs/Bench Step Overs"
    ),

    SffWeek(weekday:"W7/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"Bent Over Barbell Row, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Superset Complete 7 pull ups immediate after each set.",
            accessory:"5 x 10 Bench Supported DB Row Lat Pull Down Rear Delt Flyes",
            conditioning:"15-12-9-12-15 Strict Pull Ups Light KB Thrusters"
    ),

    SffWeek(weekday:"W8/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"",
            strength:"Deadlift, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP]) Sumo Deadlift, 3 x 3 @ each percentage, 70%, 80%, 90%",
            accessory:"5 x 12 Single Leg Hamstring Curls SS Both Legs (12 reps each leg, then 12 reps both) Banded Good Mornings x 30",
            conditioning:"3 Rounds 21 Double KB Sumo Deadlifts 15 Hand Release Push Ups 9 ManMakers"
    ),

    SffWeek(weekday:"W8/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"5 Rounds 200m Row 10 Push Ups 10 BB Press",
            strength:"Bench, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP]) Incline DB Bench, 3 x 3 @ each percentage, 70%, 80%, 90%",
            accessory:"5 x 12 Incline DB Alt Presses Decline Bench Cable Flyes, 2 High, 1 Medium, 2 Low",
            conditioning:"15min AMRAP  30 Double/Single Unders 20 Alt DB Snatches 10 Dips"
    ),

    SffWeek(weekday:"W8/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 10 Calorie Row 15 KBS 20 Body Weight Squats",
            strength:"Back Squat, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP]) Front Squat, 3 x 3 @ each percentage, 70%, 80%, 90%",
            accessory:"5 x 12 Double KB Goblet Squats Lateral Lunges Leg Extensions",
            conditioning:"21-15-9 Calorie Assault Bike KB Thrusters Pistols/Single Leg Squats to Bench"
    ),

    SffWeek(weekday:"W8/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"10min Jog",
            strength:"Strict Press, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP]) Push Press, 3 x 3 @ each percentage, 70%, 80%, 90%",
            accessory:"5 x 12 Arnold Press Cable Face Pulls",
            conditioning:"11min AMRAP 7 Burpees 7 Box Jumps 7 American KBS"
    ),

    SffWeek(weekday:"W8/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"Bent Over Barbell Row 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP]) Superset Complete 8 Pull Ups immediately after each set.",
            accessory:"5 x 12 DB Pull Overs Lat Pull Down",
            conditioning:"5 Rounds 200m Row 10 DB Clean and Press"
    ),

    SffWeek(weekday:"W9/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row 50 KBS",
            strength:"Deadlift, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP]) Sumo Deadlifts, 3 x 1 @ each percentage, 75%, 85%, 95%",
            accessory:"3 x 12 Single Leg KB Deadlifts Single Leg Machine Curls x30 Banded Good Mornings",
            conditioning:"15-12-9-6-3 Devils Press (light, maybe 30#/20#) Box Jump Overs (or tuck jumps x2)"
    ),

    SffWeek(weekday:"W9/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 10 Inch Worms 10 Hand Release Push Ups 10 Bench Dips",
            strength:"Bench Press, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP]) Incline DB Bench Press, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 12 Cable Flyes at each: High, Medium, Low Narrow Grip Bench Press Decline DB Flyes",
            conditioning:"3 Rounds 20 KB Deadlfits 16 Ring Dips/Bench Dips 12 Double KB Push Press"
    ),

    SffWeek(weekday:"W9/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"10min Cardio of Choice 50 Air Squats",
            strength:"Back Squat, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP]) Front Squat, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 12 Single Leg Squats to Bench, Per Leg Single Leg, Leg Extensions, Per Leg Lateral Lunges, Per Leg",
            conditioning:"17min AMRAP 50 Double Unders/100 Single Unders 50 Air Squats 30 KBS"
    ),

    SffWeek(weekday:"W9/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"EMOM x 12 Odd: 8 Burpees Even: 10 LIGHT DB Press",
            strength:"Strict Press, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP]) Push Press, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP])",
            accessory:"3 x 12 Arnold Press DB Front Raises SS Side Raises Cable Face Pulls",
            conditioning:"21-15-9 DB Clean and Press Lateral Burpees Over Dumbbells"
    ),

    SffWeek(weekday:"W9/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row",
            strength:"Barbell Row, 3 x 1 @ each percentage, 75%, 85%, 95% (last set at 95% do As Many Reps As Possible [AMRAP]) Superset Complete 9 Pull Ups immediately after each set.",
            accessory:"3 x 12 Double KB Bent Over Row Lat Pull Down DB Curls",
            conditioning:"  4 Rounds 400m Run 21 American KBS 15 Strict Pull Ups"
    ),

    SffWeek(weekday:"W10/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"Cycle 4, add (to your initial 90%) 15# for upper body maxes and 30# for lower body maxes. Base calculations off that. So if your 90% at the start of the program was 180# for bench, it is now 195#/Deadlift was 300#, it is now 330#. There will be a retest of maxes in week 12, if you truly want to test these, you’ll need to eat more that week and not do additional work outside of what is written here. 3 Rounds 400m Run/Row 20 KBS",
            strength:"Deadlift, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Sumo Deadlift, 3 x 10 @ 60%",
            accessory:"3 x 15 Machine Hamstring Curls SS Single Leg KB Deadlifts Single Leg Med Ball Hamstring Curls",
            conditioning:"30min AMRAP 40 Burpees 40 KBS 40 Jumping Lunges/Reverse Lunges PER LEG"
    ),

    SffWeek(weekday:"W10/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 200m Row/Run 10 Hand Release Push Ups 10 Light DB Presses",
            strength:"Bench Press, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) DB Flat Bench Press, 3 x 10 @ 60%",
            accessory:"3 x 15 DB Incline Flyes SS Incline DB Press Decline BB Bench Rope Triceps Push Downs",
            conditioning:"3 Rounds 20 Hand Stand Shoulder Taps/Plank Shoulder Taps 20 Burpees 20 Calorie Row/1min Run -1min Rest- Each round should be a sprint"
    ),

    SffWeek(weekday:"W10/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds 500m Row/400m Run 20 Air Squats",
            strength:"Back Squat, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Goblet Squats, as heavy as possible for 3 x 10",
            accessory:"3 x 15 Jumping Goblet Squats Curtsey Lunges Lateral Lunges",
            conditioning:"Accumulate 100 Jumping Lunges Per Leg EMOM complete 3 KB Thrusters"
    ),

    SffWeek(weekday:"W10/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds 10 Inch Worms 10 Hand Release Push Ups 10 Light DB Press",
            strength:"Strict Press, 3 x 5 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Push Press, 3 x 10 @ 60%",
            accessory:"3 x 15 Arnold Press SS Seated Lateral Raises Cable Face Pulls Shrugs (KB/DB/BB)",
            conditioning:"2 Rounds 40 Single DB Clean and Press (alt arms ever 5 reps) 30 Burpees 20 Sit Ups SffWeek(with DB) 10 Deadlifts – moderate -rest 3:00 between rounds-"
    ),

    SffWeek(weekday:"W10/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row/10min Elliptical",
            strength:"Bent Over Row, 3 x 8 @ each percentage 65%, 75%, 85% (last set at 85% do As Many Reps As Possible [AMRAP]) Superset Complete 8 Pull Ups immediately after each set.",
            accessory:"3 x 15 DB Pull Overs Lat Pull Down Rear Delt Bent Over Flyes",
            conditioning:"E3MOM x 15min 10 Calorie Bike (Any bike that tracks calories) 10 Pull Ups – assisted if needed 10 DB Thrusters – light-moderate"
    ),

    SffWeek(weekday:"W11/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"We are going to remove the second strength piece to give the body a little rest, keep the work a little lighter – but NOT light. If you feel good one any day, 1-4, you can max out that day. If you take that risk this week, you will not max it next week.",
            strength:"Deadlift, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 12 Medicine Ball Single Leg Hamstring Curls BB Glute Bridges x30 Banded Good Mornings",
            conditioning:"21-15-9 Double KB Sumo Deadlift High Pulls Single KB Goblet Squats (use same KB) KB Sit Ups (use same KB)"
    ),

    SffWeek(weekday:"W11/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"4 Rounds 200m Row/2min Elliptical 15 Hand Release Push Ups",
            strength:"Bench Press, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 12 Incline DB Flyes Decline DB Bench Press 6 sets, 2 each: high, medium, low, cable flyes",
            conditioning:"4 Rounds 20 Alt DB Snatches 18 Dips – Ring/Box/Bench 16 Lateral Burpees Over Dumbbell"
    ),

    SffWeek(weekday:"W11/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row/10min Bike",
            strength:"Back Squat, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 12 Goblet Squat Jumps BB Glute Bridges Weighted Reverse Lunges",
            conditioning:"Accumulate 100 Box Step Ups PER Leg EMOM complete 7 KBS"
    ),

    SffWeek(weekday:"W11/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"20min Elliptical",
            strength:"Strict Press, 3 x 3 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP])",
            accessory:"4 x 12 KB Push Press DB Side Raises Cable Face Pulls",
            conditioning:"3 Rounds 30 Plank Shoulder Taps/Side 20 American KBS 10 Light DB Thrusters"
    ),

    SffWeek(weekday:"W11/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"nothing",
            strength:"Bent Over Row, 3 x 5 @ each percentage, 70%, 80%, 90% (last set at 90% do As Many Reps As Possible [AMRAP]) [AMRAP]) Superset Complete 9 Pull Ups immediately after each set.",
            accessory:"4 x 12 Single Arm Lat Pull Down Wide Grip Seated Cable Row DB Pull Overs",
            conditioning:"13min AMRAP 18 Cal Row/18 Pull Ups + 18 Squats 15 Bench Press - HEAVY 12 Moderate DB Snatches"
    ),

    SffWeek(weekday:"W12/D1",
            program:"SFF v2.0",
            show:false,
            warmup:"This is max week, you will do the maxes and a short conditioning workout. In a perfect world you PR everything, in order to do that your nutrition, training and sleep will have to have been on point. Let’s find /t. 5min Row/Bike 2 Rounds 10 KBS 10 KB Deadlifts",
            strength:"Max Deadlift",
            accessory:"",
            conditioning:"22-16-10 Alt DB Snatches Hand Release Push Ups Squats"
    ),

    SffWeek(weekday:"W12/D2",
            program:"SFF v2.0",
            show:false,
            warmup:"3 Rounds 10 Inch Worms 8 Hand Release Push Ups 6 Sit Ups",
            strength:"Max Bench Press",
            accessory:"",
            conditioning:"3 Rounds 15 Double KB Sumo Deadlifts 15 Bench Dips 15 Single KB Sit Ups"
    ),

    SffWeek(weekday:"W12/D3",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row/400m Run + 20 Squats 30 Air Squats",
            strength:"Max Squat",
            accessory:"",
            conditioning:"11min AMRAP 10 American KB Swings 10 Plank Shoulder Taps 10 Goblet Squat Jumps"
    ),

    SffWeek(weekday:"W12,/D4",
            program:"SFF v2.0",
            show:false,
            warmup:"10min Elliptical 3 x 10 Light DB Shoulder Press",
            strength:"Max Strict Press",
            accessory:"",
            conditioning:"5 Rounds 30 Squats 20 KB Thrusters 10 KB Push Press"
    ),

    SffWeek(weekday:"W12/D5",
            program:"SFF v2.0",
            show:false,
            warmup:"1k Row/15min Cardio",
            strength:"Find 1RM Set of Pull Ups",
            accessory:"",
            conditioning:"12-9-6-3 Devil’s Press Box Jump Overs Bench Dips"
    ),
]

