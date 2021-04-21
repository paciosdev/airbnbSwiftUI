//
//  ContentView.swift
//  reel
//
//  Created by Kekko Paciello on 21/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack{
                //MARK: - LOGO
                HStack{
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                .padding(.horizontal)
                
                //MARK: - Question
                HStack{
                    Text("Where Would you like to Travel, Pacios?")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                .padding()
                
                //MARK: - Search Bar
                
                RoundedRectangle(cornerRadius: 12.0)
                    .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .overlay(HStack{
                        Image(systemName: "magnifyingglass")
                            .padding(.leading)
                        Text("Type a Destination...")
                        Spacer()
                    }.padding(.horizontal).font(.callout).foregroundColor(.secondary))
                
                //MARK: - Category
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(spacing: 16){
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.3490196078, blue: 0.3725490196, alpha: 1)))
                            .frame(width: 85, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(VStack(spacing: 8){
                                Image(systemName: "house.fill")
                                    .font(.title3)
                                Text("Stays")
                                    .font(.caption)
                            }.foregroundColor(.white))
                        
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color(#colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)))
                            .frame(width: 85, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(VStack(spacing: 8){
                                Image(systemName: "eyeglasses")
                                    .font(.title3)
                                Text("Experiences")
                                    .font(.caption)
                            }.foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))))
                        
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color(#colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)))
                            .frame(width: 85, height: 75, alignment: .center)
                            .overlay(VStack(spacing: 8){
                                Image(systemName: "people.fill")
                                    .font(.title3)
                                Text("Adventures")
                                    .font(.caption)
                            }.foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))))
                        
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color(#colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)))
                            .frame(width: 85, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(VStack(spacing: 8){
                                Image(systemName: "dollarsign.circle")
                                    .font(.title3)
                                Text("Luxury")
                                    .font(.caption)
                            }.foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))))
                    }
                    .padding(.horizontal)
                })
                .padding(.vertical)
                
                HStack(spacing: 16){
                    Text("Popular")
                        .font(.title3)
                        .bold()
                        .overlay(RoundedRectangle(cornerRadius: 2).frame(width: 76, height: 4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.3490196078, blue: 0.3725490196, alpha: 1))).offset(y: 12))
                    
                    Text("Near")
                        .font(.title3)
                        .bold()
                    
                    Text("Best Price")
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
                }
                .padding()
                
                //MARK: - HOUSES
                
                VStack{
                    HStack (spacing: 30){
                        VStack(alignment: .leading, spacing: 5){
                            Image("1")
                                .resizable()
                                .frame(width: 200, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            HStack{
                                Text("Big home")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.3490196078, blue: 0.3725490196, alpha: 1)))
                                Text("4.75")
                                    .foregroundColor(.secondary)

                            }
                            .font(.caption)
                            
                            Text("Entire House - 5 beds moderna super minimal")
                                .layoutPriority(1)
                            
                            HStack{
                                Text("$141/")
                                    .bold()
                                +
                                Text("night")
                                Spacer()
                            }
                            .font(.caption)
                                
                        }
                        .frame(width: 200, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Image("2")
                                .resizable()
                                .frame(width: 200, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            HStack{
                                Text("Big home")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.3490196078, blue: 0.3725490196, alpha: 1)))
                                Text("4.75")
                                    .foregroundColor(.secondary)

                            }
                            .font(.caption)
                            
                            Text("Entire House - 5 beds moderna super minimal")
                                .layoutPriority(1)
                            
                            HStack{
                                Text("$141/")
                                    .bold()
                                +
                                Text("night")
                                Spacer()
                            }
                            .font(.caption)
                                
                        }
                        .frame(width: 200, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.leading)
                    
                    HStack (spacing: 30){
                        VStack(alignment: .leading, spacing: 5){
                            Image("3")
                                .resizable()
                                .frame(width: 200, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            HStack{
                                Text("Big home")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.3490196078, blue: 0.3725490196, alpha: 1)))
                                Text("4.75")
                                    .foregroundColor(.secondary)

                            }
                            .font(.caption)
                            
                            Text("Entire House - 5 beds moderna super minimal")
                                .layoutPriority(1)
                            
                            HStack{
                                Text("$141/")
                                    .bold()
                                +
                                Text("night")
                                Spacer()
                            }
                            .font(.caption)
                                
                        }
                        .frame(width: 200, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Image("4")
                                .resizable()
                                .frame(width: 200, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            HStack{
                                Text("Big home")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.3490196078, blue: 0.3725490196, alpha: 1)))
                                Text("4.75")
                                    .foregroundColor(.secondary)

                            }
                            .font(.caption)
                            
                            Text("Entire House - 5 beds moderna super minimal")
                                .layoutPriority(1)
                            
                            HStack{
                                Text("$141/")
                                    .bold()
                                +
                                Text("night")
                                Spacer()
                            }
                            .font(.caption)
                                
                        }
                        .frame(width: 200, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.leading)
                }
                
                
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
