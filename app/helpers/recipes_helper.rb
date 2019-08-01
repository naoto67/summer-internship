module RecipesHelper
  def image_path(image_url)
    default_image_url = "https://www.shoshinsha-design.com/wp-content/uploads/2016/10/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88-2016-10-08-23.33.04-705x460.png"
    image_url || default_image_url
  end
end
