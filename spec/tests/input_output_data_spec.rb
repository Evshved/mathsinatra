feature "Input " do
  scenario "linear equation: find fields in linear equation" do
    visit '/'
    choose('linear') # choose radiobutton
    page.find_field('first_coeflin').set(1)
    sleep(1)
    page.find_field('second_coeflin').set(4)
    sleep(1)
    page.find_field('third_coeflin').set(6)
    sleep(1)
  end
end

feature "Input " do
  scenario "quadratic equation: find fields in quadratic equation" do
    visit '/'
    choose('quadratic') # choose radiobutton
    page.find_field('first_coefqua').set(1)
    sleep(1)
    page.find_field('second_coefqua').set(4)
    sleep(1)
    page.find_field('third_coefqua').set(6)
    sleep(1)
    page.find_field('fourth_coefqua').set(6)
  end

end

# find_button('Answer', match: :first)

# feature "Output data:" do

#   it "should fill fields in linear equation:" do
#     visit '/'
#     choose('linear')
#     find_field('k').value
#     find_field('c').value
#     find_field('y').value
#     expect(page).to have_content 'Success'
#   end

#   it "should fill fields in quadratic equation:" do
#     visit '/'
#     choose('quadratic')
#     find_field('x2').value
#     find_field('x').value
#     find_field('c').value
#     find_field('y').value
#     expect(page).to have_content 'Success'
#   end
