module ApplicationHelper
    def find_favourite(product)
        product.favourites.find_by_user_id(current_user.id)
    end

    #select_products is a helper method to get the first x number of products for a given user profile
    #The method queries the products table to get the first number of products for the user profile
    #specified by the (user_profile:) named argument up until the amount of products to displayed given by the (num_of_products:) named argument  
    def select_products(user_profile:, num_of_products: )
        product_row = []
        user_profile.products.each_with_index do |product, i|
            product_row.push(product)
            if i == num_of_products - 1
                break
            end
        end
        product_row
    end
            
end
