//
//  File.swift
//  
//
//  Created by Nomad Company on 3/31/20.
//
import SwiftUI

public struct GMMenu {
    //MARK: Input Properties
    @State public var menuItems: [GMItem] = []
    
    @State public var collapsed: Bool = false
    
    @State public var collapsedMenuPosition: GMMenuCollapsedPosition = GMMenuCollapsedPosition.upperRight
    
    //MARK: Computed Properties
    
    //MARK: Init
    init() {
        
    }
    
    //MARK: Functions
}


extension GMMenu: View {
    var body: some View {
        
        Text("Item")
//        switch collapsed {
//        case true:
//            break
//        case false:
//            break
//        }
//        switch self.collapsedMenuPosition {
//        default:
//            
//        }
    }
}

struct GMMenu_Previews: PreviewProvider {
    static var previews: some View {
        GMMenu()
    }
}
