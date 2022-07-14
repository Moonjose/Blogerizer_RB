Article.delete_all

user = User.first
text = "Quisque id tortor fermentum, vulputate mi sed, congue nibh. Curabitur magna arcu, suscipit et ultrices id, pellentesque eget risus. Nulla sed felis quis nulla tristique laoreet. Nam felis magna, luctus non ex ut, rhoncus elementum purus. Sed ac ultrices neque. Etiam consequat bibendum mi, non malesuada erat lacinia ultrices. Phasellus eros lectus, ornare ac est ac, ultrices ullamcorper purus. Donec porta massa vel facilisis varius. Sed et imperdiet ligula. Duis lobortis euismod tortor in vestibulum. Quisque a condimentum odio. Ut eget scelerisque ligula. Cras id tempus sem, non elementum magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus id sagittis purus. Phasellus laoreet risus non placerat lobortis."

p 'Seeding ...'
Category.all.each do |category|
 30.times do 
  Article.create!(
    title: "Article #{rand(10000)}",
    body: text,
    category_id: category.id,
    user_id: user.id,
    created_at: rand(365).days.ago
  )
 end
end
p 'Finish'
