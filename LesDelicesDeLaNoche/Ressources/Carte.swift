//
//  Carte.swift
//  LesDelicesDeLaNoche
//
//  Created by mafiosa on 14/11/2022.
//

import Foundation


var carte: [Model] = [
    
    Model(image: "", name: "Nems Poulet", categorie: .entry, ingredients: ["Riz, Vermicelle, Ciboulette, Oignon, Echalotte, Oeuf, Carotte et Poulet"], description: "", articleprice: 1),
    
    Model(image: "", name: "Nems Crevettes", categorie: .entry, ingredients: [""], description: "", articleprice: 1),
    
    Model(image: "", name: "Samoussa Poulet", categorie: .entry, ingredients: [""], description: "", articleprice: 1),
    
    Model(image: "", name: "Wings", categorie: .entry, ingredients: [""], description: "", articleprice: 1),
    
    Model(image: "", name: "Salade Composée", categorie: .entry, ingredients: nil, description: "", articleprice: 1),
    
    Model(image: "", name: "Carbonara", categorie: .dish, ingredients: [""], description: "Les pâtes à la carbonara sont une spécialité culinaire traditionnelle de la cuisine italienne, originaire de Rome, à base de pâtes, très souvent des spaghetti, cuisinées dans une émulsion d'oeuf et de fromage rapé, accompagné de lardons", articleprice: 1),
    
    Model(image: "", name: "Bolognaise", categorie: .dish, ingredients: [""], description: "", articleprice: 8),
    
    Model(image: "", name: "Tagliatelles Saumon", categorie: .dish, ingredients: [""], description: "", articleprice: 9),
    
    Model(image: "", name: "Tagliatelles Saumon Boursin", categorie: .dish, ingredients: [""], description: "", articleprice: 10.0),
    
    Model(image: "", name: "Escalope Milanaise", categorie: .dish, ingredients: [""], description: "", articleprice: 9),
    
    Model(image: "", name: "La Scampie", categorie: .dish, ingredients: [""], description: "", articleprice: 10),
    
    Model(image: "", name: "Tiramisu", categorie: .dessert, ingredients: [""], description: "", articleprice: 2.5),
    
    Model(image: "cristaline", name: "Eau Cristaline", categorie: .drink, ingredients: [""], description: "", articleprice: 10),
    
    Model(image: "coca cola", name: "Coca-Cola", categorie: .drink, ingredients: [""], description: "", articleprice: 1),
    
    Model(image: "oasis tropical", name: "Oasis Tropical", categorie: .drink, ingredients: [""], description: "", articleprice: 1),
    
    Model(image: "orangina", name: "Orangina", categorie: .drink, ingredients: [""], description: "", articleprice: 1)
]



extension Model {
    static var modelSample = Model(image: "orangina", name: "Orangina", categorie: .drink, ingredients: [""], description: "", articleprice: 1)
}
