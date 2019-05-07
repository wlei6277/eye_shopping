module ApplicationHelper
    def find_favourite(product)
        product.favourites.find_by_user_id(current_user.id)
    end

    #get_top_products_for_followed_user is a helper method for the my_following view
    #The method queries the products table to get the first number of products for the user
    #specified by (the followed_user:) named argument up until the amount of products to displayed given by the (threshold:) named argument  
    def get_top_products_for_followed_user(followed_user:, threshold: )
        top_products = []
        followed_user.products.each_with_index do |product, i|
            top_products.push(product)
            if i == threshold - 1
                break
            end
        end
        top_products
    end
            
end
