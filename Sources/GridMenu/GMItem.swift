//
//  File.swift
//  
//
//  Created by Nomad Company on 3/31/20.
//

import Foundation
import Combine


class GMItem: ObservableObject {
    //MARK: @Published properties
    @Published var sfSymbol: String = "house.fill"
        
    @Published var itemDescription: String = "Home"
    
    @Published var showItemDescription: Bool = true
    //MARK: Properties
    
    
    //MARK: Init
    init() {
        
    }
    
    init(sfSymbol: String, itemDescription: String, showItemDescription: Bool = true) {
        self.sfSymbol = sfSymbol
        self.itemDescription = itemDescription
        self.showItemDescription = showItemDescription
    }
    
    
    //MARK: Functions
    
    
}
