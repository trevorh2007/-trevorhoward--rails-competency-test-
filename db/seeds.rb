User.create!(email: "user@test.com", password: "asdfasdf", roles: "user")

puts "1 User created"

User.create!(email: "admin@test.com", password: "asdfasdf", roles: "site_admin")

puts "1 Admin created"

User.create!(email: "editor@test.com", password: "asdfasdf", roles: "editor")

puts "1 Editor created"

3.times do |article|
	Article.create!(
		title: "Article #{article}",
		content: "Bacon ipsum dolor amet shankle prosciutto drumstick, chicken pork loin sirloin strip steak tail ham brisket. Tongue corned beef picanha turkey, porchetta strip steak short loin turducken shankle kielbasa. Flank jerky frankfurter drumstick pancetta. Pastrami cupim pancetta, pork loin kielbasa tenderloin fatback drumstick frankfurter ham biltong. Andouille brisket filet mignon shoulder kielbasa porchetta beef ribs pancetta chuck turducken pork loin pork belly landjaeger prosciutto. Fatback chuck leberkas, biltong alcatra tongue ham hock sausage pork chop tail shankle sirloin.",
		category: "News",
		user_id: User.first.email
		)
end

3.times do |article|
	Article.create!(
		title: "Article #{article + 3}",
		content: "Bacon ipsum dolor amet shankle prosciutto drumstick, chicken pork loin sirloin strip steak tail ham brisket. Tongue corned beef picanha turkey, porchetta strip steak short loin turducken shankle kielbasa. Flank jerky frankfurter drumstick pancetta. Pastrami cupim pancetta, pork loin kielbasa tenderloin fatback drumstick frankfurter ham biltong. Andouille brisket filet mignon shoulder kielbasa porchetta beef ribs pancetta chuck turducken pork loin pork belly landjaeger prosciutto. Fatback chuck leberkas, biltong alcatra tongue ham hock sausage pork chop tail shankle sirloin.",
		category: "Space",
		user_id: User.second.email
		)
end

3.times do |article|
	Article.create!(
		title: "Article #{article + 6}",
		content: "Bacon ipsum dolor amet shankle prosciutto drumstick, chicken pork loin sirloin strip steak tail ham brisket. Tongue corned beef picanha turkey, porchetta strip steak short loin turducken shankle kielbasa. Flank jerky frankfurter drumstick pancetta. Pastrami cupim pancetta, pork loin kielbasa tenderloin fatback drumstick frankfurter ham biltong. Andouille brisket filet mignon shoulder kielbasa porchetta beef ribs pancetta chuck turducken pork loin pork belly landjaeger prosciutto. Fatback chuck leberkas, biltong alcatra tongue ham hock sausage pork chop tail shankle sirloin.",
		category: "Technology",
		user_id: User.last.email
		)
end

puts "9 articles created"