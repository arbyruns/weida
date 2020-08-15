////
////  ContentView.swift
////  Weida
////
////  Created by robevans on 8/4/20.
////  Copyright © 2020 robevans. All rights reserved.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    @State var showSettings = false
//
//    var body: some View {
//        VStack {
//            NavigationView {
//                HStack {
//                    ScrollView( showsIndicators: false) {
//                        VStack {
//                            ForEach(programData) { program in
//                                GeometryReader { geometry in
//                                    NavigationLink(destination:
//
//                                        Lifts() //I want this to vary between different views
//
//                                        )
//                                {
//                                 ProgramsView(program: program)
//                                      .rotation3DEffect(Angle(degrees:
//                                                Double(geometry.frame(in: .global).minY - 10) / -90
//                                      ), axis: (x: 0.0, y: 0.0, z: 0))
//                                    }
//                                }
//                                .frame(width: screen.width, height: 340)
//                            }
//                            .onMove{ (source: IndexSet, destination: Int) in
//                                    programData.move(fromOffsets: source, toOffset: destination)
//                                }
//                            .padding(10)
//                            .padding(.horizontal, 20.0)
//                            }
//                        }
//                    .onTapGesture {
//                            let impactLight = UIImpactFeedbackGenerator(style: .light)
//                            impactLight.impactOccurred()
//                    }
//                    .navigationBarTitle("Weida", displayMode: .automatic)
//                .navigationBarItems(trailing: Button(action:{ self.showSettings.toggle() } ) {
//                      Image(systemName: "bell")
////                          .renderingMode(.original)
//                        .foregroundColor(.primary)
//                        .font(.system(size: 16, weight: .medium))
//                        .frame(width: 36, height: 36)
//                        .background(Color("background3"))
//                        .clipShape(Circle())
//                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
//                        .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0, y: 5)
//
//                  }
//                .sheet(isPresented: $showSettings) {
//                    SettingsView()
//                })
//                }
//                Spacer()
//            }
//            }
//        }
//    }
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
////        ContentView().environment(\.colorScheme, .dark)
//        ContentView()
//    }
//}
//
//struct Program: Identifiable {
//    var id = UUID()
//    var title: String
//    var text: String
//    var logo: String
//    var image: String
//    var color: LinearGradient
//}
//
//var programData = [
//    Program(title: "So Fit 1.0", text: "12 Week Program", logo: "Weida", image: "program1", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
//    Program(title: "So Fit 2.0", text: "12 Week Program", logo: "Weida",  image: "program2", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
//    Program(title: "Classic Lifts", text: "Classic Training Program", logo: "Weida", image: "program3", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
//    Program(title: "The Weida Way", text: "Classic Training Program", logo: "Weida", image: "program4", color: LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1098039216, green: 0.7098039216, blue: 0.8784313725, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.03137254902, blue: 0.3176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)),
//]
//
//struct ProgramsView: View {
//    var program: Program
//
//    var body: some View {
//        HStack {
//            VStack {
//                HStack {
//                    Text(program.title)
//                        .font(.system(size: 24, weight: .bold))
//                        .frame(width: 160, alignment: .leading)
//                        .foregroundColor(Color("background1"))
//                    Spacer()
//                    Image(program.logo)
//                        .renderingMode(.original)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 45, height: 45)
//                        .clipShape(Circle())
//                }
//                Text(program.text)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .foregroundColor(.black)
//
//                Image(program.image)
//                    .renderingMode(.original)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 210)
//                    .cornerRadius(5)
//                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
//                Spacer()
//            }
//            .padding(.top, 20)
//            .padding(.horizontal, 20)
//            .frame(width: screen.width, height: 300)
////            .background(LinearGradient(gradient: Gradient(colors: [Color("background2"), Color("secondary")]), startPoint: .bottomLeading, endPoint: .topTrailing))
//                .background(Color("card6"))
//            .cornerRadius(15)
//                .shadow(color: Color("card6").opacity(0.4), radius: 20, x: 0, y: 20)
//            
//        }
//    }
//}
