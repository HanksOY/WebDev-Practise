# Run the app in debug mode on port 8000
run:
	cd tutorial; flask --app flaskr init-db  # initializes the database
	cd tutorial; flask --app flaskr run --debug --port 8000

# Register several users with the app
users:
	# add some curl commands here

# Get a copy of the tutorial from the flask repo on github.com using SSH
setup:
	git clone git@github.com:pallets/flask.git
	cp -r flask/examples/tutorial .
	rm -rf flask  # delete the flask repo that we just cloned
