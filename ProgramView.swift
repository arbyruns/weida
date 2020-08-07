//
//  ProgramView.swift
//  Weida
//
//  Created by robevans on 8/7/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct ProgramView: View {

    @State var showSettings = false

    var body: some View {
        VStack {
            NavigationView {
                HStack {
                    ScrollView( showsIndicators: false) {
                        VStack {
                            //I removed the foreach because I'm limited in knowledge and no idea how to get navlink to go to different views.  Reddit and stackoverflow(no duh) hasn't been much help.
                            NavigationLink(destination: Text("So Fit 1.0")) {
                                HStack {
                                    VStack {
                                        HStack {
                                            Text("So Fit 1.0")
                                                .font(.system(size: 24, weight: .bold))
                                                .frame(width: 160, alignment: .leading)
                                                .foregroundColor(Color("background1"))
                                            Spacer()
                                            Image("Weida")
                                                .renderingMode(.original)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 45, height: 45)
                                                .clipShape(Circle())
                                        }
                                        Text("12 Week Program")
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(.black)

                                        Image("program1")
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
                                    .background(Color("card6"))
                                    .cornerRadius(15)
                                    .shadow(color: Color("card6").opacity(0.4), radius: 20, x: 0, y: 20)
                                }
                                .padding(30)
                            }
                            NavigationLink(destination: Text("So Fit 2.0")) {
                                HStack {
                                    VStack {
                                        HStack {
                                            Text("So Fit 2.0")
                                                .font(.system(size: 24, weight: .bold))
                                                .frame(width: 160, alignment: .leading)
                                                .foregroundColor(Color("background1"))
                                            Spacer()
                                            Image("Weida")
                                                .renderingMode(.original)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 45, height: 45)
                                                .clipShape(Circle())
                                        }
                                        Text("12 Week Program")
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(.black)

                                        Image("program2")
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
                                    .background(Color("card6"))
                                    .cornerRadius(15)
                                    .shadow(color: Color("card6").opacity(0.4), radius: 20, x: 0, y: 20)
                                }
                                .padding(20)
                            }
                            NavigationLink(destination: Lifts()) {
                                HStack {
                                    VStack {
                                        HStack {
                                            Text("Classic Lifts")
                                                .font(.system(size: 24, weight: .bold))
                                                .frame(width: 160, alignment: .leading)
                                                .foregroundColor(Color("background1"))
                                            Spacer()
                                            Image("Weida")
                                                .renderingMode(.original)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 45, height: 45)
                                                .clipShape(Circle())
                                        }
                                        Text("Classic Training Program")
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(.black)

                                        Image("program5")
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
                                    .background(Color("card6"))
                                    .cornerRadius(15)
                                    .shadow(color: Color("card6").opacity(0.4), radius: 20, x: 0, y: 20)
                                }
                                .padding(20)
                            }
                            NavigationLink(destination: Text("The Weida Way")) {
                                HStack {
                                    VStack {
                                        HStack {
                                            Text("The Weida Way")
                                                .font(.system(size: 24, weight: .bold))
                                                .frame(width: 160, alignment: .leading)
                                                .foregroundColor(Color("background1"))
                                            Spacer()
                                            Image("Weida")
                                                .renderingMode(.original)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 45, height: 45)
                                                .clipShape(Circle())
                                        }
                                        Text("It hurts all over")
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(.black)

                                        Image("program4")
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
                                    .background(Color("card6"))
                                    .cornerRadius(15)
                                    .shadow(color: Color("card6").opacity(0.4), radius: 20, x: 0, y: 20)
                                }
                                .padding(20)
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
                            //                          .renderingMode(.original)
                            .foregroundColor(.primary)
                            .font(.system(size: 16, weight: .medium))
                            .frame(width: 36, height: 36)
                            .background(Color("background3"))
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                            .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0, y: 5)

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

struct ProgramView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramView()
    }
}

struct Program: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: String
    var color: LinearGradient
}

var programData = [
    Program(title: "So Fit 1.0", text: "12 Week Program", logo: "Weida", image: "program1", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
    Program(title: "So Fit 2.0", text: "12 Week Program", logo: "Weida",  image: "program2", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
    Program(title: "Classic Lifts", text: "Classic Training Program", logo: "Weida", image: "program3", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
    Program(title: "The Weida Way", text: "Classic Training Program", logo: "Weida", image: "program4", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
]

struct ProgramsView: View {
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
