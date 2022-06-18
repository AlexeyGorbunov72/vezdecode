//
//  CatalogItemDto.swift
//  vezdecod
//
//  Created by Aleksei Gorbunov on 18.06.2022.
//

import Foundation

struct CatalogItemDto: Decodable {
    private enum CodingKeys: CodingKeys {
        
    }

    let id: Int
    let categoryId: Int
    let name: String
    let description: String
    let image: String
    let actualPrice: Decimal
    let originalPrice: Decimal
    let measure: Decimal
    let 
}

/*
 {
     "id": 36,
     "category_id": 676171,
     "name": "Запеченный ролл с курицей 3шт",
     "description": "Ролл с курицей, огурцом и сливочным сыром, запеченный под икрой летучей рыбы, легким майонезом и сыром  Комплектуется бесплатным набором для роллов (Соевый соус Лайт 35г., васаби 6г., имбирь 15г.). +1 набор за каждые 600 рублей в заказе",
     "image": "1.jpg",
     "price_current": 23000,
     "price_old": 41333,
     "measure": 125,
     "measure_unit": "г",
     "energy_per_100_grams": 234.8,
     "proteins_per_100_grams": 5.4,
     "fats_per_100_grams": 17.3,
     "carbohydrates_per_100_grams": 15,
     "tag_ids": []
 },
 */
