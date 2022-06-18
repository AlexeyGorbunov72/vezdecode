//
//  CatalogItem.swift
//  vezdecod
//
//  Created by Aleksei Gorbunov on 18.06.2022.
//

import Foundation

struct CatalogItem {
    struct Measure {
        let unit: String
        let amount: Decimal
    }

    struct Nutrients {
        let energy: Decimal
        let proteins: Decimal
        let fats: Decimal
        let carbohydrates: Decimal
    }

    let id: Int
    let categoryId: Int
    let name: String
    let description: String
    let image: String
    let actualPrice: Decimal
    let originalPrice: Decimal?
    let measure: Measure
    let nutrients: Nutrients
    let tagIds: [Int]
    init(with dto: CatalogItemDTO) {
        self.measure = Measure(
            unit: dto.measureUnit,
            amount: dto.measure
        )
        self.nutrients = Nutrients(
            energy: dto.energyPer100Grams,
            proteins: dto.proteinsPer100Grams,
            fats: dto.fatsPer100Grams,
            carbohydrates: dto.carbohydratesPer100Grams
        )
        self.actualPrice = dto.actualPrice
        self.originalPrice = dto.originalPrice
        self.tagIds = dto.tagIds
        self.categoryId = dto.categoryId
        self.name = dto.name
        self.id = dto.id
        self.description = dto.description
        self.image = dto.image
    }
}
