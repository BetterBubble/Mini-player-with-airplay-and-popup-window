//
//  ContentView.swift
//  Shared
//
//  Created by Alex on 23.04.2021.
//

import SwiftUI
import HalfModal

struct ContentView: View {
    @State var timeSound: Double = 0
    @State var volumSound: Double = 0
    
    @State var playPauseBool = false
    @State var playPauseString = "play.fill"
    
    @State var buttonColor4: Color = .gray
    @State var buttonBackColor4: Color = .white
    @State public var buttonToggleColor4 = true
    @State var buttonColor5: Color = .gray
    @State var buttonBackColor5: Color = .white
    @State var buttonToggleColor5 = true
    @State var buttonToggleView4 = true
    @State var buttonToggleView5 = true
    
    @State var showAirPlay = false
    @State var showingHalfModal = false
    
    @State var showingFullScreen = false
    @State var frameSize: CGFloat = 225
    @State var framex: CGFloat = 75
    @State var framey: CGFloat = 150
    @State var textx : CGFloat = -215
    @State var texty : CGFloat = 360
    @State var textSize1: CGFloat = 25
    @State var textSize2: CGFloat = 18
    @State var buttony: CGFloat = 360
    @State var buttonx: CGFloat = -15
    
    var body: some View {
        ZStack {
            VStack {
                
                if !buttonToggleColor4 || !buttonToggleColor5 {
                    MusicRow(showingHalfModal: $showingHalfModal, showingFullScreen: $showingFullScreen, frameSize: $frameSize, framex: $framex, framey: $framey, textx: $textx, texty: $texty, textSize1: $textSize1, textSize2: $textSize2, buttonx: $buttonx, buttony: $buttony, buttonToggleColor5: $buttonToggleColor5, buttonToggleColor4: $buttonToggleColor4, buttonToggleView5: $buttonToggleView5, buttonToggleView4: $buttonToggleView4, buttonColor5: $buttonColor5, buttonBackColor5: $buttonBackColor5, buttonColor4: $buttonColor4, buttonBackColor4: $buttonBackColor4)
                        .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0))
                    if !buttonToggleColor4{
                        multipility()
                        
                        VStack {
                            ScrollView {
                                ForEach(0 ..< 40) { item in
                                    NextMusic()
                                }
                            }
                        }
                    } else if !buttonToggleColor5{
                        SongsText()
                    }
                } else {
                    MusicRow(showingHalfModal: $showingHalfModal, showingFullScreen: $showingFullScreen, frameSize: $frameSize, framex: $framex, framey: $framey, textx: $textx, texty: $texty, textSize1: $textSize1, textSize2: $textSize2, buttonx: $buttonx, buttony: $buttony, buttonToggleColor5: $buttonToggleColor5, buttonToggleColor4: $buttonToggleColor4, buttonToggleView5: $buttonToggleView5, buttonToggleView4: $buttonToggleView4, buttonColor5: $buttonColor5, buttonBackColor5: $buttonBackColor5, buttonColor4: $buttonColor4, buttonBackColor4: $buttonBackColor4)
                        .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0))
                }
                Spacer()
                
                VStack {
                    Slider(value: $timeSound, in: 0...3, step: 0.01)
                        .frame(width: 340.0)
                        .foregroundColor(.yellow)
                    HStack(alignment: .top, spacing: 280.0) {
                        Text("\(timeSound, specifier: "%.2f")")
                        Text("\(3 - timeSound, specifier: "%.2f")")
                    }
                    .offset(y: -14)
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: "backward.fill")
                                .foregroundColor(.gray)
                                .font(.system(size: 40))
                                .padding(.trailing, 30)
                        })
                        Button(action: {
                            playPauseBool.toggle()
                            playPauseBool ? (playPauseString = "pause.fill") : (playPauseString = "play.fill")
                        }, label: {
                            Image(systemName: playPauseString)
                                .foregroundColor(.gray)
                                .font(.system(size: 50))
                        })
                        Button(action: {}, label: {
                            Image(systemName: "forward.fill")
                                .foregroundColor(.gray)
                                .font(.system(size: 40))
                                .padding(.leading, 30)
                        })
                    }
                    .padding(.top, 5)
                    Slider(value: $volumSound, in: 0...100, step: 1,
                            minimumValueLabel: Image(systemName: "speaker.fill"),
                            maximumValueLabel: Image(systemName: "speaker.wave.3.fill")
                        ) {
                            Text("Speed")
                        }
                    .padding(.top, 30)
                    .frame(width: 300)
                    HStack {
                        Button(action: {
                            buttonToggleColor5.toggle()
                            if buttonToggleColor5 {
                                buttonColor5 = .gray
                                buttonBackColor5 = .white
                                showingFullScreen.toggle()
                            } else {
                                buttonColor5 = .white
                                buttonBackColor5 = .gray
                                buttonColor4 = .gray
                                buttonBackColor4 = .white
                                buttonToggleColor4 = true
                                buttonToggleView5.toggle()
                                showingFullScreen = false
                            }
                            withAnimation {
                                frameSize = showingFullScreen ? 225 : 60
                                framex = showingFullScreen ? 75 : 0
                                framey = showingFullScreen ? 150 : 0
                                textx = showingFullScreen ? -220 : 0
                                texty = showingFullScreen ? 360 : 0
                                textSize1 = showingFullScreen ? 25 : 22
                                textSize2 = showingFullScreen ? 18 : 16
                                buttony = showingFullScreen ? 360 : 0
                            }

                            
                        }, label: {
                            Image(systemName: "quote.bubble")
                                .frame(width: 32, height: 30, alignment: .center)
                                .font(.system(size: 25))
                                .foregroundColor(buttonColor5)
                                .background(buttonBackColor5)
                                .cornerRadius(5)
                        })
                        .padding(.trailing, 60)
                        Button(action: {
                            
                            self.showAirPlay.toggle()
                        }, label: {
                            Image(systemName: "airplayaudio")
                                .font(.system(size: 25))
                                .foregroundColor(.gray)
                        })
                        Button(action: {
                            buttonToggleColor4.toggle()
                            if buttonToggleColor4 {
                                buttonColor4 = .gray
                                buttonBackColor4 = .white
                                showingFullScreen.toggle()
                            } else {
                                buttonColor4 = .white
                                buttonBackColor4 = .gray
                                buttonColor5 = .gray
                                buttonBackColor5 = .white
                                buttonToggleColor5 = true
                                buttonToggleView4.toggle()
                                showingFullScreen = false
                            }
                            withAnimation {
                                frameSize = showingFullScreen ? 225 : 60
                                framex = showingFullScreen ? 75 : 0
                                framey = showingFullScreen ? 150 : 0
                                textx = showingFullScreen ? -200 : 0
                                texty = showingFullScreen ? 360 : 0
                                textSize1 = showingFullScreen ? 25 : 22
                                textSize2 = showingFullScreen ? 18 : 16
                                buttonx = showingFullScreen ? -15 : 0
                                buttony = showingFullScreen ? 360 : 0
                            }

                        }, label: {
                            Image(systemName: "list.bullet")
                                .frame(width: 30, height: 26, alignment: .center)
                                .font(.system(size: 25))
                                .foregroundColor(buttonColor4)
                                .background(buttonBackColor4)
                                .cornerRadius(3)
                        })
                        .padding(.leading, 60)
                    }
                    .padding(.top, 10)
                }
                
            }
            
            airplay(showAirPlay: $showAirPlay)
                .offset(y: showAirPlay ? 230 : 600)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            if showingHalfModal {
                HalfModalView(content: AnyView(HalfModalContent(
                    priorButtons:[
                        AnyView(Button(action: {
                                
                            }, label: {
                                ModalButtonView(title: "Copy", image: Image(systemName: "doc.on.doc"), labelColor: .primary)
                            })
                        ),
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "Share", image: Image(systemName: "square.and.arrow.up"), labelColor: .primary)
                        }))
                    ]
                    ,secondaryButtons: [
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "Show Album", image: Image(systemName: "music.note"), labelColor: .primary)
                        })),
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "Remove...", image: Image(systemName: "trash"), labelColor: .primary)
                        })),
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "Add to a PlayList...", image: Image(systemName: "text.badge.plus"), labelColor: .primary)
                        })),
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "View Full Lyrics", image: Image(systemName: "text.quote"), labelColor: .primary)
                        })),
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "Create Station", image: Image(systemName: "badge.plus.radiowaves.right"), labelColor: .primary)
                        })),
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "Love", image: Image(systemName: "heart"), labelColor: .primary)
                        })),
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "Suggest Less Like This", image: Image(systemName: "hand.thumbsdown"), labelColor: .primary)
                        })),
                        AnyView(Button(action: {
                            
                        }, label: {
                            ModalButtonView(title: "Mail to Self", image: Image(systemName: "envelope.circle"), labelColor: .primary)
                        })),
                        AnyView(Text("Edit Actions...")
                                    .foregroundColor(.red))
                    ]
                )
                .frame(width: 410)
                .offset(x: 20)
                ), header: AnyView(
                    Group {
                    Image("SongsImage")
                        .resizable()
                        .frame(width: 45.0, height: 45.0)
                        .cornerRadius(4.0)
                    
                    VStack(alignment: .leading) {
                        Text("T.N.T.")
                            .font(.system(size: 18, weight: .bold, design: .default))
                        Text("AC/DC")
                            .font(.system(size: 13, weight: .semibold, design: .default))
                            .foregroundColor(Color.gray)
                    }
                }), isPresented: self.$showingHalfModal)
            }
        }
    }
}

