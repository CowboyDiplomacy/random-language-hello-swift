//
//  Greetings.swift
//  KirklandYuknis
//
//  Created by Kirkland Yuknis on 12/14/16.
//  Copyright © 2016 Kirkland Yuknis. All rights reserved.
//  KirklandYuknis.com
//

import UIKit

class RandomMessageGenerator {
    
    private static var _greetings: [String] = [
        "Hello",
        "Hola",
        "Marhaba",
        "Senga yai",
        "Tungjatjeta",
        "Barev",
        "Kon ta bai",
        "Olá",
        "Hallo",
        "Kon ta bai",
        "Salam",
        "Zdravo",
        "Namaskar",
        "Bonjour",
        "Zdravei",
        "Marhaba",
        "Selamat",
        "Olá",
        "Kuzu zangpo",
        "Dumela",
        "Вітаю",
        "Kia orana",
        "Olá",
        "Dobrý den",
        "Marhaba",
        "Hej",
        "Marhaba",
        "Tervist",
        "Marhaba",
        "Marhaba",
        "Teanastëllën",
        "Moi",
        "Gamardjobat",
        "Aluu",
        "Olá",
        "Bok",
        "Jó napot",
        "Selamat",
        "Haileo",
        "Shalom",
        "Marhaba",
        "Salâm",
        "Góðan daginn",
        "Buon giorno",
        "Marhaba",
        "Habari",
        "Kandisiz",
        "Sua s\'dei",
        "Mauri",
        "Bariza djioni",
        "Marhaba",
        "Salam",
        "Sabaidee",
        "Marhaba",
        "A`yubowan",
        "Laba diena",
        "Moïen",
        "Sveiki",
        "Marhaba",
        "Marhaba",
        "Salut",
        "Zdravo",
        "Manao ahoana",
        "Yokwe",
        "Mingalarba",
        "Sain baina uu",
        "Marhaba",
        "Bongu",
        "Kihineth",
        "Muribwanji",
        "Selamat",
        "Olá",
        "Bozo",
        "Whataway",
        "Namaste",
        "Faka lofa lahi atu",
        "Marhaba",
        "Adaab",
        "Dzień dobry",
        "Marhaba",
        "Olá",
        "Alii",
        "Marhaba",
        "Salut",
        "Zdravo",
        "Marhaba",
        "Marhaba",
        "God dag",
        "Selamat",
        "Živijo",
        "Dobrý deň",
        "Buon giorno",
        "Maalim wanaqsan",
        "Marhaba",
        "Marhaba",
        "Sawatdi",
        "Salom",
        "Taloha",
        "Salam",
        "Marhaba",
        "Malo e lelei",
        "Merhaba",
        "Talofa",
        "Habari",
        "Pryvit",
        "Habari",
        "Buon giorno",
        "Chào",
        "Malo le kataki",
        "Talofa",
        "Marhaba",
        "Aloha",
        "你好",
        "こんにちは",
        "여보세요",
        "Здравствуйте",
        "Q'pla"
    ]
    
    private static var _christmasGreetings: [String] = [
        "Merry Christms",
        "Mele Kalikimaka",
        "Geseënde Kersfees",
        "Afishapa",
        "መልካም ገና",
        "Moni Wa Chikondwelero Cha Kristmasi",
        "Ni ti Burunya Chou",
        "Iselogbe",
        "Jabbama be salla Kirismati",
        "barka dà Kirsìmatì",
        "Idara ukapade isua",
        "E keresimesi Oma",
        "Noheli nziza",
        "Mbotama Malamu",
        "Seku Kulu",
        "Izilokotho Ezihle Zamaholdeni",
        "Muve neKisimusi",
        "Kirismas Wacan",
        "Le be le keresemese e monate",
        "Krismasi Njema",
        "Heri ya Krismasi",
        "Ruhus Beal Lidet",
        "E ku odun, e ku iye'dun",
        "UKhisimusi omuhle",
        "Christmas Mubarak",
        "Gëzuar Krishtlindjen",
        "Eid Milad Majid",
        "Շնորհավոր Ամանոր և Սուրբ Ծնունդ",
        "Vrolijk Kerstfeest",
        "Joyeux Noël",
        "Frohe Weihnachten",
        "djoyeus Noyé",
        "E güeti Wïnâchte",
        "Vesela Koleda",
        "圣诞快乐",
        "聖誕快樂",
        "Sretan Božić",
        "Vesele Vanoce",
        "Glædelig Jul",
        "Feliĉan Kristnaskon",
        "Rõõmsaid Jõulupühi",
        "Hyvää joulua",
        "Nedeleg Laouen",
        "Bon Natale",
        "გილოცავ შობა-ახალ წელს",
        "සුබ නත්තලක් වේවා",
        "'Христос Рождається' Khrystos Rozhdayetsia",
        "'Веселого Різдва' Veseloho Rizdva",
        "Chuć Mưǹg Giańg Sinh",
        "Nadolig Llawen",
        "toDwI'ma' qoS yItIvqu'",
        "Alassë a Hristomerendë",
        "Mereth Veren e-Doled Eruion"
    ]
    
    private static var _goodOutcomes: [String] = [
        "Way to go",
        "You did it",
        "Now on to what's next",
        "Great things are comming",
        "Brilliant",
        "Amazing",
        "Good job",
        "Keep it up"
    ]
    
    public static func fetchRandomHello() -> String {
        let randomNumber: Int = generateRandomIndex(withMaxNumber: _greetings.count)
        return _greetings[randomNumber]
    }
    
    public static func fetchRandomGoodMessage() -> String {
        let randomNumber: Int = generateRandomIndex(withMaxNumber: _goodOutcomes.count)
        return _goodOutcomes[randomNumber]
    }
    
    private static func generateRandomIndex(withMaxNumber maxNumber: Int) -> Int {
        let maxNumber: UInt32 = UInt32(maxNumber)
        let randomNumber = arc4random_uniform(maxNumber)
        return Int(randomNumber)
    }
    
    
}
