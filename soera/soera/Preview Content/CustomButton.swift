//
//  CustomButton.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 29/03/2022.
//

import SwiftUI
struct MyButton<WhatEverYouWant:View>: View {
    
    let action: () -> Void
    let content: WhatEverYouWant
    
    init (action: @escaping () -> Void, @ViewBuilder content:() ->WhatEverYouWant ) {
        self.action = action
        self.content = content()
    }
    
    var body: some View {
        Button(action: action) {
            content
                .padding()
                .frame(minWidth: 0, maxWidth:.infinity )
                .background(Color("con"))
                .foregroundColor(Color("tex"))
                .cornerRadius(20)
                .padding(.horizontal, 20)
        }
    }
 }
