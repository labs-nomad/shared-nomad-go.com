
import Combine


class GMMenuController: ObservableObject {
    //MARK: Observable properties
    @Published var menuItems: [GMItem] = []
    
    //MARK: Other properties
    
    
    //MARK: Initalizers
    init() {
        
    }
    
    
    //MARK: Functions
    func addItem(sfSymbolName: String, itemDescription: String, showDescription: Bool = true) {
        let newMenuItem = GMItem(sfSymbol: sfSymbolName, itemDescription: itemDescription, showItemDescription: showDescription)
        self.menuItems.append(newMenuItem)
    }
    
}
