SELECT
DISTINCT image.id as id,
CONCAT ('media/images/popup/',image.file) as url,
image.file as title,
descr.media_description as description,
descr.language_code

FROM `xt_products` as prod

LEFT JOIN `xt_media_link` as medialink ON prod.products_id = medialink.link_id AND medialink.type = 'images'

LEFT JOIN `xt_media` as image ON medialink.m_id = image.id OR (prod.products_image = image.file and prod.products_image IS NOT NULL)

LEFT JOIN xt_media_description descr ON image.id = descr.id

WHERE descr.language_code=:lang_id AND prod.products_id=:product_id
