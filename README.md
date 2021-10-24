
1. `bundle`
2. Run `RAILS_ENV=production rake db:create db:migrate db:seed`
3. Run `rake secret` and copy the output
4. From the command line: `export SECRET_KEY_BASE=output-of-rake-secret`
5. Run `RAILS_ENV=production rails s` and you should see your app. 

This repo only has one api endpoint
	
    api/v1/books/update

The endpoint has two result json, if you want to see first payload you should post it with params book[type] = 'guest' and required book[guest_id], and the second payload you should post it with params book[type] = 'reservation' and required params book[reservation_id]
