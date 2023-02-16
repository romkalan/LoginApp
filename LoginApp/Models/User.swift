//
//  Information.swift
//  LoginApp
//
//  Created by Roman Lantsov on 16.02.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUserInformation() -> User {
        User(
            userName: "User",
            password: "123",
            person: Person(
                name: "Роман",
                surName: "Ланцов",
                age: 30,
                hobby: .boardGames,
                pet: Pet(kind: .cat, name: "Бьянка", toy: "резиновая мышь")
            )
        )
    }
}

struct Person {
    let name: String
    let surName: String
    let age: Int
    let hobby: Hobby?
    let pet: Pet?
}

struct Pet {
    let kind: Kind
    let name: String
    let toy: String
}

enum Kind: Character {
    case cat = "🐱"
    case dog = "🐶"
    case bird = "🐦"
}

enum Hobby: String {
    case swimming = "Плавание"
    case jogging = "Бег"
    case boardGames = "Настольные игры"
}



