# Run the app in debug mode on port 5000
run:
	cd tutorial; flask --app flaskr init-db  # initializes the database
	cd tutorial; flask --app flaskr run --debug --port 5000

# Register several users with the app
users:
	curl -X POST http://127.0.0.1:5000/auth/register \
		-d "username=user1&password=password1"
	curl -X POST http://127.0.0.1:5000/auth/register \
		-d "username=user2&password=password2"
	curl -X POST http://127.0.0.1:5000/auth/register \
		-d "username=alice&password=alicepass"
	curl -X POST http://127.0.0.1:5000/auth/register \
		-d "username=bob&password=bobpass"
	curl -X POST http://127.0.0.1:5000/auth/register \
		-d "username=charlie&password=charliepass"

# Get a copy of the tutorial from the flask repo on github.com using SSH
setup:
	git clone git@github.com:pallets/flask.git
	cp -r flask/examples/tutorial .
	rm -rf flask  # delete the flask repo that we just cloned
