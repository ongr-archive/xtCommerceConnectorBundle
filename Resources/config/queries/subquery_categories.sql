SELECT

cat.categories_id as id,
cat.sort_order as sort,
cat.categories_status as active,
cat.parent_id as parentId,
descr.categories_name as title,
cat.categories_left as `left`,
cat.categories_right as `right`

FROM `xt_products` as prod

LEFT JOIN `xt_products_to_categories` as prod_cat ON prod.products_id = prod_cat.products_id

LEFT JOIN `xt_categories` as cat ON cat.categories_id=prod_cat.categories_id

LEFT JOIN `xt_categories_description` as descr ON cat.categories_id=descr.categories_id

WHERE descr.language_code=:lang_id AND prod_cat.store_id=:store_id AND prod.products_id=:id
