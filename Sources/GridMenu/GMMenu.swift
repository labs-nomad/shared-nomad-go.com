//
//  File.swift
//  
//
//  Created by Nomad Company on 3/31/20.
//
import SwiftUI

/// The `GMMenu` that displays `GMItems` in a grid.
public struct GMMenu {
    //MARK: Input Properties
    
    @ObservedObject var gmMenuController: GMMenuController
    
    //MARK: Computed Properties
    
    //MARK: Init
    /// Initlaizer for `GMMenu` that takes a `GMMenuController`
    /// - Parameter controller: The `GMMenuController` that will contain all the state information for the menu
    public init(controller: GMMenuController) {
        self.gmMenuController = controller
    }
    
    //MARK: Functions
    
}


extension GMMenu: View {
    /// The body of the `GMMenu`
    public var body: some View {
        HStack(alignment: .center, spacing: 0) {
            HStack {
                ForEach(0..<self.gmMenuController.menuItems.count) { column in
                    VStack {
                        ForEach(0..<self.gmMenuController.menuItems[column].count) { row in
                            GMItemView(controller: self.gmMenuController, item: self.gmMenuController.menuItems[column][row])
                        }
                    }
                }
            }.padding()
        }.border(Color.black, width: 2).frame(minWidth: 100, minHeight: 75)
    }
}

struct GMMenu_Previews: PreviewProvider {
    static var previews: some View {
        let controller = GMMenuController()
        return GMMenu(controller: controller)
    }
}
