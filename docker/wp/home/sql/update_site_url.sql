update
    wp_options
set
    option_value = replace(
        option_value,
        '${OLD_SITE_URL}',
        '${WP_SITEURL}'
    )
where
    option_name = 'home'
    OR option_name = 'siteurl';

update
    wp_posts
set
    guid = replace(guid, '${OLD_SITE_URL}', '${WP_SITEURL}');

update
    wp_posts
set
    post_content = replace(
        post_content,
        '${OLD_SITE_URL}',
        '${WP_SITEURL}'
    );

update
    wp_postmeta
set
    meta_value = replace(meta_value, '${OLD_SITE_URL}', '${WP_SITEURL}');
