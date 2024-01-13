Post.destroy_all
User.destroy_all

users = User.create! [
                       { user_name: 'sumanthmbhat@242798', first_name: 'Sumanth', last_name: 'Bhat', email_address: 'sumanthmbhat123@gmail.com', phone_number: 6478797330, password: 'Garr@242798' },
                       { user_name: 'pooja@2798', first_name: 'Pooja', last_name: 'Bhat', email_address: 'pooja.v.bhat1998@gmail.com', phone_number: 7483421532, password: 'poojabhat@2798' },
                       { user_name: 'neilsondesh', first_name: 'Neelanjan', last_name: 'Goswami', email_address: 'neilgoswami@gmail.com', phone_number: 6479495229, password: 'neilgoswami@123' },
                       { user_name: 'girishgoaplrao', first_name: 'Girish', last_name: 'Gopal', email_address: 'girish.gopal.rao@gmail.com', phone_number: 9059626185, password: 'girish@234' },
                       { user_name: 'ayushisinghal@123', first_name: 'Ayushi', last_name: 'Singhal', email_address: 'ayushisinghal999@gmail.com', phone_number: 6138901058, password: 'ayushi@999' }
                     ]

Post.create! [
               { caption: 'Very Good Morning to all here !!', user_id: users.sample.id },
               { caption: 'Programming Ruby on rails is fun', user_id: users.sample.id },
               { caption: 'Travelling to Canada !!', user_id: users.sample.id },
               { caption: 'Chilling with friends!!!', user_id: users.sample.id },
               { caption: 'Happy birthday my dear bestie!!!!', user_id: users.sample.id }
             ]

comment = Post.find_by_caption('Very Good Morning to all here !!')
comment.comments.create! [
                           { comment_text: 'Good morning!!!!' }
                         ]
comment_1= Post.find_by_caption('Programming Ruby on rails is fun')
comment_1.comments.create! [
                             { comment_text: 'Happy birthday dear friend!!!' }
                           ]