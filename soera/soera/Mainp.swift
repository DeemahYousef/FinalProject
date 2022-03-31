//
//  Mainp.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 31/03/2022.
//

import SwiftUI

struct Mainp: View {
  @State var cal:Double = 0
    var body: some View {
        ZStack{
            Image("bg2")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("هدفك اليومي🌟")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Color"))
                    .frame(maxWidth:.infinity, alignment:.topTrailing)
                    .padding(20)
                ZStack{
                Image("Rectangle 9")
                    .resizable()
                    .scaledToFit()
                    .padding()
                Slider(value: $cal, in: 0...3000)
                    .frame(width: 300,alignment: .center)
                }
                ZStack{
                    Image("Rectangle 10")
                        .resizable()
                        .padding()
                        .ignoresSafeArea()
                    Spacer()
                }
            }
        }
    }
}

struct Mainp_Previews: PreviewProvider {
    static var previews: some View {
        Mainp()
    }
}
