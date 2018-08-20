module ProductsHelper

  def product_image(product, image, order_no, order, active)
   
    html = <<-PRODUCT_IMAGES
    <div class="#{active} item carousel-item" data-slide-number="#{order_no}">
      <div id='#{order}-#{product.id}'>
      <img  class="img-fluid" alt="" src="#{!(image.blank?)  ? image : 'http://placehold.it/600x600'}">
      </div>
    </div>
    PRODUCT_IMAGES
    html
  end

  def product_image_thumb(product, image, order_no, order, active)

    html = <<-PRODUCT_IMAGES
      <li class="list-inline-item #{active}">
        <a id="carousel-selector-#{order_no}" class="selected" data-slide-to="#{order_no}" data-target='#myCarousel-#{product.id}'>
          <img  class="img-fluid" alt="" 
              src="#{(!(image.blank?) && (image.include? "cdn.myshopmatic.com"))  ? image.sub(/(.*)\b.\b/i, '\1_s.') : image}" width="80">
        </a>
      </li>
    PRODUCT_IMAGES
    html
  end

end
