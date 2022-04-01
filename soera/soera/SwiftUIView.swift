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
    @State private var isShowingDetailView = false
    let Strengths =  ["نشيط جداً","نشيط","نشاط متوسط","كسول"]
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
                Text("معلوماتك الشخصية🦸")
                    .font(.largeTitle)
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
                            .frame(width: 100)
                        Text("العمر:")
                            .padding()
                        Spacer()
                        TextField("ادخل هنا..", text:$weight)
                            .frame(width: 100)
                        Text("الوزن:")
                            .padding()
                    }
                    HStack{
                        Spacer()
                        TextField("ادخل هنا..", text:$length)
                            .frame(width: 100)
                        Text("الطول:")
                            .padding()
                        
                    }
                }
                HStack(alignment: .center){
                    Toggle(isOn: $termsAccepted,
                           label: {
                        Text("أوافق على الشروط و الأحكام")
                            .padding()
                        
                    })
                }
                Spacer()
                
                NavigationLink(destination:Mainp(result: $result), isActive: $isShowingDetailView) { EmptyView() }
                Button("احسب") {
                    isShowingDetailView = true
                    result = getBMR(weight:weight, height: length, age: age, gender: gender)
                    print(result)
                }
                .frame(width: 320, height: 20, alignment: .center)
                .padding()
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
        SwiftUIView()
    }
}

