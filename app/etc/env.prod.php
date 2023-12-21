
text/x-generic env.php ( PHP script, ASCII text )
<?php
return [
    'backend' => [
        'frontName' => 'admin_1t423u'
    ],
    'cache' => [
        'graphql' => [
            'id_salt' => 'K4dxxtDDz0bWGUo9GZshvlIEQvNBmS33'
        ],
        'frontend' => [
            'default' => [
                'id_prefix' => '69d_'
            ],
            'page_cache' => [
                'id_prefix' => '69d_'
            ]
        ],
        'allow_parallel_generation' => false
    ],
    'remote_storage' => [
        'driver' => 'file'
    ],
    'queue' => [
        'consumers_wait_for_messages' => 1
    ],
    'crypt' => [
        'key' => 'caeeb244b731bf09fdf6a99369a38b60'
    ],
    'db' => [
        'table_prefix' => 'm2_',
        'connection' => [
            'default' => [
                'host' => 'localhost',
                'dbname' => 'singasus_magento_db',
                'username' => 'singasus_magento_user2',
                'password' => 'aD2.c<M&B+-n*lWn',
                'model' => 'mysql4',
                'engine' => 'innodb',
                'initStatements' => 'SET NAMES utf8;',
                'active' => '1',
                'driver_options' => [
                    1014 => false
                ]
            ]
        ]
    ],
    'resource' => [
        'default_setup' => [
            'connection' => 'default'
        ]
    ],
    'x-frame-options' => 'SAMEORIGIN',
    'MAGE_MODE' => 'default',
    'session' => [
        'save' => 'files'
    ],
    'lock' => [
        'provider' => 'db'
    ],
    'directories' => [
        'document_root_is_pub' => true
    ],
    'cache_types' => [
        'config' => 1,
        'layout' => 1,
        'block_html' => 1,
        'collections' => 1,
        'reflection' => 1,
        'db_ddl' => 1,
        'compiled_config' => 1,
        'eav' => 1,
        'customer_notification' => 1,
        'config_integration' => 1,
        'config_integration_api' => 1,
        'full_page' => 1,
        'config_webservice' => 1,
        'translate' => 1
    ],
    'downloadable_domains' => [
        'magento.shop.ua'
    ],
    'install' => [
        'date' => 'Wed, 20 Dec 2023 18:21:08 +0000'
    ],
    'system' => [
        'default' => [
            'catalog' => [
                'search' => [
                    'elasticsearch7_server_hostname' => 'https://elastic-search-host.com',
                    'elasticsearch5_server_hostname' => 'localhost',
                    'elasticsearch6_server_hostname' => 'localhost',
                    'elasticsearch5_server_port' => '9200',
                    'elasticsearch6_server_port' => '9200',
                    'elasticsearch7_server_port' => '9200'
                ]
            ]
        ]
    ]
];
