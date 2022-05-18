-- First Query: Jewelry products.

    SELECT grommet_products.product_name, grommet_gifts_categories.category, grommet_products.product_url, grommet_products.product_price_min, grommet_products.product_short_description
    FROM grommet_product_categories, grommet_products, grommet_gifts_categories, grommet_product_to_keyword, grommet_product_keywords
    WHERE grommet_products.id LIKE grommet_product_categories.product_id 
    AND grommet_product_categories.product_category_id=grommet_gifts_categories.id
    AND grommet_product_to_keyword.product_id=grommet_products.id
    AND grommet_product_keywords.id=grommet_product_to_keyword.keyword_id
    AND grommet_products.is_sold_out=0
    AND grommet_gifts_categories.sub_category LIKE "%Jewelry%";
