count = 0
last_id = User.last[:id]

while count <= 10
	last_id += 1
	count += 1
	user = User.new(id: last_id, name: "User #{count}")
	user.save
end




count = 1
while (count <= 10)
	user_to_delete = User.find_by name: "User #{count}"
	user_to_delete.destroy
	count += 1
end