SELECT
prod.products_id as id,
products_name as title,
products_short_description as description,
products_description as description,
products_ean as sku,
products_price as price,
de.language_code as lang_id,
products_url,
GROUP_CONCAT(DISTINCT seo.url_text SEPARATOR '|') as seo_urls,
products_store_id,
GROUP_CONCAT(DISTINCT prod_cat.categories_id SEPARATOR '|') as categories,
CONCAT(COALESCE(prod.products_image,''),'|', GROUP_CONCAT(COALESCE(DISTINCT images.file, '') SEPARATOR '|')) as images

FROM `xt_products` prod

LEFT JOIN `xt_products_to_categories` as prod_cat ON prod.products_id = prod_cat.products_id

LEFT JOIN `xt_media_link` as medialink ON prod.products_id = medialink.link_id AND medialink.type = 'images'

LEFT JOIN `xt_media` as images ON medialink.m_id = images.id

LEFT JOIN `xt_products_description` as de ON prod.products_id = de.products_id

LEFT JOIN `xt_seo_url` as seo ON seo.link_id = prod.products_id AND link_type=1 AND seo.language_code = de.language_code

Group by language_code, prod.products_id, products_store_id

WHERE de.language_code=:lang_id AND prod.products_store_id=:store_id
