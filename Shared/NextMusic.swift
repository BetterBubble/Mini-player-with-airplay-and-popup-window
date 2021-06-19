//
//  NextMusic.swift
//  RepeatAfterPageOfApple
//
//  Created by Alex on 23.04.2021.
//

import SwiftUI

struct NextMusic: View {
    var body: some View {
        HStack {
                Image("nextMusic")
                    .frame(width: 50.0, height: 50.0)
                    .cornerRadius(7.0)
                    
            VStack(alignment: .leading) {
                    Text("Next Music")
                        .font(.system(size: 18, weight: .bold, design: .default))
                Text("Design by Shulga")
                    .font(.system(size: 12, weight: .semibold, design: .default))
                    .foregroundColor(Color.gray)
            }
            Spacer()
            Button(action: {
                
                
                
            }, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: 25, design: .default))
                    .frame(alignment: .trailing)
                    .foregroundColor(.gray)
            })
        }
        .frame(width: 340.0)
    }
}

struct NextMusic_Previews: PreviewProvider {
    static var previews: some View {
        NextMusic()
    }
}
