require 'spec_helper'
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
  scenario "linear equation: fail input equation" do
    visit '/'
    choose('linear') # choose radiobutton
    page.find_field('first_coeflin').set("1A")
    sleep(1)
    page.find_field('second_coeflin').set(4)
    sleep(1)
    page.find_field('third_coeflin').set(6)
    sleep(1)
    expect(page).to have_content("Please enter only digits")
  end
end

# feature "Output" do
#   scenario "linear equation: solving linear equation" do
#     visit '/'
#     choose('linear') # choose radiobutton
#     page.find_field('first_coeflin').set(1)
#     sleep(1)
#     page.find_field('second_coeflin').set(2)
#     sleep(1)
#     page.find_field('third_coeflin').set(3)
#     sleep(1)
#     click_on('Answer')
#     expect(page).to have_content("Answer: x = 1 ")
#   end
# end

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
  scenario "quadratic equation: find fields in quadratic equation" do
    visit '/'
    choose('quadratic') # choose radiobutton
    page.find_field('first_coefqua').set("a1")
    sleep(1)
    page.find_field('second_coefqua').set(4)
    sleep(1)
    page.find_field('third_coefqua').set(6)
    sleep(1)
    page.find_field('fourth_coefqua').set(6)
    expect(page).to have_content("Please enter only digits")
  end

end

# feature "Output" do
#   scenario "quadratic equation: solving quadratic equation D > 0" do
#     visit '/'
#     choose('linear') # choose radiobutton
#     page.find_field('first_coeflin').set(1)
#     sleep(1)
#     page.find_field('second_coeflin').set(1)
#     sleep(1)
#     page.find_field('third_coeflin').set(1)
#     sleep(1)
#     page.find_field('fourth_coefqua').set(1)
#     click_on('Answer')
#     expect(page).to have_content("Answer: x1 = -1.0, x2 = 0.0")
#   end
#   scenario "quadratic equation: solving quadratic equation D < 0" do
#     visit '/'
#     choose('linear') # choose radiobutton
#     page.find_field('first_coeflin').set(100)
#     sleep(1)
#     page.find_field('second_coeflin').set(1)
#     sleep(1)
#     page.find_field('third_coeflin').set(2)
#     sleep(1)
#     page.find_field('fourth_coefqua').set(0)
#     click_on('Answer')
#     expect(page).to have_content("Answer: no roots")
#   end
#   scenario "quadratic equation: solving quadratic equation D = 0" do
#     visit '/'
#     choose('linear') # choose radiobutton
#     page.find_field('first_coeflin').set(1)
#     sleep(1)
#     page.find_field('second_coeflin').set(2)
#     sleep(1)
#     page.find_field('third_coeflin').set(1)
#     sleep(1)
#     page.find_field('fourth_coefqua').set(0)
#     click_on('Answer')
#     expect(page).to have_content("Answer: x = -1")
#   end
# end

