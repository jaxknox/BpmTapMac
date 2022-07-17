//
//  ContentView.swift
//  BpmTap
//
//  Created by Jaxon Knox on 7/15/22.
//

import SwiftUI
import AppKit

struct ContentView: View {
    
    var body: some View {
    
        ZStack {
            Color.newPrimaryColor
            
            VStack {
                Header()
                    .padding([.top, .bottom])
                
                // MARK: @State var to update based on the logic
                bpmDisplay()
                // MARK: <------------------------------------->
               
                Footer()
                
                // MARK: Reset button
                ZStack {
                    Rectangle()
                        .cornerRadius(5)
                        .foregroundColor(.secondaryColor)
                        .frame(width: 40, height: 20)
                    Text("Reset")
                        .font(.system(size: 13.0, weight: .regular, design: .rounded))
                        .foregroundColor(.white)
                }
                
            }
            
        }
        .frame(minWidth: 500, minHeight: 600)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}



struct Header: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 309, height: 85)
                .cornerRadius(15)
                .foregroundColor(.secondaryColor)
                .shadow(color: .shadowColor, radius: 5, x: 0, y: 4)
            Text("BPM TAP")
                .font(.custom(FontsManager.Rubik.extraBold, size: 45))
                .foregroundColor(.white)
        }
        .padding([.top, .bottom])
        
    }
}

struct bpmDisplay: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .foregroundColor(.secondaryColor)
                .cornerRadius(10)
                .padding()
            Rectangle()
                .frame(width: 188, height: 88)
                .foregroundColor(.newPrimaryColor)
                .cornerRadius(4)
            Text("120")
                .font(.system(size: 70, weight: .semibold, design: .rounded))
                .foregroundColor(.secondaryColor)
        }
    }
}


struct Footer: View {
    var body: some View {
        
        VStack {
            VStack (alignment: .center){
                
                // REMOVE
                HStack {
                    Text("Tap")
                        .font(.system(size: 25, weight: .regular, design: .rounded))
                        .foregroundColor(.textColor)
                        .frame(height: 30)
                        //.shadow(color: .shadowColor, radius: 10, x: 0, y: 4)
                }
                // END REMOVE
                
                ZStack {
                    Rectangle()
                        .frame(width: 100.0, height: 40.0)
                        .cornerRadius(6)
                    Rectangle()
                        .cornerRadius(3)
                        .foregroundColor(.newPrimaryColor)
                        .frame(width: 93.0, height: 33)
                    Text("SPACE")
                        .font(.system(size: 28, weight: .regular, design: .rounded))
                }
                    
                Text("to get started")
                    .font(.system(size: 25, weight: .regular, design: .rounded))
                    .foregroundColor(.textColor)
                    .font(.system(size: 25))
                    .frame(height: 10)
                    //.shadow(color: .shadowColor, radius: 10, x: 0, y: 4)
            }
            .foregroundColor(.secondaryColor)
        }
        .frame(width: 300, height: 200)
        
    }
    
    
    
}
