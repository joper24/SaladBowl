//
//  HomeView.swift
//  Salad Bowl
//
//  Created by John Oper on 1/8/20.
//  Copyright © 2020 Oper. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView() {
            // Top Image, title, and
            ZStack(alignment: .top) {
                Image("Salad_Image_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 100, maxWidth: .infinity, alignment: .top)

                    .padding(.leading, -40)
                    .padding(.top, -40)
                                        
                VStack { // Stack for the title and buttons
                    VStack {
                        Text("Salad Bowl")
                            .fontWeight(.heavy)
                            .font(.system(size: 50, weight: .heavy, design: .rounded))
                            .foregroundColor(.black)
                        HStack {
                            TitleTags(TagText: "4-20 Players")
                            TitleTags(TagText: "Teams of 2")
                        }
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color("shadowColor"), radius: 5, x: 0, y: 2)
                    .padding()
                    .padding(.bottom, 100)
                    
                    // Create and Join buttons
                    Button(action:  {
                        
                    }) {
                        JoinCreateDetails(imageName: "pencil.and.outline", title: "Create Game")
                    }
                    .buttonStyle(JoinCreateStyle(bgColor: "redPrimary"))
                    
                    // Join Game Button
                    Button(action: {
                        
                    }) {
                        JoinCreateDetails(imageName: "magnifyingglass", title: "Join Game")
                    }
                    .buttonStyle(JoinCreateStyle(bgColor: "bluePrimary"))
                }
            }
//                .background(Color.green)
        
            // Text telling the user how to play
            VStack {
                HStack {
                    Text("How to Play")
                        .fontWeight(.heavy)
                        .font(.system(.largeTitle, design: .rounded))
                    Spacer()
                }
                .padding(.horizontal)
                
                HeadingsHowTo(headingText: "Overview")
                // Text telling the user how to play
                BodyHowTo(bodyText: "I am going to write more stuff here. There will be an overview, round 1 rules, how the game works, etc. right here. I am going to write more stuff here. There will be an overview, round 1 rules, how the game works, etc. right here. I am going to write more stuff here. There will be an overview, round 1 rules, how the game works, etc. right here. I am going to write more stuff here. There will be an overview, round 1 rules, how the game works, etc. right here. I am going to write more stuff here. There will be an overview, round 1 rules, how the game works, etc. right here. I am going to write more stuff here. There will be an overview, round 1 rules, how the game works, etc. right here. I am going to write more stuff here. There will be an overview, round 1 rules, how the game works, etc. right here. I am going to write more stuff here. There will be an overview, round 1 rules, how the game works, etc. right here. ")
            
    //                Spacer().frame(width: 100).background(Color.orange)
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TitleTags: View {
    var TagText: String
    
    var body: some View {
        Text(TagText)
            .fontWeight(.bold)
            .font(.system(.caption, design: .rounded))
            .foregroundColor(Color("darkBlue"))
            .padding(5)
            .background(Color("lightBlue"))
            .cornerRadius(10)
            .padding(.bottom, 10)
    }
}

struct JoinCreateDetails: View {
    var imageName: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.system(.title, design: .rounded))
                .foregroundColor(.white)
            Text(title)
                .fontWeight(.bold)
                .font(.system(.title, design: .rounded))
                .foregroundColor(.white)
        }
        .padding(5)
    }
}

struct JoinCreateStyle: ButtonStyle {
    var bgColor: String
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.vertical, 5) // Padding for the top and bottom of the button
            .background(Color(bgColor))
            .cornerRadius(.greatestFiniteMagnitude)
            .padding(.horizontal)
            .shadow(color: Color("shadowColor"), radius: 5, x: 0, y: 2)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0) // Scale the button size when clicked
    }
}


struct HeadingsHowTo: View {
    var headingText: String
    
    var body: some View {
        HStack {
            Text(headingText)
                .fontWeight(.semibold)
                .font(.system(.title, design: .rounded))
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct BodyHowTo: View {
    var bodyText: String

    var body: some View {
        HStack {
            Text(bodyText)
                .fontWeight(.regular)
                .font(.system(.body, design: .rounded))
            Spacer()
        }
        .padding()
        .padding(.horizontal)
    }
}
