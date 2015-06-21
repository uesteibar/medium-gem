# Ruby gem that provides a Medium.com read-only API

-> to get a medium.com user

		user = MediumScrapper.new.load_user("uesteibar")
		
User object:

	User
		:name #=> full name
		:username #=> username
		:user_id #=> user_id in medium
		:bio #=> user bio
		:posts #=> array of posts
		
Post object:

	Post
		:title #=> post title
		:subtitle #=> post subtitle
		:content #=> full post content

