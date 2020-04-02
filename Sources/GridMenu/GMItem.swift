//
//  File.swift
//  
//
//  Created by Nomad Company on 3/31/20.
//

import Foundation
import Combine


/// An Object that represents a UIElement in the Grid Menu
public class GMItem: ObservableObject, Equatable {

    //MARK: @Published properties
    /// The SFSymbol that you want to represent this `GMItem`
    @Published public var sfSymbol: String
    
    /// The description of this `GMItem` to appread blow the image
    @Published public var itemDescription: String
    
    /// A boolean that toggles the itemDescription on or off so that you can just show the symbol
    @Published public var showItemDescription: Bool
    
    //MARK: Properties
    
    /// A  unique id of the `GMItem` item.to help you compare and keep track
    public let id: UUID = UUID()
    
    //MARK: Init
    
    /// Initalizer for `GMItem`
    /// - Parameters:
    ///   - sfSymbol: The text of the SFSymbol you want to use
    ///   - itemDescription: The description of the menu item that you want displayed below the SFSymbol
    ///   - showItemDescription: A boolean that dictates if the description should be cleaned or not.
    public init(sfSymbol: String = "house.fill", itemDescription: String = "Home", showItemDescription: Bool = true) {
        self.sfSymbol = sfSymbol
        self.itemDescription = itemDescription
        self.showItemDescription = showItemDescription
    }
    
    //MARK: Equatable Conformance
    public static func == (lhs: GMItem, rhs: GMItem) -> Bool {
        return (lhs.id == rhs.id)
    }
    
    //MARK: Functions
    
    
}
