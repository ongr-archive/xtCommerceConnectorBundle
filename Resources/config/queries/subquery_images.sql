SELECT
image.id as id,
CONCAT ('media/images/popup/',image.file) as url,
image.file as title,
descr.media_description as description,
descr.language_code

FROM xt_media as image

LEFT JOIN xt_media_description descr ON image.id = descr.id

WHERE descr.language_code=:lang_id and image.file=:image_id

GROUP BY descr.language_code, image.id
