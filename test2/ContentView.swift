//
//  ContentView.swift
//  test2
//
//  Created by Finley Crowther on 23/6/2023.
//

import SwiftUI

enum Side: Equatable, Hashable {
    case left
    case right
}

extension View {
    func padding(sides: [Side], value: CGFloat = 8) -> some View {
        HStack(spacing: 0) {
            if sides.contains(.left) {
                Spacer().frame(width: value)
            }
            self
            if sides.contains(.right) {
                Spacer().frame(width: value)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                ScrollView{
                    
                    NavigationLink(destination: hambMenu()){Image("HamburgerMenuIcon")}
                        .zIndex(10)
                        .padding(.trailing, 300)
                    VStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 523, height: 523)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0, green: 0.64, blue: 1), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.61, green: 0.86, blue: 1).opacity(0), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.12, y: 0.24),
                                    endPoint: UnitPoint(x: 1, y: 1)
                                )
                            )
                            .cornerRadius(423)
                            .padding(.trailing, 200)
                            .zIndex(0)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 444, height: 444)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0, green: 0.64, blue: 1), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.61, green: 0.86, blue: 1).opacity(0), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.12, y: 0.24),
                                    endPoint: UnitPoint(x: 1, y: 1)
                                )
                            )
                            .cornerRadius(444)
                            .padding([.top, .leading], 170)
                            .padding(.leading, 150)
                            .zIndex(0)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 444, height: 444)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0, green: 0.64, blue: 1), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.61, green: 0.86, blue: 1).opacity(0), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.12, y: 0.24),
                                    endPoint: UnitPoint(x: 1, y: 1)
                                )
                            )
                            .cornerRadius(444)
                            .padding(.trailing, 150)
                            .zIndex(0)
                    }
                    .zIndex(0)
                    .padding(.vertical, -200.0)
                    .frame(width: 724)
                    VStack{
                        Text("****WELCOME BACK FINLEY!****")
                            .font(
                                Font.custom("Inter", size: 32)
                                    .weight(.black)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 276, height: 78, alignment: .center)
                            .zIndex(2)
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 197, height: 34)
                                .background(.white.opacity(0.53))
                                .cornerRadius(9)
                                .shadow(color: .black.opacity(0.17), radius: 3.5, x: 2, y: 2)
                                .zIndex(1)
                            Text("**$106,694.94**")
                                .font(
                                    Font.custom("Inter", size: 20)
                                        .weight(.black)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .frame(width: 296, height: 72, alignment: .center)
                                .zIndex(2)
                        }
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 314, height: 361)
                            .background(Color(red: 0.89, green: 1, blue: 1))
                            .cornerRadius(30)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 4, y: 4)
                            .zIndex(1)
                        HStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 150, height: 167)
                                .background(Color(red: 0.89, green: 1, blue: 1))
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 4, y: 4)
                                .zIndex(1)
                                .padding(.leading, 10)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 147, height: 165)
                                .background(Color(red: 0.89, green: 1, blue: 1))
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 4, y: 4)
                                .zIndex(1)
                        }
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 319, height: 110)
                            .background(Color(red: 0.89, green: 1, blue: 1))
                            .cornerRadius(30)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 4, y: 4)
                            .zIndex(1)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 152, height: 167)
                            .background(Color(red: 0.89, green: 1, blue: 1))
                            .cornerRadius(20)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 4, y: 4)
                            .zIndex(1)
                            .padding(.trailing, 160)
                        Text("PAY LINK™")
                            .font(
                                Font.custom("Inter", size: 20)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(width: 297, height: 35, alignment: .center)
                            .padding(.top, 10)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore")
                            .font(
                                Font.custom("Inter", size: 10)
                                    .weight(.light)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(width: 314, height: 44, alignment: .center)
                    }
                    .padding(.top, -1200)
                }
                .frame(width: 390)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.79, green: 0.99, blue: 1), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.78, green: 0.99, blue: 1), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )
                )
            }
        }
    }
}
                               
struct hambMenu: View {
                    var body: some View{
                        VStack{
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 727, height: 727)
                              .background(
                                LinearGradient(
                                  stops: [
                                    Gradient.Stop(color: Color(red: 0, green: 0.64, blue: 1), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.61, green: 0.86, blue: 1).opacity(0), location: 1.00),
                                  ],
                                  startPoint: UnitPoint(x: 0.41, y: 0.53),
                                  endPoint: UnitPoint(x: 0.9, y: -0.13)
                                )
                              )
                              .cornerRadius(727)
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 496, height: 496)
                              .background(
                                LinearGradient(
                                  stops: [
                                    Gradient.Stop(color: Color(red: 0, green: 0.64, blue: 1), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.61, green: 0.86, blue: 1).opacity(0), location: 1.00),
                                  ],
                                  startPoint: UnitPoint(x: 0.43, y: 0.35),
                                  endPoint: UnitPoint(x: 0.97, y: 1.14)
                                )
                              )
                              .cornerRadius(496)
                            VStack{
                                Text("MENU")
                                    .font(
                                        Font.custom("Inter", size: 36)
                                            .weight(.bold)
                                    )
                                    .kerning(18)
                                    .underline()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 264, height: 75, alignment: .center)
                                    .padding(.bottom, 72)
                                Text("Split Calc")
                                    .font(
                                        Font.custom("Inter", size: 20)
                                            .weight(.bold)
                                    )
                                    .kerning(3.2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 186, height: 28, alignment: .center)
                                    .padding(.bottom, 58)
                                Text("For You")
                                    .font(
                                        Font.custom("Inter", size: 20)
                                            .weight(.bold)
                                    )
                                    .kerning(3.2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 117, height: 28, alignment: .center)
                                    .padding(.bottom, 58)
                                Text("Settings")
                                    .font(
                                        Font.custom("Inter", size: 20)
                                            .weight(.bold)
                                    )
                                    .kerning(3.2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 117, height: 28, alignment: .center)
                                    .padding(.bottom, 58)
                                Text("Receive ")
                                    .font(
                                        Font.custom("Inter", size: 20)
                                            .weight(.bold)
                                    )
                                    .kerning(3.2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 117, height: 28, alignment: .center)
                                    .padding(.bottom, 58)
                                Text("Pay")
                                    .font(
                                        Font.custom("Inter", size: 20)
                                            .weight(.bold)
                                    )
                                    .kerning(3.2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 117, height: 28, alignment: .center)
                                    .padding(.bottom, 58)
                                Text("Accounts")
                                    .font(
                                        Font.custom("Inter", size: 20)
                                            .weight(.bold)
                                    )
                                    .kerning(3.2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                .frame(width: 117, height: 28, alignment: .center)}.padding(.top, -1000)}
                    }
                }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
