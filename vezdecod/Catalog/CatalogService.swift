//
//  CatalogService.swift
//  vezdecod
//
//  Created by Aleksei Gorbunov on 18.06.2022.
//

import Foundation

final class CatalogService {
    func fetchCatalogItems() -> [CatalogItem]? {
        if let url = Bundle.main.url(forResource: "products", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([CatalogItemDTO].self, from: data)
                return jsonData.compactMap {
                    CatalogItem(with: $0)
                }
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
