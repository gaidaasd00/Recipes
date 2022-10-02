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
        name: "Pelmeni",
        image: "https://img1.russianfood.com/dycontent/images_upl/361/big_360017.jpg",
        discription: "Recipe for dumplings dough with hot water and vegetable oil. You will really enjoy working with this dough, it is very elastic, does not tear, does not boil, molds well and tolerates freezing well. Feel free to add a little water to make the minced meat for the filling juicier. I also add a little fat if the meat is lean. The dumplings are very tasty and juicy.",
        ingredients: """
        Products
        Sifted wheat flour - 500 g + for working with dough
        Hot water (70-75 degrees) - 250 ml
        Egg (small) - 1 pc.
        Salt - 1 teaspoon without a slide
        Odorless vegetable oil - 25 ml
        *
        For filling:
        Meat (beef and pork) - 550 g
        Onion - 200 g
        Salo (optional, if the meat is lean) - 30 g
        Water - 70-80 g (according to the consistency of minced meat)
        Salt - 1 teaspoon without a slide
        Ground black pepper - to taste
        *
        For cooking:
        Bay leaf - to taste
        Salt - to taste
        Black peppercorns - to taste
        Onion - 1/4 pc.
        *
        For submission:
        Butter - to taste
""",
        directions: "The best of the best pelmeni",
        category: "Main",
        dataPublishid: "22.01.2020",
        url: "https://www.russianfood.com/recipes/recipe.php?rid=152967"
    ),
    Recipe(
        name: "Olive",
        image: "https://img1.russianfood.com/dycontent/images_upl/209/big_208927.jpg",
        discription: "Traditional salad 'Olivier', without which the New Year's festive feast is indispensable.",
        ingredients: """
        Products (for 5 servings)
        Potatoes - 5 pcs.
        Carrot - 1 pc. (large)
        Pickled cucumbers (barrel) - 4-5 pcs.
        Canned green peas - 5-6 tbsp. l.
        Boiled sausage (doctor's) - 200 g
        Eggs - 4 pcs.
        Mayonnaise - 150 g
        Sour cream - 50 g
        Salt - to taste
        Ground black pepper - to taste
""",
        directions: "This is the best olive"  ,
        category: "Salat",
        dataPublishid: "17.12.2009",
        url: "https://www.russianfood.com/recipes/recipe.php?rid=142133"
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
