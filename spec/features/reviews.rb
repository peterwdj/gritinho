feature 'add review' do
  scenario 'add a review with comments' do
    visit '/reviews/new'
    choose ('5')
    fill_in 'reviews', with: 'Amazing restaurant'
    click_button 'Save Review'
    expect(current_path).to eq '/reviews/1'
  end
end
