//
//  CurrentStock.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import Foundation

/// The date for the store, which is mocked locally for this showcase.
class CurrentStock {
    
    ///An array of ShoppingItem objects, representing the current items available in the store
    let items: [ShoppingItem] = [
        ShoppingItem(name: "Quantum Smartphone",
                     price: 2499.99,
                     imageName: "quantumSmartphone.jpg"),
        ShoppingItem(name: "Holographic Display",
                     price: 2999.00,
                     imageName: "holographicDisplay.jpg"),
        ShoppingItem(name: "Smart Contact Lens",
                     price: 1599.00,
                     imageName: "smartContactLens.jpg"),
        ShoppingItem(name: "Invisible Drone",
                     price: 1199.00,
                     imageName: "invisibleDrone.jpg"),
        ShoppingItem(name: "Thought-to-Text Converter",
                     price: 2199.00,
                     imageName: "thoughtToText.jpg"),
        ShoppingItem(name: "Teleportation Device",
                     price: 1000000.00,
                     imageName: "teleportationDevice.jpg"),
        ShoppingItem(name: "AI Personal Chef",
                     price: 2599.00,
                     imageName: "aiPersonalChef.jpg"),
        ShoppingItem(name: "3D Food Printer",
                     price: 1899.00,
                     imageName: "3dFoodPrinter.jpg"),
        ShoppingItem(name: "Mood Suit (Changes Color According to Mood)",
                     price: 799.00,
                     imageName: "moodSuit.jpg"),
        ShoppingItem(name: "Time Machine (As Is, No Warranty)",
                     price: 9999999.99,
                     imageName: "timeMachine.jpg"),
        ShoppingItem(name: "Personal Robot Butler",
                     price: 9999.00,
                     imageName: "robotButler.jpg"),
        ShoppingItem(name: "Anti-Gravity Boots",
                     price: 1299.99,
                     imageName: "antiGravityBoots.jpg"),
        ShoppingItem(name: "Dream Recorder",
                     price: 5499.00,
                     imageName: "dreamRecorder.jpg"),
        ShoppingItem(name: "Holographic Personal Trainer",
                     price: 1999.00,
                     imageName: "holographicTrainer.jpg"),
        ShoppingItem(name: "Mind-Reading Headset",
                     price: 4999.99,
                     imageName: "mindReadingHeadset.jpg"),
        ShoppingItem(name: "Personal Submarine",
                     price: 30000.00,
                     imageName: "personalSubmarine.jpg"),
        ShoppingItem(name: "Invisibility Cloak",
                     price: 7000.00,
                     imageName: "invisibilityCloak.jpg"),
        ShoppingItem(name: "Telepathic Typewriter",
                     price: 2500.00,
                     imageName: "telepathicTypewriter.jpg"),
        ShoppingItem(name: "Personal Weather Control Device",
                     price: 10000.00,
                     imageName: "weatherControlDevice.jpg"),
        ShoppingItem(name: "Life-Like AI Pet",
                     price: 499.00,
                     imageName: "aiPet.jpg")]
}
