//
//  CartService.swift
//  vezdecod
//
//  Created by Aleksei Gorbunov on 18.06.2022.
//

import Foundation
import Combine

final class CartService {

    @Published private(set) var items: [CatalogItem] = []
    static let shared = CartService()
    private var bag: AnyCancellable?
    
    func appendItem(_ item: CatalogItem) {
        items.append(item)
    }

    func removeItem(_ item: CatalogItem) {
        items.removeAll(where: { $0.id == item.id })
    }

    private init() {
        guard
            let storedCart = UserDefaults
                .standard
                .object(forKey: Constants.userDefaultsCartKey) as? [CatalogItem]
        else {
            return
        }
        items = storedCart
        subscribeToItemsChanges()
    }

    private func subscribeToItemsChanges() {
        bag = $items.sink { items in
            UserDefaults.standard.set(items, forKey: Constants.userDefaultsCartKey)
        }
    }
}

private enum Constants {

    static let userDefaultsCartKey = "service.cart"
}
