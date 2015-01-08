SELECT
  content_id as id,
  content.language_code,
  content_title as title,
  content_body as content,
  seo.url_text as slug

FROM xt_content_elements as content

left join xt_seo_url as seo ON content.language_code=seo.language_code AND content.content_id = seo.link_id AND link_type=3

WHERE content.language_code=:lang_id

GROUP BY content.language_code, content_id
