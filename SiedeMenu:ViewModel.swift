//
//  SiedeMenu:ViewModel.swift
//  sideMenuFuture
//
//  Created by Sabrina Inzillo on 09.11.22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
case profile
case lists
case bookmarks
case massages
case notifications
case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "List"
        case .bookmarks: return "Bookmarks"
        case .massages: return "Massages"
        case .notifications: return "Notifications"
        case .logout: return "Logout"
        }
        
    }
    
    var imageName: String {
        
        switch self{
            
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .massages: return "bubble.left"
        case .notifications: return "bell"
        case .logout: return "arrow.down.left.circle"
            
            
        }
        
    }
}
