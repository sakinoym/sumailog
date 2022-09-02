(1..5).each do |number|
 User.create(name: 'test' + number.to_s, email: 'test' + number.to_s + '@mail.com', password: 'test1234')
end
