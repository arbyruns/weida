//
//  FastEddies.swift
//  Weida
//
//  Created by robevans on 8/5/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct FastEddies: View {

    @State var viewStateTop = CGSize.zero //storing a value of CGSize with xy position with value 0
    @State var isDraggingTop = false
    @State var viewStateBottom = CGSize.zero
    @State var isDraggingBottom = false



    var body: some View {
        ZStack{
            Color("background3")
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            VStack {
                GeometryReader { geometry in
                    HStack {
                        Text("Fast Eddies")
                            .font(.system(size: geometry.size.width/10, weight: .bold))
                            .foregroundColor(Color("background1"))
                        Spacer()
                        Image("Weida")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 65, height: 65)
                            .clipShape(Circle())
                    }
                }
                .padding(.top, 10)
                    .frame(maxWidth: 375, maxHeight: 100) //375 (geometry.size.width/10) - 32(padding) = 343(screen size)
                    .padding(.horizontal, 16)
                    .offset(x: viewStateTop.width/15, y: viewStateTop.height/15)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .background(Color (#colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1))
                    .offset(x: viewStateTop.width/25, y: viewStateTop.height/25)
                        , alignment: .bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .scaleEffect(isDraggingTop ? 0.9 : 1)
                        .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
                        .rotation3DEffect(Angle(degrees: 7), axis: (x: viewStateTop.width, y: viewStateTop.height, z: 0))
                        .gesture(
                            DragGesture().onChanged { value in
                                self.viewStateTop = value.translation
                                self.isDraggingTop = true
                            }
                            .onEnded { value in
                                self.viewStateTop = .zero
                                self.isDraggingTop = false
                            }
                    )
                    .padding(.horizontal, 20)
                    .offset(y: -270)
                    .shadow(color: Color(isDraggingTop ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) : #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)), radius: 20, x: 20, y: 20)
//                Spacer()
            }



            VStack{
                Text("• 25 Situps \n• 25 fluter kicks - 4 count\n• 25 Situps\n• 25 Leg Raised\n• 25 Situps\n• 25 Holly Dolly's - 4 count\n• 25 Situps\n• 25 Crunches\n• 25 Situps\n• 25 Crazy Ivan's\n• 25 Situps\n• 25 Bicycleers - 4 count")
                    .font(.system(size: 20, weight: .medium))
                    .padding(.bottom, 20)
                    .foregroundColor(Color("background1"))
                Text("10 Minutes is ok\n 8 minutes is good")
                    .font(.caption)
                    .foregroundColor(Color("background1"))
            }
            .multilineTextAlignment(.center)
            .padding(.bottom, 10)
            .frame(height: 375)
            .frame(maxWidth: .infinity)
            .background(Color (#colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1))
            .offset(x: viewStateBottom.width/25, y: viewStateBottom.height/25)
                , alignment: .bottom)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .scaleEffect(isDraggingBottom ? 0.9 : 1)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
                .rotation3DEffect(Angle(degrees: 7), axis: (x: viewStateBottom.width, y: viewStateBottom.height, z: 0))
                .gesture(
                    DragGesture().onChanged { value in
                        self.viewStateBottom = value.translation
                        self.isDraggingBottom = true
                    }
                    .onEnded { value in
                        self.viewStateBottom = .zero
                        self.isDraggingBottom = false
                    }
            )
                .padding(.horizontal, 20)
                .shadow(color: Color(isDraggingBottom ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) : #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)), radius: 20, x: 20, y: 20)
        }
    }
}

struct FastEddies_Previews: PreviewProvider {
    static var previews: some View {
//                FastEddies()
        FastEddies().environment(\.colorScheme, .dark)
    }
}
