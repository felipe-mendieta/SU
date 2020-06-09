<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '^XkAY0Pqi(EarKw`b~cHR{/%iF-Jvj-8y/KFz[ju3]$RI_qN#)Ae@0/9~D%tjUA7' );
define( 'SECURE_AUTH_KEY',  '-_oNHkt##CT`4?}`C9[(7wMpND>.hXkNXOl,zX$F7-:0hlGPsJ.M,s]Vp9L$(U?S' );
define( 'LOGGED_IN_KEY',    'D6tF?8!Yy?0{j!o,?bun>@o(VAn`8V/~_Tq2]z]Lg+UY[|dQO=#o9QWiG#2E(ml_' );
define( 'NONCE_KEY',        '$lJN(88l%hHMi1A|H(jmc)L.,Fyc-E$OP[_#@yNZAgcDALtDjs%Ka~B*S5#NKzvs' );
define( 'AUTH_SALT',        'x?|.f[7;BzTjI^NYX`+-.+M@z!bNlsZAGCl6[_5).<y;av@mMN<,:/H-|uUnm=GX' );
define( 'SECURE_AUTH_SALT', 'Q91T9fK[8bN;JmI8^@4UNrBL*H/o[vO]Zg^cYCw%PsU8zHT?Z~Fn3e]S7xS h(a3' );
define( 'LOGGED_IN_SALT',   'eUJv!(XFlc@<!>F^#X[WKX@=(z)Ja]+fOZbdC22f>^3tb1z`D~42uUKL*8.cj!bk' );
define( 'NONCE_SALT',       'BV Ze6ph~]:BN5o6JAo% .Z(y1MCE$eJC&/ ))oE[C8 41#5U#J`RD(lLcdlGu_N' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
