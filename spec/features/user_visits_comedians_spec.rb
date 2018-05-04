RSpec.describe 'A User' do
  describe 'visits /comedians' do
    it 'Displays a list of Comedians with name and age' do
      iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
      hannibal = Comedian.create(name: "Hannibal Buress", age: 34)
      mike = Comedian.create(name: "Mike Birbiglia", age: 39)

      visit '/comedians'

      expect(page).to have_content('Name: Mike Birbiglia')
      expect(page).to have_content('Name: Hannibal Buress')
      expect(page).to have_content('Name: Iliza Shlesinger')
      expect(page).to have_content('Age: 34')
      expect(page).to have_content('Age: 39')
    end
    it 'Displays a list of the comedians specials' do
      iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
      Special.create(name: "War Paint", comedian_id: iliza.id)
      Special.create(name: "Freezing Hot", comedian_id: iliza.id)
      Special.create(name: "Confirmed Kills", comedian_id: iliza.id)
      hannibal = Comedian.create(name: "Hannibal Buress", age: 34)
      Special.create(name: "My Name is Hannibal", comedian_id: hannibal.id)
      Special.create(name: "Animal Furnace", comedian_id: hannibal.id)
      Special.create(name: "Live from Chicago", comedian_id: hannibal.id)
      Special.create(name: "Comedy Camisado", comedian_id: hannibal.id)
      Special.create(name: "Hannibal Takes Edinburgh", comedian_id: hannibal.id)

      visit '/comedians'

      expect(page.find_by_id("Iliza_Shlesinger_specials")).to have_content("War Paint")
      expect(page.find_by_id("Iliza_Shlesinger_specials")).to have_content("Freezing Hot")
      expect(page.find_by_id("Iliza_Shlesinger_specials")).to have_content("Confirmed Kills")

      expect(page.find_by_id("Hannibal_Buress_specials")).to have_content("My Name is Hannibal")
      expect(page.find_by_id("Hannibal_Buress_specials")).to have_content("Animal Furnace")
      expect(page.find_by_id("Hannibal_Buress_specials")).to have_content("Live from Chicago")
      expect(page.find_by_id("Hannibal_Buress_specials")).to have_content("Comedy Camisado")
      expect(page.find_by_id("Hannibal_Buress_specials")).to have_content("Hannibal Takes Edinburgh")


    end
    it 'Displays the average age for all comedians' do
      iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
      hannibal = Comedian.create(name: "Hannibal Buress", age: 34)
      mike = Comedian.create(name: "Mike Birbiglia", age: 39)
      paul = Comedian.create(name: "Paul Mooney", age: 76)

      visit '/comedians'

      expect(page.find_by_id("average_age")).to have_content("Average Age: #{Comedian.average_age}")
    end
    it 'Displays a count of the specials for each comedian'do 
    end
  end
  describe 'queries for all comedians of a certain age' do
    it 'Displays a list comedians of a ceratin age' do
    end
  end
end
