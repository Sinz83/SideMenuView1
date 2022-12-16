//
//  SideMenuHeaderView.swift
//  sideMenuFuture
//
//  Created by Sabrina Inzillo on 09.11.22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
                
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            
            VStack (alignment: .leading) {
                Image("plandevelopment")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Comité Paris")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@Paris")
                    .font(.system(size:14))
                    .padding(.bottom, 24)
                
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("1,254").bold()
                        Text("Folowing")
                    }
                    
                    
                        HStack(spacing: 4) {
                            Text("607") .bold()
                            Text ("Followers")
                            
                        }
                        Spacer()
                    }
                    
                    
                    Spacer()
                }  .padding()
                
            }
        }
        
        
        struct SideMenuHeaderView_Previews: PreviewProvider {
            static var previews: some View {
                SideMenuHeaderView(isShowing: .constant(true))
            }
        }
        
        
        
    }

