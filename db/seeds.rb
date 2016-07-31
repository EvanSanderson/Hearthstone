# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deck.destroy_all
Card.destroy_all

zoolock = Deck.create(name: "Zoolock", character_class: "Warlock", style: "aggro/face")
renopriest = Deck.create(name: "Reno Priest", character_class: "Priest", style: "control")
nzoth_paladin = Deck.create(name: "N'Zoth Paladin", character_class: "Paladin", style: "midrange/control")
#
# darkshire = Card.create(name: "Darkshire Councilor", effect: "Gain +1 Attack", attack: 1, defense: 5, deck_id: zoolock.id)
# reno = Card.create(name: "Reno Jackson", effect: "One of each card? Heals you!", attack: 4, defense: 6, deck_id: renopriest.id)
# tyrion = Card.create(name: "Tyrion Fordring", effect: "Taunt, Divine Shield, Deathrattle: Summon 5/3 Ashbringer", attack: 6, defense: 6, deck_id: nzoth_paladin.id)
