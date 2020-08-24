//
//  ProgramViewV2.swift
//  Weida
//
//  Created by robevans on 8/13/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct ProgramViewV2: View {

    @State var showSettings = false
    @State var tap = false

    var body: some View {
        VStack {
            NavigationView {
                HStack {
                    ScrollView( showsIndicators: false) {
                        VStack {
                            //I removed the foreach because I'm limited in knowledge and no idea how to get navlink to go to different views.  Reddit and stackoverflow(no duh) hasn't been much help.
                            NavigationLink(destination: Text("So Fit 1.0 - Coming Soon")) {
                                ZStack {
                                    Image("program1")
                                        .renderingMode(.original)
                                        .resizable()
                                        .cornerRadius(15)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: screen.width - 30)
                                        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                                    VStack {
                                        Text("So Fit 1.0")
                                            .font(.system(size: 48, weight: .bold))
                                            .frame(width: screen.width - 30)
                                            .foregroundColor(.white)
                                            .shadow(color: Color.black.opacity(0.8), radius: 20, x: 0, y: 20)
                                            .scaleEffect(tap ? 1.2 : 1)
                                        Text("12 Week Program")
                                            .frame(maxWidth: .infinity)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(10)
                            }
                            NavigationLink(destination: SFF2()) {
                                ZStack {
                                    Image("program2")
                                        .renderingMode(.original)
                                        .resizable()
                                        .cornerRadius(15)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: screen.width - 30)
                                        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                                    VStack {
                                        Text("So Fit 2.0")
                                            .font(.system(size: 48, weight: .bold))
                                            .frame(width: screen.width - 30)
                                            .foregroundColor(.white)
                                            .shadow(color: Color.black.opacity(0.8), radius: 20, x: 0, y: 20)
                                        Text("12 Week Program")
                                            .frame(maxWidth: .infinity)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(10)
                            }
                            NavigationLink(destination: Lifts()) {
                                ZStack {
                                    Image("program5")
                                        .renderingMode(.original)
                                        .resizable()
                                        .cornerRadius(15)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: screen.width - 30)
                                        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                                    VStack {
                                        Text("The Weida Way")
                                            .font(.system(size: 48, weight: .bold))
                                            .frame(width: screen.width - 30)
                                            .foregroundColor(.white)
                                            .shadow(color: Color.black.opacity(0.8), radius: 20, x: 0, y: 20)
                                        Text("Classic Lifts")
                                            .frame(maxWidth: .infinity)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(10)
                            }
                        }
                    }
                    .onTapGesture {
                        let impactLight = UIImpactFeedbackGenerator(style: .light)
                        impactLight.impactOccurred()
                    }
                    .navigationBarTitle("Weida", displayMode: .automatic)
                    .navigationBarItems(trailing: Button(action:{ self.showSettings.toggle() } ) {
                        Image(systemName: "bell")
                            .foregroundColor(.primary)
                            .font(.system(size: 16, weight: .medium))
                            .frame(width: 36, height: 36)
                            .background(Color("background3"))
                            .clipShape(Circle())
                            .shadow(color: Color("secondary").opacity(0.1), radius: 1, x: 0, y: 1)
                            .shadow(color: Color("secondary").opacity(0.2), radius: 1, x: 0, y: 5)
                    }
                    .sheet(isPresented: $showSettings) {
                        SettingsView()
                    })
                }
                Spacer()
            }
        }
    }
}


struct ProgramViewV2_Previews: PreviewProvider {
    static var previews: some View {
        //        ProgramViewV2()
        ProgramViewV2().environment(\.colorScheme, .dark)
    }
}

struct Program2: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: String
    var color: LinearGradient
}

var programData2 = [
    Program2(title: "So Fit 1.0", text: "12 Week Program", logo: "Weida", image: "program1", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
    Program2(title: "So Fit 2.0", text: "12 Week Program", logo: "Weida",  image: "program2", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
    Program2(title: "Classic Lifts", text: "Classic Training Program", logo: "Weida", image: "program3", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
    Program2(title: "The Weida Way", text: "Classic Training Program", logo: "Weida", image: "program4", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
]

struct ProgramsView2: View {
    var program: Program

    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text(program.title)
                        .font(.system(size: 24, weight: .bold))
                        .frame(width: 160, alignment: .leading)
                        .foregroundColor(Color("background1"))
                    Spacer()
                    Image(program.logo)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                }
                Text(program.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.black)

                Image(program.image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                Spacer()
            }
            .padding(.top, 20)
            .padding(.horizontal, 20)
            .frame(width: screen.width, height: 300)
                //            .background(LinearGradient(gradient: Gradient(colors: [Color("background2"), Color("secondary")]), startPoint: .bottomLeading, endPoint: .topTrailing))
                .background(Color("card6"))
                .cornerRadius(15)
                .shadow(color: Color("card6").opacity(0.4), radius: 20, x: 0, y: 20)

        }
    }
}
