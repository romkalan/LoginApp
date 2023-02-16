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
                biography: "Роман Ланцов родился в 1992 году в городе Кяхта республика Бурятия. Роман был все детство достаточно стеснительным ребенком, но после студенческих лет начал активно социализироваться. Ушел в преподавательскую сферу деятельности, а затем начал организовывать и проводить чемпионаты по приготовлению кофе и чая. Хобби Романа - настольные игры, но из-за их популярности лучше получается их коллекционировать. Также у Романа есть кошка",
                pet: Pet(name: "Бьянка", toy: "Резиновая мышь")
            )
        )
    }
}

struct Person {
    let name: String
    let surName: String
    let age: Int
    let biography: String
    let pet: Pet
}

struct Pet {
    let name: String
    let toy: String
}






