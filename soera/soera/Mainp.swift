//
//  Mainp.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 31/03/2022.
//

import SwiftUI

struct Mainp: View {
    @State var cal:Double = 0
    @Binding var result:Int 
    let Meals = ["الفطور🍳","الغداء🍛","تصبيرة🍎","العشاء🌯"]
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
                //                Text("\(result)")
                ZStack{
                    Image("Rectangle 9")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    VStack{
                        Text("\(result)")
                            .font(.title)
                        Text("سُعره")
                            .font(.title)
                        Slider(value: $cal, in: 0...3000)
                            .frame(width: 300,alignment: .center)
                    }
                }
                ZStack{
                    Image("Rectangle 10")
                        .resizable()
                        .padding()
                        .ignoresSafeArea()
                    Spacer()
                    ForEach(Meals , id:\.self){ item in
                        Text(item)
                    }
                }
            }
        }
        .onAppear(perform: getr)
    }
    func getr (){
        print(result)
    }
}


//struct Mainp_Previews: PreviewProvider {
//    @State var r = 0
//    static var previews: some View {
//        Mainp(result: $r)
//    }
//}
