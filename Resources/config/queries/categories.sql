SELECT

    cat.categories_id,
    cat.sort_order as sort,
    cat.categories_status as active,
    cat.parent_id as parentId,
    descr.categories_name as title,
    cat.categories_left as `left`,
    cat.categories_right as `right`

FROM xt_categories as cat

LEFT JOIN xt_categories_description as descr ON cat.categories_id=descr.categories_id

GROUP BY language_code, cat.categories_id, descr.categories_store_id

WHERE store_id=:store_id AND language_code=:lang_id
