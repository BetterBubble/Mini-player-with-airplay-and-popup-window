//
//  SongsText.swift
//  RepeatAfterPageOfApple
//
//  Created by Alex on 25.04.2021.
//

import SwiftUI

struct SongsText: View {
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                Group {
                    Text("Текст такой типа песни")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("Ну можно что-то и написать тогда")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("'Cause I'm T.N.T.")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("I'm dynamite")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("T.N.T.")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                }
                Group {
                    Text("And I'll win the fight")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("T.N.T.")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("I'm a power load")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("T.N.T.")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("Watch me explode")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                }
                Group {
                    Text("I'm dirty, mean and might unclean")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("I'm a wanted man")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("Public enemy number one")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("Understand?")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                    Text("So lock up your daughter")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 270, alignment: .leading)
                    Spacer(minLength: 25)
                }
                
                
            }
            .padding()
        }
        .frame(width: 270)
    }
}

struct SongsText_Previews: PreviewProvider {
    static var previews: some View {
        SongsText()
    }
}
