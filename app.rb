get '/' do
  require 'net/http'
  # @testimonials = Testimonial.all.sample(3)
  registered_users_url = 'http://bigdatauniversity.com/web/registered_users.php'
  get_registered_users = Net::HTTP.get_response(URI.parse(registered_users_url))
  @registered_users = get_registered_users.body

	haml :index
end

redirects = {
  'courses'   => 'http://bigdatauniversity.com/courses',
  'acm-icps'  => 'http://bigdatauniversity.com',
  'downloads' => 'http://bigdatauniversity.com/web/download.php',
  'resources' => 'http://bigdatauniversity.com/web/resources.php',
  'register'  => 'http://bigdatauniversity.com/courses/auth/openid/login.php',
  'login'     => 'http://bigdatauniversity.com/courses/auth/openid/login.php',
  'faq'       => 'http://bigdatauniversity.com/web/faq.php',
  'contact'   => 'http://bigdatauniversity.com/web/contact.php',
  'about'     => 'http://bigdatauniversity.com/web/about.php',
  'legal'     => 'http://bigdatauniversity.com/web/legal.php',
  'bugs'      => 'https://bitbucket.org/DB2UAdmin/bdu/issues/new'
}

redirects.each do | slug, outbound_url |
  get "/#{slug}/?" do
    redirect outbound_url
  end
end

get '/hadoop-and-big-data-video/?' do
  haml :vimeo, :layout => false
end

get '/beta/?' do
  haml :beta
end
