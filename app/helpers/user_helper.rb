module UserHelper
 def gravatar_for(user, options = { size: 50 })
    size = options[:size]
    
    #gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    #gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
    #gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    if user.picture?
    	image_tag(user.picture.url, size: "50", alt: "Missing image", class: "gravatar")
    else
    	image_tag "baddy.png", alt: "Missing image", size: "50"
    end
  end
end
