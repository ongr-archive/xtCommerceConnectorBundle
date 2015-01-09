SELECT

    cat.categories_id as id,
    cat.sort_order as sort,
    cat.categories_status as active,
    cat.parent_id as parentId,
    descr.categories_name as title,
    cat.categories_left as `left`,
    cat.categories_right as `right`

FROM xt_categories as cat

LEFT JOIN xt_categories_description as descr ON cat.categories_id=descr.categories_id

WHERE descr.categories_store_id=:store_id AND descr.language_code=:lang_id

GROUP BY descr.language_code, cat.categories_id, descr.categories_store_id
