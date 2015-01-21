/* Provides data for sync. */
INSERT INTO `xt_categories` VALUES (3,NULL,NULL,1,'',1,2,0,1,'','',0,'','',0,NULL,'2008-08-08 00:40:19',0,'',0,'');
INSERT INTO `xt_categories_description` VALUES (3,'de','New category',NULL,NULL,NULL,1);
INSERT INTO `xt_categories_description` VALUES (3,'en','New category ENGLISH',NULL,NULL,NULL,1);
-- 0 U category : 3
UPDATE `xt_categories_description` SET categories_name='Altered category' where categories_id=1;
-- 1 U category : 1
UPDATE `xt_seo_url` SET url_text='URL change test' WHERE link_id=1 and link_type=3;
-- 2 U content : 1
UPDATE `xt_media` set file='Image_description_test' WHERE id=1;
-- 3 U image : 2
UPDATE `xt_products_to_categories` set categories_id=3 WHERE `products_id`=1;
-- 4 U product : 1
UPDATE `xt_products_description` set products_description='product_description_changed' WHERE `products_id`=2;
-- 5 U product : 2
UPDATE `xt_media_link` set m_id=1 WHERE `link_id`=3 and `type`='images';
-- 6 U product : 3
DELETE FROM `xt_products` WHERE products_id=4;
-- 7 D product : 4