struct airplay: View {
    @Binding var showAirPlay: Bool
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack {
                        Image(systemName: "airplayaudio")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                        Text("AirPlay")
                            .font(.system(size: 25, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                    }
                }
                .frame(width: 340, height: 80)
                .background(Color.init(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                .onTapGesture {
                    self.showAirPlay = false
                }
                Spacer(minLength: 1)
                HStack {
                    VStack {
                        ScrollView {
                            HStack {
                                Image(systemName: "iphone")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                VStack(alignment: .leading) {
                                    Text("iPhone")
                                        .font(.system(size: 18, weight: .semibold, design: .default))
                                    Text("... T.N.T. - AC/DC")
                                        .font(.system(size: 14, weight: .medium, design: .default))
                                }
                                .foregroundColor(.white)
                                Spacer()
                                Image(systemName: "checkmark")
                                    .font(.system(size: 20, weight: .semibold, design: .default))
                                    .foregroundColor(.white)
                                
                            }
                            .frame(width: 270, height: 50, alignment: .center)
                        }
                        Spacer()
                    }
                }
                .frame(width: 340, height: 128.5)
                .background(Color.init(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            }
            .frame(width: 340, height: 210)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 23, style: .continuous))
            .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)

        }
    }
}

struct MusicRow: View {
    @State private var showingSheet = false
    @Binding var showingHalfModal: Bool
    @Binding var showingFullScreen: Bool
    @Binding var frameSize: CGFloat
    @Binding var framex: CGFloat
    @Binding var framey: CGFloat
    @Binding var textx: CGFloat
    @Binding var texty: CGFloat
    @Binding var textSize1: CGFloat
    @Binding var textSize2: CGFloat
    @Binding var buttonx: CGFloat
    @Binding var buttony: CGFloat
    
