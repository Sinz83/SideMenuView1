//
//  SideMenuView.swift
//  sideMenuFuture
//
//  Created by Sabrina Inzillo on 09.11.22.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red,Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                //Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                    .foregroundColor(.white)
                
                //Option View Cell Items
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(destination: Text(option.title), label: {
                        SideMenuOptionView(viewModel: option)
                    })
                    
                }
                
               Spacer()
            } .navigationBarHidden(true)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing:.constant(true))
    }
}
