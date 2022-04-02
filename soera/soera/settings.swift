//
//  settings.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 02/04/2022.
//

import SwiftUI

struct settings: View {
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("الاعدادات⚙️")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("tex"))
                    .frame(maxWidth:.infinity, alignment:.topTrailing)
                    .padding(40)
                HStack{
                    
                    Button(action: {
                        print("info")
                    }) {
                        VStack {
                            Image("user")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .center)
                            Text("بياناتك الشخصية")
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundColor(Color("tex"))
                        }
                        .frame(width: 130, height: 130, alignment: .center)
                        .padding()
                        .background(Color("con"))
                        .cornerRadius(60)
                        .padding(.horizontal, 20)
                        
                    }
                    Button(action: {
                        print("rate")
                    }) {
                        VStack {
                            Image("star")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .center)
                            Text("تقيمك")
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundColor(Color("tex"))
                        }
                        .frame(width: 130, height: 130, alignment: .center)
                        .padding()
                        .background(Color("con"))
                        .cornerRadius(60)
                        .padding(.horizontal, 20)
                    }
                    
                }
                Button(action: {
                    print("rate")
                }) {
                    VStack {
                        Image("shield")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: .center)
                        Text("الشروط والاحكام")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(Color("tex"))
                    }
                    .frame(width: 130, height: 130, alignment: .center)
                    .padding()
                    .background(Color("con"))
                    .cornerRadius(60)
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}

struct settings_Previews: PreviewProvider {
    static var previews: some View {
        settings()
    }
}
