//
//  File.swift
//  
//
//  Created by Nomad Company on 4/1/20.
//

import SwiftUI

/// This is the entry point for the larger menu. Put this on your UI Where you want the user to tap the entry point to your menu.
public struct GMCollapsedMenu {
    //MARK: Input Properties
    @ObservedObject var gmMenuController: GMMenuController
    
    //MARK: Computed Properties
    
    //MARK: Init
    /// Initalize the collapsed version of the menu.
    /// - Parameters:
    ///   - controller: The `GMMenuController` to initalize with
    ///   - menuName: The name to go under the  menu symbol
    public init(controller: GMMenuController) {
        self.gmMenuController = controller
    }
    
    //MARK: Functions
    func menuPressed() {
        withAnimation {
            self.gmMenuController.collapsed.toggle()
        }
    }
}


extension GMCollapsedMenu: View {
    public var body: some View {
        Group {
            if self.gmMenuController.collapsed == true {
                Button(action: { self.menuPressed() }) {
                    VStack {
                        Image(systemName: "square.grid.3x2")
                            .imageScale(Image.Scale.large)
                        Text(self.gmMenuController.collapsedMenuName)
                            .font(Font.footnote)
                    }
                }
            }else {
                Button(action: { self.menuPressed() }) {
                    VStack {
                        Image(systemName: "xmark")
                        Text("Close").font(Font.footnote)
                    }
                }
            }
        }
    }
}

struct GMCollapsedMenu_Previews: PreviewProvider {
    static var previews: some View {
        let controller = GMMenuController()
        return GMCollapsedMenu(controller: controller)
    }
}
