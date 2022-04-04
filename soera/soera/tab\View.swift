//
//  tab\View.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 02/04/2022.
//

import SwiftUI

struct tab_View: View {
    @StateObject var env: ItemEnv
    var body: some View {
        TabView{
            Mainp(env:env)
                .tabitem
        }
    }
}

struct tab_View_Previews: PreviewProvider {
    static var previews: some View {
        tab_View()
    }
}
