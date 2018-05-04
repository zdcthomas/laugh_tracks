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
    end
    it 'Displays the average age for all comedians' do
    end
    it 'Displays a count of the specials for each comedian'do 
    end
  end
  describe 'queries for all comedians of a certain age' do
    it 'Displays a list comedians of a ceratin age' do
    end
  end
end
