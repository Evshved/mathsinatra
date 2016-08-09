scenario "Input data" do
  feature ", linear equation" do

    it "should find fields in linear equation:" do
      visit '/'
      choose('linear') # choose radiobutton
      find_field('k').value
      find_field('c').value
      find_field('y').value
    end

    it "should fill fields in linear equation:" do
      visit '/'
      choose('linear') # choose radiobutton
      fill_in('k'), with: "1"
      fill_in('c'), with: "1"
      fill_in('y'), with: "1"
    end

    it "should have fields in linear equation:" do
      visit '/'
      choose('linear')
      find_field('k').value
      find_field('c').value
      find_field('y').value
      expect(page).to have_content 'Success'
    end

  end

  feature ", quadratic equation" do
    it "should find fields in quadratic equation:" do
    visit '/'
    choose('quadratic') # choose radiobutton
    find_field('x2').value
    find_field('x').value
    find_field('c').value
    find_field('y').value
  end

  it "should fill fields in quadratic equation:" do
    visit '/'
    choose('quadratic') # choose radiobutton
    fill_in('x2'), with: "1"
    fill_in('x'), with: "10"
    fill_in('c'), with: "1"
    fill_in('y'), with: "1"
  end

end

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



# end

