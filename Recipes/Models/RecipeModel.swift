//
//  RecepeModel.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 18.09.2022.
//

import Foundation
enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let discription: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let dataPublishid: String
    let url: String
}

extension Recipe {
    static var all: [Recipe] = [
    Recipe(
        name: "Red borscht",
        image: "https://img1.russianfood.com/dycontent/images_upl/256/big_255825.jpg",
        discription: "The famous red borscht is loved for its special aroma, amazing taste and rich color. The perfect combination of vegetables gives red borscht that individual taste, thanks to which it is included in the list of the most famous soups in the world. Borscht is served in expensive restaurants and cooked at home. Whenever there is an opportunity to try borscht, we choose it.",
        ingredients: """
Meat on the bone - 800 g
        Beans - 50 g
        Beets - 400 g
        White cabbage - 250 g
        Small potatoes - 6 pcs.
        Carrots - 2 pcs.
        Onion - 2 pcs.
        Tomato paste - 140 g
        Bay leaf - 3 pcs.
        Sugar - 1 tbsp. a spoon
        Vinegar 9% - 1 tbsp. a spoon
        Black peppercorns - 10 pcs.
        Salt - 3 teaspoons
        Green onion - 5 g
        Garlic - 3 cloves
        Fresh dill - 15 g
        Fresh parsley - 15 g
        Vegetable oil - 3 tbsp. spoons
        Water - 2.5 l
        Sour cream (for serving) - to taste
""",
        directions: "asdasdalsdasdalsdlalsdadasdada",
        category: "Coup",
        dataPublishid: "25.04.18",
        url: "https://www.russianfood.com/recipes/recipe.php?rid=145861"
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    ),
    Recipe(
        name: "",
        image: "",
        discription: "",
        ingredients: "",
        directions: "",
        category: "Coup",
        dataPublishid: "",
        url: ""
    )
    ]
}
