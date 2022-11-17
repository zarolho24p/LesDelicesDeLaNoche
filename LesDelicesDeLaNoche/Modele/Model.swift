//
//  Model.swift
//  LesDelicesDeLaNoche
//
//  Created by mafiosa on 14/11/2022.
//

import Foundation

struct Model: Identifiable {
    var id = UUID()
    let image: String
    let name: String
    let categorie: Categorie
    let ingredients: [String]?
    let description: String
    let articleprice: Double
}
 
enum Categorie : String, CaseIterable {
    case entry = "Entrée"
    case dish = "Pasta"
    case dessert = "Dessert"
    case drink = "Boisson"
}
