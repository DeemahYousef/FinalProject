//
//  SwiftUIView.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 29/03/2022.
//

import SwiftUI

struct SwiftUIView: View {
    @State var termsAccepted = false
    @State var gender = 0
    @State var age:String = ""
    @State var length:String = ""
    @State var weight:String = ""
    @State var selectedStrength = ""
    @State var result = 0
    @State var activty:String = ""
    var name : String
    @State private var isShowingDetailView = false
    @State var choose = 0.5
    @State var choose1 = 0.5
    @State var choose2 = 0.5
    @State var choose3 = 0.5
    
    var body: some View {
        ZStack{
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            Image("Rectangle 8")
                .resizable()
                .scaledToFit()
                .padding()
            
            VStack{
                Text("معلومات \(name) الشخصية🦸")
                
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("tex2"))
                    .frame(maxWidth:.infinity, alignment:.topTrailing)
                    .padding(20)
                
                Picker("What is your gender?", selection: $gender) {
                    Text("ذكر").tag(0)
                    Text("انثى").tag(1)
                    
                }
                .pickerStyle(.segmented)
                .padding()
                
                
                VStack(alignment: .trailing){
                    HStack{
                        Spacer()
                        TextField("ادخل هنا..", text:$age)
                            .frame(width: 80)
                        Text("العمر:")
                            .font(.title3)
                            .padding()
                        Spacer()
                        TextField("كيلو جرام..", text:$weight)
                            .frame(width: 80)
                        Text("الوزن:")
                            .font(.title3)
                            .padding()
                    }
                    HStack{
                        Spacer()
                        TextField("سم..", text:$length)
                            .frame(width: 80)
                        Text("الطول:")
                            .font(.title3)
                            .padding()
                        
                    }
                    Text("هل انت نشيط؟")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("tex2"))
                        .frame(maxWidth:.infinity, alignment:.topTrailing)
                        .padding(20)
                    
                    VStack{
                        HStack{
                            Spacer()
                            Text("كسول")
                                .font(.title3)
                                .frame(width: 150, height: 50)
                                .background(Color("Color-2"))
                                .opacity(choose)
                                .cornerRadius(20)
                                .onTapGesture {
                                    activty = "1.2"
                                    choose = 1.0
                                }
                            
                            Text("قليل النشاط")
                                .font(.title3)
                                .frame(width: 150, height: 50)
                                .background(Color("Color-2"))
                                .opacity(choose1)
                                .cornerRadius(20)
                                .onTapGesture {
                                    activty = "1.375"
                                    choose1 = 1.0
                                }
                            Spacer()
                        }
                        HStack{
                            Text("نشيط")
                                .font(.title3)
                                .frame(width: 150, height: 50)
                                .background(Color("Color-2"))
                                .opacity(choose2)
                                .cornerRadius(20)
                                .onTapGesture {
                                    activty = "1.55"
                                    choose2 = 1.0
                                }
                            Text("نشيط جداً")
                                .font(.title3)
                                .frame(width: 150, height: 50)
                                .background(Color("Color-2"))
                                .opacity(choose3)
                                .cornerRadius(20)
                                .onTapGesture {
                                    activty = "1.9"
                                    choose3 = 1.0
                                }
                        }
                    }
                }
                Spacer()
                HStack(alignment: .center){
                    Spacer()
                    Toggle(isOn: $termsAccepted,
                           label: {
                        
                        
                    })
                        .labelsHidden()
                    Text("أوافق على الشروط و الأحكام")
                        .font(.title3)
                        .padding(30)
                }
                Spacer()
                
                NavigationLink(destination:Mainp(result: $result), isActive: $isShowingDetailView) { EmptyView() }
                
                Button(action: {
                    isShowingDetailView = true
                    result = getBMR(weight:weight, height: length, age: age, gender: gender, activty: activty)
                    print(result)
                }) {
                    Text("احسب عدد السعرات")
                        .font(.title2)
                        .fontWeight(.regular)
                    
                }
                .frame(width: 320, height: 20, alignment: .center)
                .padding()
                .foregroundColor(Color("tex"))
                .background(Color("con"))
                .cornerRadius(20)
                .padding(.horizontal, 20)
            }
        }.onDisappear(perform: geti)
        
    }
    func geti() {
        print(result)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView( name: "")
        
    }
}

