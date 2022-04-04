//
//  view2.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 27/03/2022.
//

import SwiftUI

struct view2: View {
    var name : String
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
                        NavigationLink(destination: SwiftUIView(name: name)){
                            Text("اكمل")
                                .font(.title2)
                                .fontWeight(.regular)
                                .foregroundColor(Color("Color"))
                        }
                       
                        .frame(width: 320, height: 20, alignment: .center)
                        .padding()
                        .background(Color("Color-1"))
                        .cornerRadius(20)
                        .padding(.horizontal, 20)
                        
                    }
                }
            }
        }
    


struct view2_Previews: PreviewProvider {
    static var previews: some View {
        view2(name: "Deemah")
    }
}