    @Binding var buttonToggleColor5: Bool
    @Binding var buttonToggleColor4: Bool
    @Binding var buttonToggleView5: Bool
    @Binding var buttonToggleView4: Bool
    @Binding var buttonColor5: Color
    @Binding var buttonBackColor5: Color
    @Binding var buttonColor4: Color
    @Binding var buttonBackColor4: Color

    
    var body: some View {
        ZStack {
            HStack {
                    Image("SongsImage")
                        .resizable()
                        .frame(width: frameSize, height: frameSize)
                        .cornerRadius(7.0)
                        .offset(x: framex, y: framey)
                        .onTapGesture {
                            if frameSize == 60 {
                                showingFullScreen = true
                                buttonToggleColor4 = true
                                buttonToggleColor5 = true
                                buttonToggleView4 = true
                                buttonToggleView5 = true
                                buttonColor4 = .gray
                                buttonBackColor4 = .white
                                buttonColor5 = .gray
                                buttonBackColor5 = .white
                                withAnimation {
                                    frameSize = showingFullScreen ? 225 : 60
                                    framex = showingFullScreen ? 75 : 0
                                    framey = showingFullScreen ? 150 : 0
                                    textx = showingFullScreen ? -220 : 0
                                    texty = showingFullScreen ? 360 : 0
                                    textSize1 = showingFullScreen ? 25 : 22
                                    textSize2 = showingFullScreen ? 18 : 16
                                    buttony = showingFullScreen ? 360 : 0
                                }
                            }
                        }
                    
                    VStack(alignment: .leading) {
                        Group {
                            Text("T.N.T.")
                                .font(.system(size: textSize1, weight: .bold, design: .default))
                            Text("AC/DC")
                                .font(.system(size: textSize2, weight: .semibold, design: .default))
                                .foregroundColor(Color.gray)
                        } .offset(x: textx, y: texty)
                    }
                    Spacer()
                    Button(action: {
                        withAnimation {
                            self.showingHalfModal = true
                        }
                    }, label: {
                        Image(systemName: "ellipsis.circle.fill")
                            .font(.system(size: 28, design: .default))
                            .frame(alignment: .trailing)
                            .foregroundColor(.gray)
                    }) .offset(x: buttonx,y: buttony)
            }
            .frame(width: 370.0)
            
        }
    }
}

struct fullScreen: View {
    @Binding var showingHalfModal: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Image("SongsImage")
                .padding(.bottom, -55.0)
                .frame(width: 225, height: 225)
                .cornerRadius(15.0)
            Spacer()
            HStack {
                VStack {
                    Text("T.N.T.")
                        .font(.system(size: 30, weight: .bold, design: .default))
                    Text("AC/DC")
                        .font(.system(size: 20, weight: .semibold, design: .default))
                        .foregroundColor(Color.gray)
                }
                .frame(alignment: .leading)
                Spacer()
                Button(action: {
                    withAnimation {
                        self.showingHalfModal = true
                    }
                }, label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .font(.system(size: 28, design: .default))
                        .frame(alignment: .trailing)
                        .foregroundColor(.gray)
                })
            } .frame(width: 340, alignment: .leading)
                
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
