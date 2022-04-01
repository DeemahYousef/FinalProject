//
//  view2.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 27/03/2022.
//

import SwiftUI

struct view2: View {
    var body: some View {
            ZStack{
                Image("13 Pro - 2")
                    .resizable()
                    .ignoresSafeArea()
                
                
//                Button(action: {
//                    print("go on")
//                }) {
                    VStack {
                        Spacer()
                        //                    HStack {
                        NavigationLink(destination: SwiftUIView()){
                            Text("اكمل")
                                .font(.title2)
                                .fontWeight(.regular)
                                .foregroundColor(Color("Color"))
                        }
                        //                        Text("اكمل")
                        //                            .font(.title2)
                        //                            .fontWeight(.regular)
                        //                            .foregroundColor(Color("Color"))
                        //                    }
                        .frame(width: 300, height: 67, alignment: .center)
                        .background(Color("Color-1"))
                        .cornerRadius(20)
                        .padding(.horizontal, 20)
                    }
                }
            }
        }
    


struct view2_Previews: PreviewProvider {
    static var previews: some View {
        view2()
    }
}
