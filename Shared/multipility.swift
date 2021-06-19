//
//  multipility.swift
//  RepeatAfterPageOfApple
//
//  Created by Alex on 23.04.2021.
//

import SwiftUI

struct multipility: View {
    @State var buttonToggleColor1 = true
    @State var buttonColor1: Color = .gray
    @State var buttonBackColor1: Color = .white
    @State var buttonToggleColor2 = true
    @State var buttonColor2: Color = .gray
    @State var buttonBackColor2: Color = .white
    @State var buttonToggleColor3 = true
    @State var buttonColor3: Color = .gray
    @State var buttonBackColor3: Color = .white
    
    var body: some View {
        HStack {
            Text("Playing Next")
                .font(.system(size: 20, weight: .semibold, design: .default))
                .frame(width: 270, alignment: .leading)
            Group {
                Button(action: {
                    self.buttonToggleColor1.toggle()
                    if buttonToggleColor1 {
                        buttonColor1 = .gray
                        buttonBackColor1 = .white
                    } else {
                        buttonColor1 = .white
                        buttonBackColor1 = .gray
                    }
                }, label: {
                    Image(systemName: "shuffle")
                }) .frame(width: 26, height: 20, alignment: .center)
                .foregroundColor(buttonColor1)
                .background(buttonBackColor1)
                .cornerRadius(3)
                Button(action: {
                    self.buttonToggleColor2.toggle()
                    if buttonToggleColor2 {
                        buttonColor2 = .gray
                        buttonBackColor2 = .white
                    } else {
                        buttonColor2 = .white
                        buttonBackColor2 = .gray
                    }
                }, label: {
                    Image(systemName: "repeat")
                }) .frame(width: 26, height: 20, alignment: .center)
                .foregroundColor(buttonColor2)
                .background(buttonBackColor2)
                .cornerRadius(3)
                Button(action: {
                    self.buttonToggleColor3.toggle()
                    if buttonToggleColor3 {
                        buttonColor3 = .gray
                        buttonBackColor3 = .white
                    } else {
                        buttonColor3 = .white
                        buttonBackColor3 = .gray
                    }
                }, label: {
                    Image(systemName: "infinity")
                }) .frame(width: 26, height: 20, alignment: .center)
                .foregroundColor(buttonColor3)
                .background(buttonBackColor3)
                .cornerRadius(3)
            }
        }
    }
}

struct multipility_Previews: PreviewProvider {
    static var previews: some View {
        multipility()
    }
}
