//
//  FirstView.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 30/03/2022.
//

import SwiftUI

struct FirstView: View {
    @State var name : String = ""
    var body: some View {
        NavigationView{
            
            ZStack{
                Image("bg")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        
                        Image("Rect")
                            .frame(maxWidth:.infinity, alignment:.topTrailing)
                            .ignoresSafeArea()
                        TextField("ادخل اسمك هنا..", text:$name)
                            .frame(width:230, alignment:.topTrailing)
                            .padding(20)
                        Text("اهلاً بك \(name)! 👋🏻")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Color"))
                            .frame(maxWidth:.infinity, alignment:.topTrailing)
                            .padding(20)
                    }
                    Text("ماهو هدفك؟")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("tex2"))
                        .frame(maxWidth:.infinity, alignment:.topTrailing)
                        .padding(20)
                    
                    VStack{
                        NavigationLink(destination: view2()){
                            //                        MyButton(action: {}) {
                            Text("انقاص الوزن")
                                .font(.title2)
                                .fontWeight(.regular)
                                .padding()
                                .frame(minWidth: 0, maxWidth:.infinity )
                                .background(Color("con"))
                                .foregroundColor(Color("tex"))
                                .cornerRadius(20)
                                .padding(.horizontal, 20)
                            //                                           }
                        }
                        //                    MyButton(action: {}) {
                        //                        Text("انقاص الوزن")
                        //                            .font(.title2)
                        //                            .fontWeight(.regular)
                        //                    }
                        //                    Button(action: {print("ok")}) {
                        //                        Spacer()
                        //                    }
                        MyButton(action: {}) {
                            Text("لياقة بدنية - قريباً")
                                .font(.title2)
                                .fontWeight(.regular)
                        }
                        Button(action: {print("ok")}) {
                        }
                    }
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
