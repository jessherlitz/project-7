//
//  CatBreed.swift
//  project-7
//
//  Created by Jessica Sampaio-Herlitz on 11/26/24.
//

struct CatBreed {
    let name: String
    let origin: String
    let story: String
    let image: String
}

class CatBreedData {
    static let shared = CatBreedData()
    private init() {}
    
    var catBreeds = [
        CatBreed(name: "Persian", origin: "Iran", story: "The Persian cat is one of the oldest and most recognizable cat breeds, known for its long, luxurious coat and sweet temperament.", image: "persian_cat"),
        CatBreed(name: "Maine Coon", origin: "United States", story: "The Maine Coon is one of the largest domesticated cat breeds, known for its friendly nature and tufted ears.", image: "maine_coon_cat"),
        CatBreed(name: "Siamese", origin: "Thailand", story: "The Siamese cat is known for its striking blue eyes and elegant body, originally bred in Thailand as a temple cat.", image: "siamese_cat"),
        CatBreed(name: "Bengal", origin: "United States", story: "The Bengal cat is a hybrid breed, a mix of domestic cats and wild Asian leopards, known for its distinctive spotted coat.", image: "bengal_cat"),
        CatBreed(name: "Sphynx", origin: "Canada", story: "The Sphynx cat is famous for being hairless and is known for its affectionate and friendly personality.", image: "sphynx"),
        CatBreed(name: "British Shorthair", origin: "United Kingdom", story: "The British Shorthair is an old British breed known for its round face, dense coat, and calm temperament.", image: "british-shorthair"),
        CatBreed(name: "Russian Blue", origin: "Russia", story: "The Russian Blue is a graceful cat breed, known for its blue-gray coat and emerald green eyes, originating in Russia.", image: "russian-blue"),
        CatBreed(name: "Abyssinian", origin: "Ethiopia", story: "The Abyssinian cat is an ancient breed, thought to be one of the oldest known cat breeds, originating in Ethiopia.", image: "abyssinian"),
        CatBreed(name: "Ragdoll", origin: "United States", story: "The Ragdoll cat is large, affectionate, and docile, known for going limp when picked up, hence the name.", image: "Ragdoll"),
        CatBreed(name: "Scottish Fold", origin: "United Kingdom", story: "The Scottish Fold cat is recognized by its unique folded ears, which originated due to a genetic mutation in Scotland.", image: "Scottish-Fold"),
        CatBreed(name: "Norwegian Forest Cat", origin: "Norway", story: "The Norwegian Forest Cat is a hardy breed, adapted to cold climates with its thick double coat and bushy tail.", image: "Norwegian-Forest"),
        CatBreed(name: "Birman", origin: "Myanmar", story: "The Birman is known as the 'Sacred Cat of Burma' and is recognized by its silky fur, blue eyes, and white-gloved paws.", image: "Birman-Cat"),
        CatBreed(name: "Turkish Van", origin: "Turkey", story: "The Turkish Van is a rare breed known for its love of swimming and unique white body with colored markings on the head and tail.", image: "turkish_van"),
        CatBreed(name: "Oriental Shorthair", origin: "Thailand", story: "The Oriental Shorthair is a sleek and elegant breed, related to the Siamese, but available in a variety of colors and patterns.", image: "Oriental-Short-Hair"),
        CatBreed(name: "Devon Rex", origin: "United Kingdom", story: "The Devon Rex is a playful breed with large ears and a soft, curly coat, often called a 'pixie cat' due to its impish looks.", image: "Devon-Rex"),
        CatBreed(name: "Savannah", origin: "United States", story: "The Savannah is a hybrid cat, a mix between a domestic cat and a serval, known for its striking spotted coat and dog-like loyalty.", image: "savannah"),
        CatBreed(name: "Egyptian Mau", origin: "Egypt", story: "The Egyptian Mau is one of the few naturally spotted domestic cat breeds and is revered for its agility and grace.", image: "Egyptian-Mau"),
        CatBreed(name: "Tonkinese", origin: "Canada", story: "The Tonkinese is a cross between the Siamese and Burmese breeds, known for its affectionate and social personality.", image: "tonkinese"),
        CatBreed(name: "Himalayan", origin: "United States/United Kingdom", story: "The Himalayan is a cross between a Persian and a Siamese, featuring a luxurious coat and striking color points.", image: "himalayan"),
        CatBreed(name: "Chartreux", origin: "France", story: "The Chartreux is a quiet and affectionate breed, known for its blue-gray coat and expressive copper-colored eyes.", image: "chartreux-cat")
    ]
}
