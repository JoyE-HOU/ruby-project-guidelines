Pet.destroy_all
Item.destroy_all
Petitem.destroy_all

pet1 = Pet.create(name: "Rosey", breed: "dog", age: 4)
pet2 = Pet.create(name: "Winter", breed: "dog", age: 2)
pet3 = Pet.create(name: "Tucker", breed: "dog", age: 5)
pet4 = Pet.create(name: "Samson", breed: "dog", age: 8)

dogtoy1 = Item.create(name: "Tennis Ball", price: 5)
dogtoy2 = Item.create(name: "Bone", price: 4)

dog_item1 = Petitem.create(pet_id: pet1.id, item_id: dogtoy1.id)
dog_item2 = Petitem.create(pet_id: pet2.id, item_id: dogtoy1.id)
dog_item3 = Petitem.create(pet_id: pet3.id, item_id: dogtoy1.id)
dog_item4 = Petitem.create(pet_id: pet4.id, item_id: dogtoy1.id)
dog_item5 = Petitem.create(pet_id: pet1.id, item_id: dogtoy2.id)
dog_item6 = Petitem.create(pet_id: pet2.id, item_id: dogtoy2.id)
dog_item7 = Petitem.create(pet_id: pet3.id, item_id: dogtoy2.id)
dog_item8 = Petitem.create(pet_id: pet4.id, item_id: dogtoy2.id)



puts "seed file ran!!"