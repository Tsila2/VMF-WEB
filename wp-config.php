<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'vmfmadao_org' );

/** Database username */
define( 'DB_USER', 'vmfmadao_org' );

/** Database password */
define( 'DB_PASSWORD', '-qR1p.](Is2c8[S4' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'paqrdbkstg4zixg69xwdktzggmg7dfh78c0apftkxj02c87t62lgn3ehajvj6kpf' );
define( 'SECURE_AUTH_KEY',  'rfqbrskwxpahgyfg0gxxxwuffqdx7j91estlcst4ibhevoi8btrmx64mccfyvczo' );
define( 'LOGGED_IN_KEY',    'zppfbnzaubziah4v5d0dfoep9ahyhghendc5egzfinsnmbsvtiu7v4ddukitly3f' );
define( 'NONCE_KEY',        'bbuaajmhihyytdrd3bhig2dysr9mjumwmaikxtdqkod5xnvtr0igno0yw866cqdm' );
define( 'AUTH_SALT',        'n54keyldjfslusshnhec5c2p6xhb2e0couqjbsbxtzzr97pogyj5ak0gg5fikmkc' );
define( 'SECURE_AUTH_SALT', 'nyrpv3ezkdhhqiiuo8amq2jxa3n3q1ut7civh6dvfmbpdwzxfuo1iabquhukysec' );
define( 'LOGGED_IN_SALT',   'cxeezzhpgbmcl5thvyoibp6jpdgp4vzxiq5h2n0jjbqtyrxg1y4cxrdpt3dcctnj' );
define( 'NONCE_SALT',       'wignjc6wc9yhj7fdxjgpuefyjuxbd27tbrd5yz8kfosx5mjpkaeiljodxkj5xlfy' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'vmf_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
