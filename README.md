Rails[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

This will be my capstone's back-end readme

Step Log
1. create rails app using GA-boston's rails api template
2. deploy to heroku
3. generate Trip resource
  1. `bin/rails generate scaffold trip name:string`
  2. trip model inherits from ProtectedController
  3. `bin/rails generate migration AddUserToTrips user:references`
  4. user & trip models updated to show one:many relationship
  5. [C] update trip controller to make a trip for the user
  6. [R] update trip controller to return only an index of the user's trips
  7. [R] update trip controller to show a trip only if owned by that user
  8. [U] update trip if owned by that user
  9. [D] delete trip if owned by that user
4. generate Stop resource
  1. `bin/rails generate scaffold stop location:string date:date`
  2. stop model inherits from ProtectedController
  3. `bin/rails generate migration AddTripToStops trip:references`
  4. nest stop routes within trip routes
  5. trip & stop models updated to show one:many relationship
  6. set_trip for stop controller (make sure user is updating a trip that they own)
  7. [C] update stop controller to make a stop for a user's trip
  8. [R] update stop controller to return only an index of a user's trip
  9. [R] update stop controller to show a stop only if owned by that user's trip
  10. [U] update stop if owned by a user's trip
  11. [D] delete stop if owned by a user's trip

5. route for dark sky API
  1. add to gemfile: gem 'httparty' & gem 'figaro'


## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
