
import Combine
import SwiftUI

/// Observable object that keeps track of the items in the menu, the selected item and the state that toggles the menu on or off.
public class GMMenuController: ObservableObject {
    //MARK: Observable properties
    /// The array of `GMColumns` that makes up the grid
    @Published public var menuItems: [GMColumn] = GMMenuController.defaultMenuItems()
    
    /// The currently selected `GMItem`
    @Published public var currentItem: GMItem?
    
    /// Keeps track of the visible state of the menu.
    @Published public var collapsed: Bool = true
    
    @Published public var collapsedMenuName: String = "Menu"
    
    //MARK: Other properties
    
    
    //MARK: Initalizers
    /// Initalize the `GMMenuController` with the default `GMColumns`
    public init() {
        
    }
    
    /// Initalize the `GMMenuController` with an array of `GMColumns`
    /// - Parameter columns: The array of `GMCOlumns` to show in the menu
    public init(withColumns columns: [GMColumn]) {
        self.menuItems = columns
    }
    
    
    //MARK: Functions
    static func defaultMenuItems() -> [GMColumn] {
        let firstColumn = [GMItem(sfSymbol: "house.fill", itemDescription: "Home"), GMItem(sfSymbol: "person.fill", itemDescription: "Profile")]
        let middleColumn = [GMItem(sfSymbol: "magnifyingglass.circle.fill", itemDescription: "Search"), GMItem(sfSymbol: "bookmark.fill", itemDescription: "Saved")]
        let lastComumn = [GMItem(sfSymbol: "pencil", itemDescription: "Create"), GMItem(sfSymbol: "camera.fill", itemDescription: "Capture")]
        return [firstColumn, middleColumn, lastComumn]
    }
    
}
