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
        @State var ssf2 = sff2liftsData //out data array
        @State var active  = false
        @State var hidenavbar = false
        @State var activeIndex = -1

        var body: some View {
            ZStack {
                Color.black.opacity(active ? 0.5 : 0)
                    .animation(.linear)
    //                .edgesIgnoringSafeArea(.all)
                    ScrollView {
                        VStack (spacing: 30) {
                            ForEach(ssf2.indices, id: \.self) { index in
                                GeometryReader { geometry in
                                    //we need to get the state from Courseview component and will need to change the frame of geometry reader
                                    Ssf2View(
                                        show: self.$ssf2[index].show,
                                        ssf2 : self.ssf2[index],
                                        active: self.$active,
                                        index: index,
                                        activeIndex: self.$activeIndex
                                    )//we had self because we're in the geometry reader. We target an index in the array courses
                                        .offset(y: self.ssf2[index].show ? -geometry.frame(in: .global).minY : 0).opacity(self.activeIndex != index && self.active ? 0 : 1) //miny is the position top of card 2 to top.  Is card2 in full screen, if yes than expand to top using minY position to offset it
                                        .scaleEffect(self.activeIndex != index && self.active ? 0.5 : 1)
                                        .offset(x: self.activeIndex != index && self.active ? screen.width : 0)
                                }
                                    //need to set the fram for geometry reader
                                    .frame(height: 280)
                                    .frame(maxWidth: self.ssf2[index].show ? .infinity : screen.width - 0.1) //need self because we're in a for each
                                    .zIndex(self.ssf2[index].show ? 1 : 0)

                            }
                        }
                        .frame(width: screen.width)
                        .animation(.spring(response: 0.7, dampingFraction: 0.9, blendDuration: 0))
                    }
                        //            .statusBar(hidden: active ? true : false) //we hide the statusbar
                        .animation(.linear)
            }
            .navigationBarTitle("So Fit v2.0")
            .navigationBarHidden(active ? true : false)
        }
    }

struct SFF2_Previews: PreviewProvider {
    static var previews: some View {
        SFF2()
    }
}

struct Ssf2View: View {
    //    @State var show = false
    @Binding var show: Bool
    var ssf2: sff2Lift
    @Binding var active: Bool // when show is activated so will active
    var index: Int
    @Binding var activeIndex: Int
    @State var activeView = CGSize.zero

    var body: some View {
        ZStack(alignment: .top) {
            //lift content
            VStack(alignment: .leading, spacing: 30.0) {
                Image(ssf2.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 800, alignment: .top)

            }
            .padding(18)
                // This sets the card and text to the middle of the screen
                .frame(maxWidth: show ? .infinity : screen.width - 0.1, maxHeight: show ? .infinity : 280, alignment: .top)
                .offset(y: show ? 60 : 0) //offset text of 60 when card is expanded
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                .opacity(show ? 1 : 0)
            VStack {
                HStack (alignment: .top) {
                    VStack (alignment: .leading, spacing: 8.0) {
                        Text(show ? "" : ssf2.title)
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color("background1"))
                        Text(show ? "" : ssf2.text)
                            .foregroundColor(Color.white.opacity(0.7))
                    }
                    Spacer()
                    ZStack {
                        Image("Weida")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 45, height: 45)
                            .clipShape(Circle())
                            .opacity(show ? 0 : 1)
                        VStack{
                            Image(systemName: "xmark")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.black)
                        }
                        .frame(width: 36, height: 36)
                        .background(Color.white)
                        .clipShape(Circle())
                        .opacity(show ? 1 : 0)
                    }
                }
                Spacer()
                if show == false {
                    Image(ssf2.image)
                        .resizable()
                        .cornerRadius(15)
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 140, alignment: .top)
                }

            }
                .padding(show ? 30 : 20) //on show will give us a padding of 30 otherwise 20
                //                .padding(.top, show ? 30 : 0)
                //the onTapGesture will will give us an animation of expanding the card
                .frame(maxWidth: show ? .infinity : screen.width - 0.1, maxHeight: show ? 140 : 280 ) //gives us 30 spacing on each side and allows to see text
                .background(show ? Color("card6").opacity(0) : Color("card6") )
                .clipShape(RoundedRectangle(cornerRadius: show ? 10 : 15, style: .continuous))
                .shadow(color: Color("card6").opacity(0.4), radius: 20, x: 0, y: 20)

                .onTapGesture {
                    self.show.toggle()
                    self.active.toggle()
                    UIImpactFeedbackGenerator(style: .medium)
                        .impactOccurred()
                    if self.show {
                        self.activeIndex = self.index
                    } else
                    {
                        self.activeIndex = -1
                    }

            }
            Spacer()
        }
        .frame(height: show ? screen.height: 280)
            .scaleEffect(1 - self.activeView.height / 1000) //height is when we drag up and down.  Every pixel = 1
            .rotation3DEffect(Angle(degrees: Double(self.activeView.height / 10)), axis: (x: 0, y: 10.0, z: 0))
            .hueRotation(Angle(degrees: Double(self.activeView.height)))
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))

            .gesture(
                show ?
                    DragGesture().onChanged { value in
                        guard value.translation.height < 300 else { return }
                        guard value.translation.height > 0 else { return }

                        self.activeView = value.translation
                    }
                    .onEnded { value in
                        if self.activeView.height > 50 {
                            self.show = false
                            self.active = false
                            self.activeIndex = -1
                        }
                        self.activeView = .zero
                    }
                    : nil
        )
//            .edgesIgnoringSafeArea(.all)
    }
}

struct sff2Lift: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var show: Bool
}

let sff2liftsData = [
    sff2Lift(title:"Intro", text:"SFF v2.0", image:"SoFuckingFit2.0_(intro)", show: false),
    sff2Lift(title:"Week1", text:"SFF v2.0", image:"SoFuckingFit2.0_(week_1)", show: false),
    sff2Lift(title:"Week2", text:"SFF v2.0", image: "SoFuckingFit2.0_(week2)", show: false),
    sff2Lift(title:"Week3", text:"SFF v2.0", image:"SoFuckingFit2.0_(week3)", show: false),
    sff2Lift(title:"Week4", text:"SFF v2.0", image:"SoFuckingFit2.0_(week4)", show: false),
    sff2Lift(title:"Week5", text:"SFF v2.0", image:"SoFuckingFit2.0_(week5)", show: false),
    sff2Lift(title:"Week6", text:"SFF v2.0", image:"SoFuckingFit2.0_(week6)", show: false),
    sff2Lift(title:"Week7", text:"SFF v2.0", image: "SoFuckingFit2.0_(week7)", show: false),
    sff2Lift(title:"Week8", text:"SFF v2.0", image:"SoFuckingFit2.0_(week8)", show: false),
    sff2Lift(title:"Week9", text:"SFF v2.0", image:"SoFuckingFit2.0_(week9)", show: false),
    sff2Lift(title:"Week10", text:"SFF v2.0", image:"SoFuckingFit2.0_(week10)", show: false),
    sff2Lift(title:"Week11", text:"SFF v2.0", image:"SoFuckingFit2.0_(week11)", show: false),
    sff2Lift(title:"Test Week", text:"SFF v2.0", image:"SoFuckingFit2.0_(week12)", show: false)
]
