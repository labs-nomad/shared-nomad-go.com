//
//  GMItemView.swift
//  
//
//  Created by Nomad Company on 4/1/20.
//

import SwiftUI


public struct GMItemView {
    //MARK: Input Properties
    
    @ObservedObject var gmMenuController: GMMenuController
    
    @ObservedObject var menuItem: GMItem
    
    //MARK: Computed Properties
    var isSelected: Bool {
        return (self.menuItem == self.gmMenuController.currentItem ? true : false)
    }
    
    //MARK: Init
    init(controller: GMMenuController, item: GMItem) {
        self.gmMenuController = controller
        self.menuItem = item
    }
    
    //MARK: Functions
    func itemTapped() {
        withAnimation {
            self.gmMenuController.currentItem = self.menuItem
        }
    }
}


extension GMItemView: View {
    public var body: some View {
        Button(action: { self.itemTapped() }) {
            GeometryReader { geo in
                VStack {
                    Image(systemName: self.menuItem.sfSymbol).resizable().aspectRatio(contentMode: ContentMode.fit)
                    if self.menuItem.showItemDescription {
                        Text(self.menuItem.itemDescription).minimumScaleFactor(0.01).frame(height: geo.size.height * 0.40).multilineTextAlignment(.center)
                    }
                }
            }
        }.padding().frame(width: 85, height: 85)
        .foregroundColor((self.isSelected ? Color.white : Color.black))
        .border(Color.gray, width: 1)
        .background((self.isSelected ? Color.blue : Color.clear))
    }
}

struct GMItemView_Previews: PreviewProvider {
    static var previews: some View {
        let controller = GMMenuController()
        let item = GMItem()
        return GMItemView(controller: controller, item: item)
    }
}
