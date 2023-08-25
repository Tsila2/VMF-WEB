-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 25 août 2023 à 06:17
-- Version du serveur :  5.7.39-cll-lve
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vmfmadao_org`
--

-- --------------------------------------------------------

--
-- Structure de la table `vmf_commentmeta`
--

CREATE TABLE `vmf_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vmf_comments`
--

CREATE TABLE `vmf_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_comments`
--

INSERT INTO `vmf_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-08-15 11:19:41', '2023-08-15 11:19:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `vmf_content_modificator_activity`
--

CREATE TABLE `vmf_content_modificator_activity` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `project` text,
  `devise` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vmf_content_modificator_activity`
--

INSERT INTO `vmf_content_modificator_activity` (`id`, `type`, `title`, `description`, `project`, `devise`, `icon`) VALUES
(1, NULL, 'EDUCATION', 'L\\\'éducation et l\\\'enseignement sont un puissant moteur de changement. Ils contribuent à la stabilité sociale et stimulent la croissance économique à long terme', 'Education civique des plus petites aux adultes;Réduction des taux d\\\'analphabétisme. Notons que le taux d’analphabétisme est de 28% à Madagascar et 26% sont des jeunes actives de 15-49 ans;Augmentation le taux de scolarisation surtout du secondaire. 76% sont scolarisés en classes primaires - 27% en secondaire premier cycle et seulement - 13% au lycée (source UNICEF);Renforcement de la capacité des femmes par des formations professionnelles;Renforcement de la capacité des femmes par des formations professionnelles.;Amélioration de la qualité de l\\\'éducation', 'L\\\'éducation et l\\\'enseignement sont les clés du développement durable.', 'school'),
(2, NULL, 'ENTREPRENEURIAT ET TRAVAIL', 'La Fondation aidera les femmes à trouver du travail et à devenir des entrepreneurs. L\\\'entreprenariat est la source de croissance. Les petites et moyennes entreprises sont les vecteurs de cet entreprenariat. C\\\'est pourquoi la fondation aide, encourage et sensibilise les femmes à ouvrir leurs propres entreprises ou à ouvrir des entreprises de groupe compte tenu des opportunités qui existent dans le pays.', 'Renforcement de la capacité des femmes par le biais de formations;Créer des networks pour aider les femmes à trouver du travail;Les aider à créer leurs propres entreprises pour avoir des revenus supplémentaires. On leur donne les cannes à pêche et non le poisson.;Les inspirer de manière créative pour qu’elles puissent ouvrir leurs entreprises. Un soutien particulier est accordé au secteur de la transformation, ainsi qu\\\'à l\\\'agriculture', 'Je ne suis pas un fardeau pour la société', 'work'),
(3, NULL, 'SANTE', 'Le bien-être physique et mental est la clé de la productivité et de l\\\'efficacité dans le travail, dans les études, et dans tout ce qu’on fait.', 'Encourager les femmes à faire les bilans de santé réguliers. Le proverbe dit « vaut mieux prévenir que guérir. Les bilans permettent de prévenir. Des exercices physiques, éducation nutritionnelle pour la santé,…seront au programme;Améliorer des équipements médicaux et de diagnostic;Ouverture des maternités et des services d\\\'urgence;Avoir des spécialistes des professionnels de santé', 'Corps sains, esprits sains', 'local_hospital'),
(4, 'main', 'Nos Programmes', 'La Foundation  \\\"Vehivavy Moteran\\\'ny Fampandrosoana\\\" (VMF) est dédié à l\\\'autonomisation des femmes malgaches et à la promotion de leur rôle actif dans le développement de leurs communautés et de Madagascar. VMF considère les femmes comme des moteurs essentiels du progrès et cherche à les encourager à s\\\'épanouir dans tous les aspects de la société.', NULL, NULL, 'icon'),
(8, NULL, 'SOCIAL', 'Il s\\\'agit d\\\'améliorer le bien-être de chaque femme dans la société afin qu\\\'elle puisse réaliser son plein potentiel. Le social a une dimension très large : les droits premiers des filles et des femmes, l\\\'équité, l\\\'environnement, etc. mais l\\\'objectif final est que les femmes progressent dans les voies de l\\\'autosuffisance et deviennent les moteurs de développement de Madagscar.', 'Développement durable;Centre de conseil et accompagnement;Echange culturelle', 'Une société harmonieuse où les femmes peuvent s\\\'épanouir dans tous les aspects', 'people');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_content_modificator_carousel`
--

CREATE TABLE `vmf_content_modificator_carousel` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vmf_content_modificator_carousel`
--

INSERT INTO `vmf_content_modificator_carousel` (`id`, `type`, `title`, `description`, `image`) VALUES
(4, NULL, 'FAHAMARINANA', 'FAHAMARINANA décrit la peur de Dieu, la droiture dans les actes et pensées. Psaume 106 :3 « Heureux ceux qui observent la loi, Qui pratiquent la justice en tout temps »', NULL),
(5, NULL, 'FAHATSARANA', 'C’est la bonté intérieure et en action. Colossiens 3 :23 « Tout ce que vous faites, faites-le de bon cœur, comme pour le Seigneur et non pour les hommes »', NULL),
(6, NULL, 'ZOTOM-PO', 'Courage et persévérance jusqu’à l’atteinte de l’objectif fixé. 1 Corinthiens 9 :24 « Ne savez-vous pas que ceux qui courent dans le stade courent tous, mais qu’un seul remporte le prix ? Courez de manière à le remporter »', NULL),
(8, 'main', NULL, NULL, 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_content_modificator_event`
--

CREATE TABLE `vmf_content_modificator_event` (
  `id` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text,
  `video` text,
  `location` varchar(255) DEFAULT NULL,
  `eventdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vmf_content_modificator_event`
--

INSERT INTO `vmf_content_modificator_event` (`id`, `id_activity`, `type`, `title`, `description`, `image`, `video`, `location`, `eventdate`) VALUES
(2, 0, 'main', 'NOS EVENEMENTS', 'Les événements organisés par la Fondation VMF sont des occasions spéciales visant à mettre en œuvre des actions concrètes pour promouvoir l\\\'autonomisation des femmes malgaches et contribuer au développement de Madagascar. Ces événements peuvent prendre différentes formes et sont organisés dans le cadre des domaines d\\\'intervention de la fondation, tels que l\\\'éducation et la formation, l\\\'entrepreneuriat et l\\\'emploi, la santé et le bien-être, ainsi que les initiatives sociales.', NULL, NULL, NULL, NULL),
(8, 8, NULL, '0', 'Distribution de vêtements dans le quartier d\\\'Andavamamba à Antananarivo.', 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-3.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-2.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetement.jpg', 'http://localhost/vmf/wp-content/uploads/2023/08/The-Seven-Deadly-Sins-Opening-4-4K-60FPS-Creditless.mp4', 'Andavamamba Antananarivo', '2023-02-22'),
(9, 3, NULL, '3', 'Don de sang à l\\\'Hôpital Joseph Ravoahangy Andrianavalona (HJRA) à Antananarivo.', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang-3.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang-2.jpg', 'http://localhost/vmf/wp-content/uploads/2023/08/The-Seven-Deadly-Sins-Opening-4-4K-60FPS-Creditless.mp4', 'Hôpital HJRA Antananarivo', '2020-12-11'),
(10, 1, NULL, '', 'Distribution de denrées alimentaires aux 4 mineurs détenus à l\\\'EEM Antanimora pour s’assurer de leurs nourritures pendant les 3 jours d’examen de BEPC', 'https://vmf-mada.org/wp-content/uploads/2023/08/EEM-Antanimora.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/EEM-Antanimora-2.jpg', 'http://localhost/vmf/wp-content/uploads/2023/08/The-Seven-Deadly-Sins-Opening-4-4K-60FPS-Creditless.mp4', 'EEM Antanimora', '2022-07-04'),
(11, 8, NULL, '', 'Reboisement à Commune Ambohijanaka', 'https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement-4.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement-3.jpg,https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement-2.jpg', 'http://localhost/vmf/wp-content/uploads/2023/08/The-Seven-Deadly-Sins-Opening-4-4K-60FPS-Creditless.mp4', 'Ambohijanaka', '2021-03-08'),
(12, 2, NULL, '', 'La VMF a pu donner un travail temporaire de collecte de données primaires sur les indicateurs liés aux domaines de l\\\'IDSP- BAD. 50 Enquêteurs se sont mobilisés.', 'https://vmf-mada.org/wp-content/uploads/2023/08/Enquete-BAD.jpeg,https://vmf-mada.org/wp-content/uploads/2023/08/Enquete-BAD-3.jpeg', 'http://localhost/vmf/wp-content/uploads/2023/08/The-Seven-Deadly-Sins-Opening-4-4K-60FPS-Creditless.mp4', 'Mahaiza - Betafo', '2023-05-01');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_content_modificator_image`
--

CREATE TABLE `vmf_content_modificator_image` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vmf_content_modificator_image`
--

INSERT INTO `vmf_content_modificator_image` (`id`, `name`, `path`) VALUES
(1, 'header_carousel_image', 'priscilla-du-preez-gYdjZzXNWlg-unsplash.jpg'),
(2, 'header_carousel_image', 'priscilla-du-preez-gYdjZzXNWlg-unsplash.jpg'),
(3, 'header_carousel_image', 'priscilla-du-preez-gYdjZzXNWlg-unsplash.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_content_modificator_member`
--

CREATE TABLE `vmf_content_modificator_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `cin` varchar(255) NOT NULL,
  `cindate` date NOT NULL,
  `cinplace` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `parent` varchar(255) NOT NULL,
  `parentname` varchar(255) NOT NULL,
  `situation` varchar(255) NOT NULL,
  `children` varchar(255) NOT NULL,
  `education` text,
  `work` text,
  `talent` text,
  `religion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vmf_content_modificator_member`
--

INSERT INTO `vmf_content_modificator_member` (`id`, `name`, `firstname`, `birthdate`, `birthplace`, `cin`, `cindate`, `cinplace`, `phone`, `mail`, `facebook`, `parent`, `parentname`, `situation`, `children`, `education`, `work`, `talent`, `religion`) VALUES
(1, 'fedsv', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0', '', '', '', '', '', '', ''),
(2, 'fedsv', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0', '', '', '', '', '', '', ''),
(3, 'Nomenjanahary', 'Tsilavina', '2023-08-12', 'Andavamamba', '34512', '2023-08-12', 'Tana III', '63', 'tsilanmjr2@gmail.com', 'Nomenjanahary Tsilavina', '0', 'Tsilavina Nomenjanahary', 'Célibataire', '0', 'z\\\'tehtrj', 'ZTwh', 'TEywj', 'Batiste'),
(4, 'Nomenjanahary', 'Tsilavina', '2023-08-12', 'Andavamamba', '34512', '2023-08-12', 'Tana III', '63', 'tsilanmjr2@gmail.com', 'Nomenjanahary Tsilavina', '0', 'Tsilavina Nomenjanahary', 'Célibataire', '0', 'z\\\'tehtrj', 'ZTwh', 'TEywj', 'Batiste'),
(5, 'Nomenjanahary', 'Tsilavina', '2023-08-12', 'Andavamamba', '34512', '2023-08-12', 'Tana III', '63', 'tsilanmjr2@gmail.com', 'Nomenjanahary Tsilavina', '0', 'Tsilavina Nomenjanahary', 'Célibataire', '0', 'z\\\'tehtrj', 'ZTwh', 'TEywj', 'Batiste');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_links`
--

CREATE TABLE `vmf_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vmf_options`
--

CREATE TABLE `vmf_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_options`
--

INSERT INTO `vmf_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://vmf-mada.org', 'yes'),
(2, 'home', 'https://vmf-mada.org', 'yes'),
(3, 'blogname', 'Vehivavy Môteran\'ny Fampandrosoana', 'yes'),
(4, 'blogdescription', 'Justice - Bonté - Courage', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@vmf-mada.org', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:100:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=65&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";i:1;s:41:\"all-in-one-favicon/all-in-one-favicon.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"content_modificator/content_modificator.php\";i:4;s:27:\"maintenance/maintenance.php\";i:5;s:37:\"paypal-donations/paypal-donations.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentythree', 'yes'),
(41, 'stylesheet', 'twentytwentythree', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:3:{s:41:\"all-in-one-favicon/all-in-one-favicon.php\";a:2:{i:0;s:15:\"AllInOneFavicon\";i:1;s:19:\"uninstallAioFavicon\";}s:37:\"paypal-donations/paypal-donations.php\";a:2:{i:0;s:15:\"PayPalDonations\";i:1;s:9:\"uninstall\";}s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '65', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1707650381', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'vmf_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1692937940;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692962381;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692962507;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692962508;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692969627;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692969628;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693308193;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1693394381;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentythree', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(123, 'WPLANG', 'fr_FR', 'yes'),
(124, 'https_detection_errors', 'a:0:{}', 'yes'),
(134, 'db_upgraded', '', 'yes');
INSERT INTO `vmf_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(136, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/archives/editor.css\";i:3;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/archives/editor.min.css\";i:4;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/archives/style-rtl.css\";i:5;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/archives/style.css\";i:7;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/archives/style.min.css\";i:8;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/editor.css\";i:11;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/editor.min.css\";i:12;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/style-rtl.css\";i:13;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/style.css\";i:15;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/style.min.css\";i:16;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/theme.css\";i:19;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/audio/theme.min.css\";i:20;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/avatar/editor.css\";i:23;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/avatar/editor.min.css\";i:24;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/avatar/style.css\";i:27;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/avatar/style.min.css\";i:28;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/block/editor-rtl.css\";i:29;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/block/editor.css\";i:31;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/block/editor.min.css\";i:32;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/button/editor-rtl.css\";i:33;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/button/editor.css\";i:35;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/button/editor.min.css\";i:36;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/button/style-rtl.css\";i:37;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/button/style.css\";i:39;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/button/style.min.css\";i:40;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/buttons/editor.css\";i:43;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/buttons/editor.min.css\";i:44;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/buttons/style.css\";i:47;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/buttons/style.min.css\";i:48;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/calendar/style.css\";i:51;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/calendar/style.min.css\";i:52;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/categories/editor.css\";i:55;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/categories/editor.min.css\";i:56;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/categories/style-rtl.css\";i:57;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/categories/style.css\";i:59;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/categories/style.min.css\";i:60;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/code/editor-rtl.css\";i:61;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/code/editor.css\";i:63;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/code/editor.min.css\";i:64;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/code/style-rtl.css\";i:65;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:60:\"/home/vmfmadao/public_html/wp-includes/blocks/code/style.css\";i:67;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/code/style.min.css\";i:68;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/code/theme-rtl.css\";i:69;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:60:\"/home/vmfmadao/public_html/wp-includes/blocks/code/theme.css\";i:71;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/code/theme.min.css\";i:72;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/columns/editor.css\";i:75;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/columns/editor.min.css\";i:76;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/columns/style-rtl.css\";i:77;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/columns/style.css\";i:79;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/columns/style.min.css\";i:80;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/comment-content/style.css\";i:83;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/comment-content/style.min.css\";i:84;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/comment-template/style.css\";i:87;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/comment-template/style.min.css\";i:88;s:88:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:92:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:84:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:88:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:84:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:83:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination/style.css\";i:99;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-title/editor.css\";i:103;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/comments/editor.css\";i:107;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/comments/editor.min.css\";i:108;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/comments/style-rtl.css\";i:109;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/comments/style.css\";i:111;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/comments/style.min.css\";i:112;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/cover/editor.css\";i:115;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/cover/editor.min.css\";i:116;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/cover/style-rtl.css\";i:117;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/cover/style.css\";i:119;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/cover/style.min.css\";i:120;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/details/editor-rtl.css\";i:121;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/details/editor.css\";i:123;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/details/editor.min.css\";i:124;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/details/style-rtl.css\";i:125;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/details/style.css\";i:127;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/details/style.min.css\";i:128;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/editor.css\";i:131;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/editor.min.css\";i:132;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/style-rtl.css\";i:133;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/style.css\";i:135;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/style.min.css\";i:136;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/theme.css\";i:139;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/embed/theme.min.css\";i:140;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/file/editor-rtl.css\";i:141;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/file/editor.css\";i:143;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/file/editor.min.css\";i:144;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/file/style-rtl.css\";i:145;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:60:\"/home/vmfmadao/public_html/wp-includes/blocks/file/style.css\";i:147;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/file/style.min.css\";i:148;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/footnotes/style.css\";i:151;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/footnotes/style.min.css\";i:152;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/freeform/editor.css\";i:155;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/freeform/editor.min.css\";i:156;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/editor.css\";i:159;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/editor.min.css\";i:160;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/style.css\";i:163;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/style.min.css\";i:164;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/theme.css\";i:167;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/gallery/theme.min.css\";i:168;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/group/editor-rtl.css\";i:169;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/group/editor.css\";i:171;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/group/editor.min.css\";i:172;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/group/style-rtl.css\";i:173;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/group/style.css\";i:175;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/group/style.min.css\";i:176;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/group/theme-rtl.css\";i:177;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/group/theme.css\";i:179;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/group/theme.min.css\";i:180;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/heading/style-rtl.css\";i:181;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/heading/style.css\";i:183;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/heading/style.min.css\";i:184;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/html/editor-rtl.css\";i:185;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/html/editor.css\";i:187;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/html/editor.min.css\";i:188;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/image/editor-rtl.css\";i:189;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/image/editor.css\";i:191;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/image/editor.min.css\";i:192;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/image/style-rtl.css\";i:193;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/image/style.css\";i:195;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/image/style.min.css\";i:196;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/image/theme-rtl.css\";i:197;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/image/theme.css\";i:199;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/image/theme.min.css\";i:200;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-comments/style.css\";i:203;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-posts/editor.css\";i:207;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-posts/style.css\";i:211;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/list/style-rtl.css\";i:213;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:60:\"/home/vmfmadao/public_html/wp-includes/blocks/list/style.css\";i:215;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/list/style.min.css\";i:216;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/media-text/editor.css\";i:219;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/media-text/editor.min.css\";i:220;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/media-text/style.css\";i:223;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/media-text/style.min.css\";i:224;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/more/editor-rtl.css\";i:225;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/more/editor.css\";i:227;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/more/editor.min.css\";i:228;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-link/editor.css\";i:231;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-link/style.css\";i:235;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:83:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation/editor.css\";i:243;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation/editor.min.css\";i:244;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation/style.css\";i:247;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/navigation/style.min.css\";i:248;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/nextpage/editor.css\";i:251;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/page-list/editor.css\";i:255;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/page-list/editor.min.css\";i:256;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/page-list/style.css\";i:259;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/page-list/style.min.css\";i:260;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/paragraph/editor.css\";i:263;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/paragraph/style.css\";i:267;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/paragraph/style.min.css\";i:268;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/post-author/style.css\";i:271;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/post-author/style.min.css\";i:272;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:83:\"/home/vmfmadao/public_html/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:78:\"/home/vmfmadao/public_html/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:82:\"/home/vmfmadao/public_html/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/post-comments-form/style.css\";i:279;s:78:\"/home/vmfmadao/public_html/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/post-date/style.css\";i:283;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/post-date/style.min.css\";i:284;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/post-excerpt/style.css\";i:291;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:84:\"/home/vmfmadao/public_html/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:83:\"/home/vmfmadao/public_html/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/post-featured-image/style.css\";i:299;s:79:\"/home/vmfmadao/public_html/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:84:\"/home/vmfmadao/public_html/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:78:\"/home/vmfmadao/public_html/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/post-template/editor.css\";i:307;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/post-template/editor.min.css\";i:308;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/post-template/style.css\";i:311;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/post-template/style.min.css\";i:312;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/post-terms/style.css\";i:315;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/post-terms/style.min.css\";i:316;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/post-title/style.css\";i:319;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/post-title/style.min.css\";i:320;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/preformatted/style.css\";i:323;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/preformatted/style.min.css\";i:324;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/editor.css\";i:327;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/style.css\";i:331;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/style.min.css\";i:332;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/theme.css\";i:335;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:85:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:89:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:81:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:85:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:81:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination/editor.css\";i:343;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination/style.css\";i:347;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/query-title/style.css\";i:351;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/query-title/style.min.css\";i:352;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/query/editor-rtl.css\";i:353;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/query/editor.css\";i:355;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/query/editor.min.css\";i:356;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/quote/style-rtl.css\";i:357;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/quote/style.css\";i:359;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/quote/style.min.css\";i:360;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/quote/theme.css\";i:363;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/quote/theme.min.css\";i:364;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/read-more/style.css\";i:367;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/read-more/style.min.css\";i:368;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:60:\"/home/vmfmadao/public_html/wp-includes/blocks/rss/editor.css\";i:371;s:64:\"/home/vmfmadao/public_html/wp-includes/blocks/rss/editor.min.css\";i:372;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/rss/style-rtl.css\";i:373;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:59:\"/home/vmfmadao/public_html/wp-includes/blocks/rss/style.css\";i:375;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/rss/style.min.css\";i:376;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/search/editor-rtl.css\";i:377;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/search/editor.css\";i:379;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/search/editor.min.css\";i:380;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/search/style-rtl.css\";i:381;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/search/style.css\";i:383;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/search/style.min.css\";i:384;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/search/theme-rtl.css\";i:385;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/search/theme.css\";i:387;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/search/theme.min.css\";i:388;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/editor.css\";i:391;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/editor.min.css\";i:392;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/style-rtl.css\";i:393;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/style.css\";i:395;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/style.min.css\";i:396;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/theme.css\";i:399;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/separator/theme.min.css\";i:400;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/shortcode/editor.css\";i:403;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/site-logo/editor.css\";i:407;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/site-logo/style.css\";i:411;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/site-logo/style.min.css\";i:412;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/site-tagline/editor.css\";i:415;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:75:\"/home/vmfmadao/public_html/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/site-title/editor.css\";i:419;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/site-title/editor.min.css\";i:420;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/site-title/style.css\";i:423;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/site-title/style.min.css\";i:424;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/social-link/editor.css\";i:427;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/social-link/editor.min.css\";i:428;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/social-links/editor.css\";i:431;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/social-links/editor.min.css\";i:432;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/social-links/style.css\";i:435;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/social-links/style.min.css\";i:436;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:71:\"/home/vmfmadao/public_html/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:63:\"/home/vmfmadao/public_html/wp-includes/blocks/spacer/editor.css\";i:439;s:67:\"/home/vmfmadao/public_html/wp-includes/blocks/spacer/editor.min.css\";i:440;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/spacer/style.css\";i:443;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/spacer/style.min.css\";i:444;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/table/editor-rtl.css\";i:445;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/table/editor.css\";i:447;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/table/editor.min.css\";i:448;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/table/style-rtl.css\";i:449;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/table/style.css\";i:451;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/table/style.min.css\";i:452;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/table/theme-rtl.css\";i:453;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/table/theme.css\";i:455;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/table/theme.min.css\";i:456;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/tag-cloud/style.css\";i:459;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:78:\"/home/vmfmadao/public_html/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/template-part/editor.css\";i:463;s:74:\"/home/vmfmadao/public_html/wp-includes/blocks/template-part/editor.min.css\";i:464;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/template-part/theme.css\";i:467;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/template-part/theme.min.css\";i:468;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:80:\"/home/vmfmadao/public_html/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/term-description/style.css\";i:471;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/term-description/style.min.css\";i:472;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:77:\"/home/vmfmadao/public_html/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/text-columns/editor.css\";i:475;s:73:\"/home/vmfmadao/public_html/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:76:\"/home/vmfmadao/public_html/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:68:\"/home/vmfmadao/public_html/wp-includes/blocks/text-columns/style.css\";i:479;s:72:\"/home/vmfmadao/public_html/wp-includes/blocks/text-columns/style.min.css\";i:480;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/verse/style-rtl.css\";i:481;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/verse/style.css\";i:483;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/verse/style.min.css\";i:484;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/video/editor-rtl.css\";i:485;s:70:\"/home/vmfmadao/public_html/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:62:\"/home/vmfmadao/public_html/wp-includes/blocks/video/editor.css\";i:487;s:66:\"/home/vmfmadao/public_html/wp-includes/blocks/video/editor.min.css\";i:488;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/video/style-rtl.css\";i:489;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/video/style.css\";i:491;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/video/style.min.css\";i:492;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/video/theme-rtl.css\";i:493;s:69:\"/home/vmfmadao/public_html/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:61:\"/home/vmfmadao/public_html/wp-includes/blocks/video/theme.css\";i:495;s:65:\"/home/vmfmadao/public_html/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(142, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"admin@vmf-mada.org\";s:7:\"version\";s:3:\"6.3\";s:9:\"timestamp\";i:1692098498;}', 'no'),
(154, 'can_compress_scripts', '1', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(164, 'finished_updating_comment_type', '1', 'yes'),
(170, 'options-404-redirect-group', 'a:7:{s:16:\"p404_redirect_to\";s:20:\"https://vmf-mada.org\";s:11:\"p404_status\";s:1:\"1\";s:5:\"links\";i:629;s:12:\"install_date\";s:19:\"2023-08-15 11:23 am\";s:16:\"redirected_links\";a:20:{i:0;a:2:{s:4:\"link\";s:72:\"https://vmf-mada.org/wp-content/plugins/ht-mega-for-elementor/readme.txt\";s:4:\"date\";s:19:\"2023-08-25 02:31 am\";}i:1;a:2:{s:4:\"link\";s:25:\"https://vmf-mada.org/.env\";s:4:\"date\";s:19:\"2023-08-24 10:07 am\";}i:2;a:2:{s:4:\"link\";s:31:\"https://vmf-mada.org//?author=3\";s:4:\"date\";s:19:\"2023-08-23 05:11 pm\";}i:3;a:2:{s:4:\"link\";s:31:\"https://vmf-mada.org//?author=2\";s:4:\"date\";s:19:\"2023-08-23 05:11 pm\";}i:4;a:2:{s:4:\"link\";s:49:\"https://vmf-mada.org//wp-includes/wlwmanifest.xml\";s:4:\"date\";s:19:\"2023-08-23 05:11 pm\";}i:5;a:2:{s:4:\"link\";s:27:\"http://vmf-mada.org/ads.txt\";s:4:\"date\";s:19:\"2023-08-23 01:13 pm\";}i:6;a:2:{s:4:\"link\";s:30:\"http://vmf-mada.org/humans.txt\";s:4:\"date\";s:19:\"2023-08-23 01:13 pm\";}i:7;a:2:{s:4:\"link\";s:32:\"https://vmf-mada.org//xmlrpc.php\";s:4:\"date\";s:19:\"2023-08-22 10:13 pm\";}i:8;a:2:{s:4:\"link\";s:31:\"https://vmf-mada.org//?author=2\";s:4:\"date\";s:19:\"2023-08-22 10:13 pm\";}i:9;a:2:{s:4:\"link\";s:49:\"https://vmf-mada.org//wp-includes/wlwmanifest.xml\";s:4:\"date\";s:19:\"2023-08-22 10:13 pm\";}i:10;a:2:{s:4:\"link\";s:31:\"https://vmf-mada.org//?author=3\";s:4:\"date\";s:19:\"2023-08-22 10:12 pm\";}i:11;a:2:{s:4:\"link\";s:31:\"https://vmf-mada.org//?author=2\";s:4:\"date\";s:19:\"2023-08-22 10:12 pm\";}i:12;a:2:{s:4:\"link\";s:49:\"https://vmf-mada.org//wp-includes/wlwmanifest.xml\";s:4:\"date\";s:19:\"2023-08-22 10:12 pm\";}i:13;a:2:{s:4:\"link\";s:24:\"http://vmf-mada.org/.env\";s:4:\"date\";s:19:\"2023-08-22 09:30 pm\";}i:14;a:2:{s:4:\"link\";s:34:\"https://vmf-mada.org/index_sso.php\";s:4:\"date\";s:19:\"2023-08-22 04:31 pm\";}i:15;a:2:{s:4:\"link\";s:48:\"https://vmf-mada.org/php/thinkphp/aaaffff123.php\";s:4:\"date\";s:19:\"2023-08-22 04:31 pm\";}i:16;a:2:{s:4:\"link\";s:41:\"https://vmf-mada.org/PhpMyAdmin/index.php\";s:4:\"date\";s:19:\"2023-08-22 04:31 pm\";}i:17;a:2:{s:4:\"link\";s:41:\"https://vmf-mada.org/phpmyadmin/index.php\";s:4:\"date\";s:19:\"2023-08-22 04:31 pm\";}i:18;a:2:{s:4:\"link\";s:34:\"https://vmf-mada.org/pma/index.php\";s:4:\"date\";s:19:\"2023-08-22 04:31 pm\";}i:19;a:2:{s:4:\"link\";s:39:\"https://vmf-mada.org/axis2/axis2-admin/\";s:4:\"date\";s:19:\"2023-08-22 04:31 pm\";}}s:15:\"img_p404_status\";s:1:\"2\";s:25:\"image_id_p404_redirect_to\";s:0:\"\";}', 'yes'),
(175, 'aio-favicon_settings', 'a:7:{s:17:\"aioFaviconVersion\";s:3:\"4.8\";s:9:\"debugMode\";b:0;s:21:\"removeReflectiveShine\";b:0;s:21:\"removeLinkFromMetaBox\";s:4:\"true\";i:0;b:0;s:11:\"frontendPNG\";s:58:\"https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png\";s:10:\"backendPNG\";s:58:\"https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png\";}', 'yes'),
(180, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1692098854;s:7:\"version\";s:3:\"5.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(183, 'widget_paypal_donations', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'maintenance_meta', 'a:4:{s:13:\"first_version\";s:4:\"4.06\";s:13:\"first_install\";i:1692099880;s:11:\"old_version\";b:0;s:20:\"hide_welcome_pointer\";b:1;}', 'yes'),
(197, 'mtnc_db_version', '2', 'yes'),
(198, 'maintenance_options', 'a:24:{s:10:\"page_title\";s:30:\"Site is undergoing maintenance\";s:7:\"heading\";s:29:\"Le mode maintenance est actif\";s:11:\"description\";s:57:\"Site will be available soon. Thank you for your patience!\";s:11:\"footer_text\";s:43:\"© Vehivavy Môteran\'ny Fampandrosoana 2023\";s:8:\"is_login\";s:1:\"1\";s:10:\"logo_width\";s:3:\"220\";s:11:\"logo_height\";s:0:\"\";s:4:\"logo\";s:1:\"0\";s:11:\"retina_logo\";s:1:\"0\";s:7:\"body_bg\";s:2:\"24\";s:17:\"bg_image_portrait\";s:1:\"0\";s:13:\"preloader_img\";s:1:\"0\";s:13:\"body_bg_color\";s:7:\"#111111\";s:10:\"font_color\";s:7:\"#ffffff\";s:17:\"controls_bg_color\";s:7:\"#111111\";s:16:\"body_font_family\";s:9:\"Open Sans\";s:16:\"body_font_subset\";s:3:\"300\";s:14:\"blur_intensity\";s:1:\"5\";s:15:\"gg_analytics_id\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:5:\"state\";i:0;s:2:\"ID\";i:0;s:6:\"filter\";s:2:\"db\";s:16:\"default_settings\";b:0;}', 'yes'),
(206, 'secret_key', '{)sVOW#iHb525XQpcR:<`U|B|@q}EeQlPxWwdEq1+ :K,Co3vB3tK~(Y$_l..0=_', 'no'),
(208, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:5:\"20.13\";}', 'yes');
INSERT INTO `vmf_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(209, 'wpseo', 'a:105:{s:8:\"tracking\";b:1;s:16:\"toggled_tracking\";b:1;s:22:\"license_server_version\";s:5:\"false\";s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:0:\"\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:5:\"20.13\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:22:\"google6cda4e9a1099c88d\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";s:10:\"1692105628\";s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:20:\"https://vmf-mada.org\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:3:{i:0;s:18:\"siteRepresentation\";i:1;s:14:\"socialProfiles\";i:2;s:19:\"personalPreferences\";}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";s:10:\"1692105629\";s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}s:23:\"last_known_no_unindexed\";a:6:{s:27:\"wpseo_total_unindexed_posts\";i:1692255510;s:27:\"wpseo_total_unindexed_terms\";i:1692255510;s:31:\"wpseo_unindexed_post_link_count\";i:1692192692;s:31:\"wpseo_unindexed_term_link_count\";i:1692192692;s:40:\"wpseo_total_unindexed_post_type_archives\";i:1692192098;s:35:\"wpseo_total_unindexed_general_items\";i:1692192098;}s:14:\"new_post_types\";a:0:{}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:0;}', 'yes'),
(210, 'wpseo_titles', 'a:117:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:50:\"%%name%%, auteur/autrice sur %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:65:\"Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:38:\"Page non trouvée %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:64:\"L’article %%POSTLINK%% est apparu en premier sur %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:30:\"Erreur 404 : Page introuvable\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:13:\"Archives pour\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:7:\"Accueil\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:18:\"Vous avez cherché\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:3:\"vmf\";s:12:\"company_logo\";s:58:\"https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";i:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:1;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:87:\"%%sitename%% %%primary_category%% %%sep%% %%title%% vmf vehivavy môtera fampandrosoana\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:27:\"Archives des %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:27:\"Archives des %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:27:\"Archives des %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:43;s:17:\"company_logo_meta\";a:10:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:8:\"filesize\";i:40324;s:3:\"url\";s:58:\"https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png\";s:4:\"path\";s:64:\"/home/vmfmadao/public_html/wp-content/uploads/2023/08/logo-2.png\";s:4:\"size\";s:4:\"full\";s:2:\"id\";i:43;s:3:\"alt\";s:0:\"\";s:6:\"pixels\";i:22500;s:4:\"type\";s:9:\"image/png\";}s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(211, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:55:\"https://www.facebook.com/profile.php?id=100064845636024\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:58:\"https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png\";s:19:\"og_default_image_id\";i:43;s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(238, 'wpseo_tracking_last_request', '1692106264', 'yes'),
(271, 'category_children', 'a:0:{}', 'yes'),
(303, 'paypal_donations_options', 'a:15:{s:14:\"paypal_account\";s:20:\"vmfmada101@gmail.com\";s:13:\"currency_code\";s:3:\"EUR\";s:10:\"page_style\";s:0:\"\";s:11:\"return_page\";s:30:\"https://vmf-mada.org/thank-you\";s:6:\"amount\";s:1:\"0\";s:7:\"purpose\";s:0:\"\";s:9:\"reference\";s:0:\"\";s:6:\"button\";s:6:\"custom\";s:10:\"button_url\";s:55:\"https://vmf-mada.org/wp-content/uploads/2023/08/don.png\";s:16:\"button_localized\";s:8:\"fr_FR/FR\";s:13:\"center_button\";s:1:\"1\";s:7:\"new_tab\";s:1:\"1\";s:21:\"set_checkout_language\";s:1:\"1\";s:17:\"checkout_language\";s:2:\"FR\";s:13:\"return_method\";s:1:\"2\";}', 'yes'),
(352, 'recovery_mode_email_last_sent', '1692183591', 'yes'),
(356, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":5,\"critical\":0}', 'yes'),
(676, '_site_transient_timeout_php_check_b2b5c51827d5c99b0dbe7b2d0efda8db', '1693396231', 'no'),
(677, '_site_transient_php_check_b2b5c51827d5c99b0dbe7b2d0efda8db', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(681, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1692930682;s:15:\"version_checked\";s:3:\"6.3\";s:12:\"translations\";a:0:{}}', 'no'),
(716, '_site_transient_timeout_theme_roots', '1692932485', 'no'),
(717, '_site_transient_theme_roots', 'a:3:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(718, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692930686;s:7:\"checked\";a:3:{s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(719, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692930686;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"21.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.21.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.1\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:5:\"7.2.5\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:42:\"w.org/plugins/all-404-redirect-to-homepage\";s:4:\"slug\";s:28:\"all-404-redirect-to-homepage\";s:6:\"plugin\";s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";s:11:\"new_version\";s:3:\"4.3\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/all-404-redirect-to-homepage/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/all-404-redirect-to-homepage.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/all-404-redirect-to-homepage/assets/icon-256x256.png?rev=1515215\";s:2:\"1x\";s:81:\"https://ps.w.org/all-404-redirect-to-homepage/assets/icon-128x128.png?rev=1515215\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/all-404-redirect-to-homepage/assets/banner-772x250.png?rev=2281110\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";}s:41:\"all-in-one-favicon/all-in-one-favicon.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/all-in-one-favicon\";s:4:\"slug\";s:18:\"all-in-one-favicon\";s:6:\"plugin\";s:41:\"all-in-one-favicon/all-in-one-favicon.php\";s:11:\"new_version\";s:3:\"4.8\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/all-in-one-favicon/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/all-in-one-favicon.4.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/all-in-one-favicon/assets/icon-256x256.jpg?rev=2223081\";s:2:\"1x\";s:71:\"https://ps.w.org/all-in-one-favicon/assets/icon-128x128.jpg?rev=2223081\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/all-in-one-favicon/assets/banner-772x250.jpg?rev=2223081\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:37:\"paypal-donations/paypal-donations.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/paypal-donations\";s:4:\"slug\";s:16:\"paypal-donations\";s:6:\"plugin\";s:37:\"paypal-donations/paypal-donations.php\";s:11:\"new_version\";s:6:\"1.9.10\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/paypal-donations/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/paypal-donations.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/paypal-donations/assets/icon.svg?rev=994082\";s:3:\"svg\";s:60:\"https://ps.w.org/paypal-donations/assets/icon.svg?rev=994082\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/paypal-donations/assets/banner-1544x500.png?rev=994083\";s:2:\"1x\";s:71:\"https://ps.w.org/paypal-donations/assets/banner-772x250.png?rev=2722516\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:27:\"maintenance/maintenance.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/maintenance\";s:4:\"slug\";s:11:\"maintenance\";s:6:\"plugin\";s:27:\"maintenance/maintenance.php\";s:11:\"new_version\";s:4:\"4.07\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/maintenance/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/maintenance.4.07.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/maintenance/assets/icon-256x256.png?rev=2689583\";s:2:\"1x\";s:64:\"https://ps.w.org/maintenance/assets/icon-128x128.png?rev=2689583\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/maintenance/assets/banner-772x250.png?rev=1637471\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:9:{s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:61:\"all-404-redirect-to-homepage/all-404-redirect-to-homepage.php\";s:3:\"4.3\";s:41:\"all-in-one-favicon/all-in-one-favicon.php\";s:3:\"4.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.8\";s:43:\"content_modificator/content_modificator.php\";s:3:\"1.0\";s:37:\"paypal-donations/paypal-donations.php\";s:6:\"1.9.10\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"maintenance/maintenance.php\";s:4:\"4.07\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"20.13\";}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_postmeta`
--

CREATE TABLE `vmf_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_postmeta`
--

INSERT INTO `vmf_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<div class=\"form-group\">\n    <label for=\"your-name\">Votre nom</label>\n    [text* your-name id:your-name class:form-control autocomplete:name]\n</div>\n\n<div class=\"form-group\">\n    <label for=\"your-email\">Votre e-mail</label>\n    [email* your-email id:your-email class:form-control autocomplete:email]\n</div>\n\n<div class=\"form-group\">\n    <label for=\"your-subject\">Objet</label>\n    [text* your-subject id:your-subject class:form-control]\n</div>\n\n<div class=\"form-group\">\n    <label for=\"your-message\">Votre message</label>\n    [textarea* your-message id:your-message class:form-control]\n</div>\n\n<div class=\"form-group\">\n    [submit class:button \"Envoyer\" ]\n</div>'),
(4, 5, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <admin@vmf-mada.org>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:182:\"De : [your-name] [your-email]\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <admin@vmf-mada.org>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:126:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 5, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:29:\"Veuillez renseigner ce champ.\";s:16:\"invalid_too_long\";s:34:\"Ce champ à une date trop tardive.\";s:17:\"invalid_too_short\";s:34:\"Ce champ à un numéro trop court.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:44:\"Le fichier téléversé est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:12:\"invalid_date\";s:46:\"Veuillez saisir une date au format AAAA-MM-JJ.\";s:14:\"date_too_early\";s:31:\"Ce champ à une date trop tôt.\";s:13:\"date_too_late\";s:34:\"Ce champ à une date trop tardive.\";s:14:\"invalid_number\";s:27:\"Veuillez saisir un numéro.\";s:16:\"number_too_small\";s:34:\"Ce champ à un numéro trop court.\";s:16:\"number_too_large\";s:32:\"Ce champ a un numéro trop long.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:13:\"invalid_email\";s:37:\"Veuillez saisir votre adresse e-mail.\";s:11:\"invalid_url\";s:24:\"Veuillez saisisr une URL\";s:11:\"invalid_tel\";s:42:\"Veuillez saisir un numéro de téléphone.\";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'fr_FR'),
(9, 5, '_hash', 'bfe14998ec004b659ba99bda201c21fd1445fe90'),
(12, 7, '_edit_lock', '1692257681:1'),
(13, 10, '_edit_lock', '1692184601:1'),
(14, 12, '_edit_lock', '1692190226:1'),
(15, 14, '_edit_lock', '1692258424:1'),
(16, 16, '_edit_lock', '1692258734:1'),
(17, 18, '_edit_lock', '1692259755:1'),
(18, 20, '_edit_lock', '1692191876:1'),
(19, 10, 'footnotes', ''),
(24, 26, '_wp_attached_file', '2023/08/Distribution-de-vetement.jpg'),
(25, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:607;s:6:\"height\";i:960;s:4:\"file\";s:36:\"2023/08/Distribution-de-vetement.jpg\";s:8:\"filesize\";i:99218;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"Distribution-de-vetement-190x300.jpg\";s:5:\"width\";i:190;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19049;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"Distribution-de-vetement-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8825;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 27, '_wp_attached_file', '2023/08/Distribution-de-vetements-2.jpg'),
(27, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:528;s:6:\"height\";i:960;s:4:\"file\";s:39:\"2023/08/Distribution-de-vetements-2.jpg\";s:8:\"filesize\";i:70966;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"Distribution-de-vetements-2-165x300.jpg\";s:5:\"width\";i:165;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16106;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"Distribution-de-vetements-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8738;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 28, '_wp_attached_file', '2023/08/Distribution-de-vetements-3.jpg'),
(29, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:39:\"2023/08/Distribution-de-vetements-3.jpg\";s:8:\"filesize\";i:113741;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"Distribution-de-vetements-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26168;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"Distribution-de-vetements-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8636;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:39:\"Distribution-de-vetements-3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118244;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 29, '_wp_attached_file', '2023/08/Distribution-de-vetements.jpg'),
(31, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:705;s:4:\"file\";s:37:\"2023/08/Distribution-de-vetements.jpg\";s:8:\"filesize\";i:104545;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"Distribution-de-vetements-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24702;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"Distribution-de-vetements-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9518;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"Distribution-de-vetements-768x564.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:564;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:109323;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 30, '_wp_attached_file', '2023/08/Don-de-sang-2.jpg'),
(33, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:25:\"2023/08/Don-de-sang-2.jpg\";s:8:\"filesize\";i:72444;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Don-de-sang-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17551;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Don-de-sang-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7487;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 31, '_wp_attached_file', '2023/08/Don-de-sang-3.jpg'),
(35, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:25:\"2023/08/Don-de-sang-3.jpg\";s:8:\"filesize\";i:124827;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Don-de-sang-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26266;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Don-de-sang-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8505;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"Don-de-sang-3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125629;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 32, '_wp_attached_file', '2023/08/Don-de-sang.jpg'),
(37, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:740;s:6:\"height\";i:450;s:4:\"file\";s:23:\"2023/08/Don-de-sang.jpg\";s:8:\"filesize\";i:127791;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"Don-de-sang-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15160;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"Don-de-sang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7637;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(38, 33, '_wp_attached_file', '2023/08/EEM-Antanimora-2.jpg'),
(39, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1824;s:6:\"height\";i:1824;s:4:\"file\";s:28:\"2023/08/EEM-Antanimora-2.jpg\";s:8:\"filesize\";i:181243;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"EEM-Antanimora-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18437;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"EEM-Antanimora-2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:114977;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"EEM-Antanimora-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6481;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"EEM-Antanimora-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74760;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"EEM-Antanimora-2-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:207446;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 34, '_wp_attached_file', '2023/08/EEM-Antanimora.jpg'),
(41, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1523;s:6:\"height\";i:1824;s:4:\"file\";s:26:\"2023/08/EEM-Antanimora.jpg\";s:8:\"filesize\";i:205201;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"EEM-Antanimora-250x300.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15946;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"EEM-Antanimora-855x1024.jpg\";s:5:\"width\";i:855;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110888;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"EEM-Antanimora-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6132;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"EEM-Antanimora-768x920.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:920;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94287;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"EEM-Antanimora-1283x1536.jpg\";s:5:\"width\";i:1283;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:201267;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 35, '_wp_attached_file', '2023/08/Enquete-BAD-3.jpeg'),
(43, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1632;s:6:\"height\";i:1224;s:4:\"file\";s:26:\"2023/08/Enquete-BAD-3.jpeg\";s:8:\"filesize\";i:216083;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Enquete-BAD-3-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20124;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"Enquete-BAD-3-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:129248;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Enquete-BAD-3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8173;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"Enquete-BAD-3-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83566;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"Enquete-BAD-3-1536x1152.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:241305;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:25:\"Copyright,Spreadtrum,2011\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 36, '_wp_attached_file', '2023/08/Enquete-BAD.jpeg'),
(45, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:576;s:6:\"height\";i:1280;s:4:\"file\";s:24:\"2023/08/Enquete-BAD.jpeg\";s:8:\"filesize\";i:139693;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Enquete-BAD-135x300.jpeg\";s:5:\"width\";i:135;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12570;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"Enquete-BAD-461x1024.jpeg\";s:5:\"width\";i:461;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:109882;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Enquete-BAD-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7962;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:25:\"Copyright,Spreadtrum,2011\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 37, '_wp_attached_file', '2023/08/Reboisement-2.jpg'),
(47, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:528;s:6:\"height\";i:960;s:4:\"file\";s:25:\"2023/08/Reboisement-2.jpg\";s:8:\"filesize\";i:126748;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Reboisement-2-165x300.jpg\";s:5:\"width\";i:165;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19927;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Reboisement-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9466;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 38, '_wp_attached_file', '2023/08/Reboisement-3.jpg'),
(49, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:528;s:6:\"height\";i:960;s:4:\"file\";s:25:\"2023/08/Reboisement-3.jpg\";s:8:\"filesize\";i:100054;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Reboisement-3-165x300.jpg\";s:5:\"width\";i:165;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15920;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Reboisement-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7713;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 39, '_wp_attached_file', '2023/08/Reboisement-4.jpg'),
(51, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:25:\"2023/08/Reboisement-4.jpg\";s:8:\"filesize\";i:75642;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Reboisement-4-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16459;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Reboisement-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8011;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"Reboisement-4-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76020;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 40, '_wp_attached_file', '2023/08/Reboisement.jpg'),
(53, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:23:\"2023/08/Reboisement.jpg\";s:8:\"filesize\";i:60694;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"Reboisement-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12206;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"Reboisement-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6633;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"Reboisement-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60067;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 41, '_edit_lock', '1692186098:1'),
(55, 43, '_wp_attached_file', '2023/08/logo-2.png'),
(56, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:18:\"2023/08/logo-2.png\";s:8:\"filesize\";i:40324;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 2, '_edit_lock', '1692191415:1'),
(58, 44, '_wp_attached_file', '2023/08/don.png'),
(59, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:481;s:6:\"height\";i:135;s:4:\"file\";s:15:\"2023/08/don.png\";s:8:\"filesize\";i:45186;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"don-300x84.png\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14836;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"don-150x135.png\";s:5:\"width\";i:150;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10552;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 41, '_edit_last', '1'),
(62, 41, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(63, 41, '_yoast_wpseo_wordproof_timestamp', ''),
(64, 10, '_edit_last', '1'),
(65, 10, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(66, 10, '_yoast_wpseo_wordproof_timestamp', ''),
(67, 10, '_wp_page_template', 'blank'),
(68, 62, '_edit_lock', '1692186390:1'),
(69, 62, '_edit_last', '1'),
(70, 62, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(71, 62, '_yoast_wpseo_wordproof_timestamp', ''),
(72, 62, 'footnotes', ''),
(73, 10, '_wp_trash_meta_status', 'publish'),
(74, 10, '_wp_trash_meta_time', '1692186432'),
(75, 10, '_wp_desired_post_slug', 'homer'),
(76, 62, '_wp_trash_meta_status', 'publish'),
(77, 62, '_wp_trash_meta_time', '1692186437'),
(78, 62, '_wp_desired_post_slug', 'home'),
(79, 65, '_edit_lock', '1692258149:1'),
(80, 65, '_edit_last', '1'),
(81, 65, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(82, 65, '_yoast_wpseo_wordproof_timestamp', ''),
(83, 65, 'footnotes', ''),
(84, 65, '_wp_page_template', 'blank'),
(85, 7, 'footnotes', ''),
(86, 7, '_edit_last', '1'),
(87, 7, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(88, 7, '_yoast_wpseo_wordproof_timestamp', ''),
(89, 7, '_wp_page_template', 'blank'),
(90, 12, '_wp_page_template', 'blank'),
(91, 12, '_edit_last', '1'),
(92, 12, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(93, 12, '_yoast_wpseo_wordproof_timestamp', ''),
(94, 12, '_wp_trash_meta_status', 'publish'),
(95, 12, '_wp_trash_meta_time', '1692190246'),
(96, 12, '_wp_desired_post_slug', 'our-events'),
(97, 14, '_wp_page_template', 'blank'),
(98, 14, '_edit_last', '1'),
(99, 14, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(100, 14, '_yoast_wpseo_wordproof_timestamp', ''),
(101, 16, '_wp_page_template', 'blank'),
(102, 16, '_edit_last', '1'),
(103, 16, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(104, 16, '_yoast_wpseo_wordproof_timestamp', ''),
(105, 18, 'footnotes', ''),
(106, 18, '_edit_last', '1'),
(107, 18, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(108, 18, '_yoast_wpseo_wordproof_timestamp', ''),
(109, 18, '_wp_page_template', 'blank'),
(110, 3, '_wp_trash_meta_status', 'draft'),
(111, 3, '_wp_trash_meta_time', '1692191479'),
(112, 3, '_wp_desired_post_slug', 'privacy-policy'),
(113, 2, '_wp_trash_meta_status', 'publish'),
(114, 2, '_wp_trash_meta_time', '1692191556'),
(115, 2, '_wp_desired_post_slug', 'sample-page'),
(116, 20, '_wp_page_template', 'blank'),
(117, 20, '_edit_last', '1'),
(118, 20, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(119, 20, '_yoast_wpseo_wordproof_timestamp', ''),
(120, 7, '_yoast_wpseo_metadesc', 'VMF - Femmes Moteurs de Développement est une fondation dédiée à l\'autonomisation des femmes malgaches. Fondée pendant le confinement de 2020, notre mission est d\'inspirer et de soutenir les femmes à devenir des actrices du développement économique, social et personnel. À travers des initiatives telles que l\'éducation, l\'entrepreneuriat, la santé et le social, nous travaillons à renforcer les femmes pour qu\'elles deviennent des forces motrices de changement positif dans leurs familles et leurs communautés. Rejoignez-nous dans notre vision de justice, de bonté et de courage pour un Madagascar prospère et équilibré. Ensemble, nous sommes les Femmes Moteurs de Développement.'),
(121, 7, '_yoast_wpseo_focuskw', 'VMF Femmes Moteurs de Développement Madagascar - Vehivavy Môteran\'ny Fampandrosoana - Fondation pour l\'autonomisation des femmes malgaches - A propos'),
(122, 7, '_yoast_wpseo_linkdex', '22'),
(123, 7, '_yoast_wpseo_opengraph-title', '%%title%% %%page%% %%sep%% %%sitename%%'),
(124, 7, '_yoast_wpseo_opengraph-description', 'VMF - Femmes Moteurs de Développement est une fondation dédiée à l\'autonomisation des femmes malgaches. Fondée pendant le confinement de 2020, notre mission est d\'inspirer et de soutenir les femmes à devenir des actrices du développement économique, social et personnel. À travers des initiatives telles que l\'éducation, l\'entrepreneuriat, la santé et le social, nous travaillons à renforcer les femmes pour qu\'elles deviennent des forces motrices de changement positif dans leurs familles et leurs communautés. Rejoignez-nous dans notre vision de justice, de bonté et de courage pour un Madagascar prospère et équilibré. Ensemble, nous sommes les Femmes Moteurs de Développement.'),
(125, 7, '_yoast_wpseo_opengraph-image', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg'),
(126, 7, '_yoast_wpseo_opengraph-image-id', '32'),
(127, 7, '_yoast_wpseo_twitter-title', '%%title%% %%page%% %%sep%% %%sitename%%'),
(128, 7, '_yoast_wpseo_twitter-description', 'VMF - Femmes Moteurs de Développement est une fondation dédiée à l\'autonomisation des femmes malgaches. Fondée pendant le confinement de 2020, notre mission est d\'inspirer et de soutenir les femmes à devenir des actrices du développement économique, social et personnel. À travers des initiatives telles que l\'éducation, l\'entrepreneuriat, la santé et le social, nous travaillons à renforcer les femmes pour qu\'elles deviennent des forces motrices de changement positif dans leurs familles et leurs communautés. Rejoignez-nous dans notre vision de justice, de bonté et de courage pour un Madagascar prospère et équilibré. Ensemble, nous sommes les Femmes Moteurs de Développement.'),
(129, 7, '_yoast_wpseo_twitter-image', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg'),
(130, 7, '_yoast_wpseo_twitter-image-id', '32'),
(131, 7, '_yoast_wpseo_schema_page_type', 'AboutPage'),
(132, 7, '_yoast_wpseo_schema_article_type', 'None'),
(133, 65, '_yoast_wpseo_focuskw', 'VMF - Vehivavy Môteran\'ny Fampandrosoana - Fondation Femmes Moteurs de Développement Madagascar'),
(134, 65, '_yoast_wpseo_metadesc', 'Bienvenue sur la Fondation Femmes Moteurs de Développement à Madagascar. Nous œuvrons pour l\'autonomisation et le développement des femmes malgaches. Découvrez nos initiatives pour un Madagascar prospère et équilibré.'),
(135, 65, '_yoast_wpseo_linkdex', '22'),
(136, 65, '_yoast_wpseo_opengraph-title', '%%title%% %%page%% %%sep%% %%sitename%%'),
(137, 65, '_yoast_wpseo_opengraph-description', 'Bienvenue sur la Fondation Femmes Moteurs de Développement à Madagascar. Nous œuvrons pour l\'autonomisation et le développement des femmes malgaches. Découvrez nos initiatives pour un Madagascar prospère et équilibré.'),
(138, 65, '_yoast_wpseo_opengraph-image', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg'),
(139, 65, '_yoast_wpseo_opengraph-image-id', '32'),
(140, 65, '_yoast_wpseo_schema_page_type', 'WebPage'),
(141, 65, '_yoast_wpseo_schema_article_type', 'None'),
(142, 65, '_yoast_wpseo_twitter-title', '%%title%% %%page%% %%sep%% %%sitename%%'),
(143, 65, '_yoast_wpseo_twitter-description', 'Bienvenue sur la Fondation Femmes Moteurs de Développement à Madagascar. Nous œuvrons pour l\'autonomisation et le développement des femmes malgaches. Découvrez nos initiatives pour un Madagascar prospère et équilibré.'),
(144, 65, '_yoast_wpseo_twitter-image', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg'),
(145, 65, '_yoast_wpseo_twitter-image-id', '32'),
(146, 14, '_yoast_wpseo_focuskw', 'Missions de la Fondation Femmes Moteurs de Développement Madagascar VMF Vehivavy Môteran\'ny Fampandrosoana'),
(147, 14, '_yoast_wpseo_metadesc', 'Découvrez les missions de la Fondation Femmes Moteurs de Développement à Madagascar. Nous nous engageons à promouvoir l\'autonomisation des femmes malgaches à travers l\'éducation, l\'entrepreneuriat, la santé et le social. En savoir plus sur nos efforts pour un avenir prospère.'),
(148, 14, '_yoast_wpseo_linkdex', '22'),
(149, 14, '_yoast_wpseo_opengraph-title', '%%title%% %%page%% %%sep%% %%sitename%%'),
(150, 14, '_yoast_wpseo_opengraph-description', 'Découvrez les missions de la Fondation Femmes Moteurs de Développement à Madagascar. Nous nous engageons à promouvoir l\'autonomisation des femmes malgaches à travers l\'éducation, l\'entrepreneuriat, la santé et le social. En savoir plus sur nos efforts pour un avenir prospère.'),
(151, 14, '_yoast_wpseo_opengraph-image', 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-2-165x300.jpg'),
(152, 14, '_yoast_wpseo_opengraph-image-id', '27'),
(153, 14, '_yoast_wpseo_twitter-title', '%%title%% %%page%% %%sep%% %%sitename%%'),
(154, 14, '_yoast_wpseo_twitter-description', 'Découvrez les missions de la Fondation Femmes Moteurs de Développement à Madagascar. Nous nous engageons à promouvoir l\'autonomisation des femmes malgaches à travers l\'éducation, l\'entrepreneuriat, la santé et le social. En savoir plus sur nos efforts pour un avenir prospère.'),
(155, 14, '_yoast_wpseo_twitter-image', 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-2.jpg'),
(156, 14, '_yoast_wpseo_twitter-image-id', '27'),
(157, 14, '_yoast_wpseo_schema_page_type', 'WebPage'),
(158, 16, '_yoast_wpseo_focuskw', 'Contact VMF Fondation Femmes Moteurs de Développement Madagascar - Vehivavy Môteran\'ny Fampandrosoana'),
(159, 16, '_yoast_wpseo_metadesc', 'Contactez la Fondation VMF - Femmes Moteurs de Développement à Madagascar pour toute question, collaboration ou soutien. Nous sommes là pour vous entendre et travailler ensemble vers un Madagascar plus équitable et prospère.'),
(160, 16, '_yoast_wpseo_linkdex', '22'),
(161, 16, '_yoast_wpseo_opengraph-title', '%%title%% %%page%% %%sep%% %%sitename%%'),
(162, 16, '_yoast_wpseo_opengraph-description', 'Contactez la Fondation VMF - Femmes Moteurs de Développement à Madagascar pour toute question, collaboration ou soutien. Nous sommes là pour vous entendre et travailler ensemble vers un Madagascar plus équitable et prospère.'),
(163, 16, '_yoast_wpseo_opengraph-image', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg'),
(164, 16, '_yoast_wpseo_opengraph-image-id', '32'),
(165, 16, '_yoast_wpseo_twitter-title', '%%title%% %%page%% %%sep%% %%sitename%%'),
(166, 16, '_yoast_wpseo_twitter-description', 'Contactez la Fondation VMF - Femmes Moteurs de Développement à Madagascar pour toute question, collaboration ou soutien. Nous sommes là pour vous entendre et travailler ensemble vers un Madagascar plus équitable et prospère.'),
(167, 16, '_yoast_wpseo_twitter-image', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg'),
(168, 16, '_yoast_wpseo_twitter-image-id', '32'),
(169, 16, '_yoast_wpseo_schema_page_type', 'ContactPage');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_posts`
--

CREATE TABLE `vmf_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_posts`
--

INSERT INTO `vmf_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-08-15 11:19:41', '2023-08-15 11:19:41', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-08-15 11:19:41', '2023-08-15 11:19:41', '', 0, 'https://vmf-mada.org/?p=1', 0, 'post', '', 1),
(2, 1, '2023-08-15 11:19:41', '2023-08-15 11:19:41', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://vmf-mada.org/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-08-16 13:12:36', '2023-08-16 13:12:36', '', 0, 'https://vmf-mada.org/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-08-15 11:19:41', '2023-08-15 11:19:41', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://vmf-mada.org.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-08-16 13:11:19', '2023-08-16 13:11:19', '', 0, 'https://vmf-mada.org/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-08-15 11:27:33', '2023-08-15 11:27:33', '<div class=\"form-group\">\r\n    <label for=\"your-name\">Votre nom</label>\r\n    [text* your-name id:your-name class:form-control autocomplete:name]\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n    <label for=\"your-email\">Votre e-mail</label>\r\n    [email* your-email id:your-email class:form-control autocomplete:email]\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n    <label for=\"your-subject\">Objet</label>\r\n    [text* your-subject id:your-subject class:form-control]\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n    <label for=\"your-message\">Votre message</label>\r\n    [textarea* your-message id:your-message class:form-control]\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n    [submit class:button \"Envoyer\" ]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <admin@vmf-mada.org>\n[_site_admin_email]\nDe : [your-name] [your-email]\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <admin@vmf-mada.org>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nVeuillez renseigner ce champ.\nCe champ à une date trop tardive.\nCe champ à un numéro trop court.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier téléversé est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nVeuillez saisir une date au format AAAA-MM-JJ.\nCe champ à une date trop tôt.\nCe champ à une date trop tardive.\nVeuillez saisir un numéro.\nCe champ à un numéro trop court.\nCe champ a un numéro trop long.\nLa réponse à la question est incorrecte.\nVeuillez saisir votre adresse e-mail.\nVeuillez saisisr une URL\nVeuillez saisir un numéro de téléphone.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2023-08-15 12:57:23', '2023-08-15 12:57:23', '', 0, 'https://vmf-mada.org/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2023-08-15 11:34:12', '2023-08-15 11:34:12', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_aboutpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'A Propos', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2023-08-17 07:34:39', '2023-08-17 07:34:39', '', 0, 'https://vmf-mada.org/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-08-15 11:33:37', '2023-08-15 11:33:37', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-08-15 11:33:37', '2023-08-15 11:33:37', '', 0, 'https://vmf-mada.org/2023/08/15/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(9, 1, '2023-08-15 11:34:12', '2023-08-15 11:34:12', '', 'A Propos', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-08-15 11:34:12', '2023-08-15 11:34:12', '', 7, 'https://vmf-mada.org/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-08-15 11:35:01', '2023-08-15 11:35:01', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Homer', '', 'trash', 'closed', 'closed', '', 'homer__trashed', '', '', '2023-08-16 11:47:12', '2023-08-16 11:47:12', '', 0, 'https://vmf-mada.org/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-08-15 11:35:01', '2023-08-15 11:35:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-15 11:35:01', '2023-08-15 11:35:01', '', 10, 'https://vmf-mada.org/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-08-15 11:35:56', '2023-08-15 11:35:56', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_eventpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Nos Evénements', '', 'trash', 'closed', 'closed', '', 'our-events__trashed', '', '', '2023-08-16 12:50:46', '2023-08-16 12:50:46', '', 0, 'https://vmf-mada.org/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-08-15 11:35:56', '2023-08-15 11:35:56', '', 'Nos Evénements', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-08-15 11:35:56', '2023-08-15 11:35:56', '', 12, 'https://vmf-mada.org/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-08-15 11:36:35', '2023-08-15 11:36:35', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_missionpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Nos Missions', '', 'publish', 'closed', 'closed', '', 'our-missions', '', '', '2023-08-17 07:47:03', '2023-08-17 07:47:03', '', 0, 'https://vmf-mada.org/?page_id=14', 0, 'page', '', 0),
(15, 1, '2023-08-15 11:36:35', '2023-08-15 11:36:35', '', 'Nos Missions', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-08-15 11:36:35', '2023-08-15 11:36:35', '', 14, 'https://vmf-mada.org/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-08-15 11:37:16', '2023-08-15 11:37:16', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_contactpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Nous Contacter', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-08-17 07:52:03', '2023-08-17 07:52:03', '', 0, 'https://vmf-mada.org/?page_id=16', 0, 'page', '', 0),
(17, 1, '2023-08-15 11:37:16', '2023-08-15 11:37:16', '', 'Nous Contacter', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-08-15 11:37:16', '2023-08-15 11:37:16', '', 16, 'https://vmf-mada.org/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-08-15 11:37:45', '2023-08-15 11:37:45', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_joinpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Nous Rejoindre', '', 'publish', 'closed', 'closed', '', 'join-us', '', '', '2023-08-16 13:03:10', '2023-08-16 13:03:10', '', 0, 'https://vmf-mada.org/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-08-15 11:37:45', '2023-08-15 11:37:45', '', 'Nous Rejoindre', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-08-15 11:37:45', '2023-08-15 11:37:45', '', 18, 'https://vmf-mada.org/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-08-15 11:38:36', '2023-08-15 11:38:36', '<!-- wp:shortcode -->\n[custom_submitpage\n<!-- /wp:shortcode -->', 'submit page', '', 'publish', 'closed', 'closed', '', 'admin-only-submit-page', '', '', '2023-08-16 13:14:13', '2023-08-16 13:14:13', '', 0, 'https://vmf-mada.org/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-08-15 11:38:36', '2023-08-15 11:38:36', '', 'submit page', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-08-15 11:38:36', '2023-08-15 11:38:36', '', 20, 'https://vmf-mada.org/?p=21', 0, 'revision', '', 0),
(23, 1, '2023-08-15 11:43:43', '2023-08-15 11:43:43', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-08-15 11:43:43', '2023-08-15 11:43:43', '', 0, 'https://vmf-mada.org/2023/08/15/navigation/', 0, 'wp_navigation', '', 0),
(26, 1, '2023-08-15 12:11:20', '2023-08-15 12:11:20', '', 'Distribution de vêtement', '', 'inherit', 'open', 'closed', '', 'distribution-de-vetement', '', '', '2023-08-15 12:11:20', '2023-08-15 12:11:20', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetement.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2023-08-15 12:11:23', '2023-08-15 12:11:23', '', 'Distribution de vêtements (2)', '', 'inherit', 'open', 'closed', '', 'distribution-de-vetements-2', '', '', '2023-08-15 12:11:23', '2023-08-15 12:11:23', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2023-08-15 12:11:25', '2023-08-15 12:11:25', '', 'Distribution de vêtements (3)', '', 'inherit', 'open', 'closed', '', 'distribution-de-vetements-3', '', '', '2023-08-15 12:11:25', '2023-08-15 12:11:25', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2023-08-15 12:11:27', '2023-08-15 12:11:27', '', 'Distribution de vêtements', '', 'inherit', 'open', 'closed', '', 'distribution-de-vetements', '', '', '2023-08-15 12:11:27', '2023-08-15 12:11:27', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2023-08-15 12:11:29', '2023-08-15 12:11:29', '', 'Don de sang (2)', '', 'inherit', 'open', 'closed', '', 'don-de-sang-2', '', '', '2023-08-15 12:11:29', '2023-08-15 12:11:29', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2023-08-15 12:11:32', '2023-08-15 12:11:32', '', 'Don de sang (3)', '', 'inherit', 'open', 'closed', '', 'don-de-sang-3', '', '', '2023-08-15 12:11:32', '2023-08-15 12:11:32', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2023-08-15 12:11:33', '2023-08-15 12:11:33', '', 'Don de sang', '', 'inherit', 'open', 'closed', '', 'don-de-sang', '', '', '2023-08-15 12:11:33', '2023-08-15 12:11:33', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2023-08-15 12:11:36', '2023-08-15 12:11:36', '', 'EEM Antanimora (2)', '', 'inherit', 'open', 'closed', '', 'eem-antanimora-2', '', '', '2023-08-15 12:11:36', '2023-08-15 12:11:36', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/EEM-Antanimora-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2023-08-15 12:11:39', '2023-08-15 12:11:39', '', 'EEM Antanimora', '', 'inherit', 'open', 'closed', '', 'eem-antanimora', '', '', '2023-08-15 12:11:39', '2023-08-15 12:11:39', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/EEM-Antanimora.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2023-08-15 12:11:43', '2023-08-15 12:11:43', '', 'Enquête BAD 3', '', 'inherit', 'open', 'closed', '', 'enquete-bad-3', '', '', '2023-08-15 12:11:43', '2023-08-15 12:11:43', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Enquete-BAD-3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2023-08-15 12:11:45', '2023-08-15 12:11:45', '', 'Enquête BAD', '', 'inherit', 'open', 'closed', '', 'enquete-bad', '', '', '2023-08-15 12:11:45', '2023-08-15 12:11:45', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Enquete-BAD.jpeg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2023-08-15 12:14:16', '2023-08-15 12:14:16', '', 'Reboisement (2)', '', 'inherit', 'open', 'closed', '', 'reboisement-2', '', '', '2023-08-15 12:14:16', '2023-08-15 12:14:16', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2023-08-15 12:14:19', '2023-08-15 12:14:19', '', 'Reboisement (3)', '', 'inherit', 'open', 'closed', '', 'reboisement-3', '', '', '2023-08-15 12:14:19', '2023-08-15 12:14:19', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2023-08-15 12:14:21', '2023-08-15 12:14:21', '', 'Reboisement (4)', '', 'inherit', 'open', 'closed', '', 'reboisement-4', '', '', '2023-08-15 12:14:21', '2023-08-15 12:14:21', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2023-08-15 12:14:23', '2023-08-15 12:14:23', '', 'Reboisement', '', 'inherit', 'open', 'closed', '', 'reboisement', '', '', '2023-08-15 12:14:23', '2023-08-15 12:14:23', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2023-08-15 12:29:00', '2023-08-15 12:29:00', '', 'Merci pour votre donation', '', 'publish', 'closed', 'closed', '', 'thank-you', '', '', '2023-08-16 08:17:17', '2023-08-16 08:17:17', '', 0, 'https://vmf-mada.org/?page_id=41', 0, 'page', '', 0),
(42, 1, '2023-08-15 12:29:00', '2023-08-15 12:29:00', '', 'Donation', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2023-08-15 12:29:00', '2023-08-15 12:29:00', '', 41, 'https://vmf-mada.org/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-08-15 13:27:18', '2023-08-15 13:27:18', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-08-15 13:27:18', '2023-08-15 13:27:18', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2023-08-16 07:05:25', '2023-08-16 07:05:25', '', 'don', '', 'inherit', 'open', 'closed', '', 'don', '', '', '2023-08-16 07:05:25', '2023-08-16 07:05:25', '', 0, 'https://vmf-mada.org/wp-content/uploads/2023/08/don.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2023-08-16 08:17:16', '2023-08-16 08:17:16', '', 'Merci pour votre donation', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2023-08-16 08:17:16', '2023-08-16 08:17:16', '', 41, 'https://vmf-mada.org/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-08-16 10:45:56', '2023-08-16 10:45:56', '<!-- wp:paragraph -->\n<p>[custom_header]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&#91;custom_footer]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:45:56', '2023-08-16 10:45:56', '', 10, 'https://vmf-mada.org/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-08-16 10:46:17', '2023-08-16 10:46:17', '<!-- wp:paragraph -->\n<p>[custom_header]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[custom_footer]</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:46:17', '2023-08-16 10:46:17', '', 10, 'https://vmf-mada.org/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-08-16 10:49:15', '2023-08-16 10:49:15', '<!-- wp:paragraph -->\n<p>/</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&#91;custom_footer]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:49:15', '2023-08-16 10:49:15', '', 10, 'https://vmf-mada.org/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-08-16 10:49:35', '2023-08-16 10:49:35', '<!-- wp:paragraph -->\n<p>[custom_footer]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&#91;custom_footer]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:49:35', '2023-08-16 10:49:35', '', 10, 'https://vmf-mada.org/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-08-16 10:50:34', '2023-08-16 10:50:34', '<!-- wp:paragraph -->\n<p>[custom_footer]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&#91;paypal-donation]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:50:34', '2023-08-16 10:50:34', '', 10, 'https://vmf-mada.org/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-08-16 10:51:18', '2023-08-16 10:51:18', '<!-- wp:paragraph -->\n<p>[paypal-donation]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code></code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:51:18', '2023-08-16 10:51:18', '', 10, 'https://vmf-mada.org/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-08-16 10:51:55', '2023-08-16 10:51:55', '<!-- wp:paragraph -->\n<p>[custom_footer]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code></code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:51:55', '2023-08-16 10:51:55', '', 10, 'https://vmf-mada.org/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-08-16 10:52:43', '2023-08-16 10:52:43', '<!-- wp:paragraph -->\n<p>[custom_footer]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:52:43', '2023-08-16 10:52:43', '', 10, 'https://vmf-mada.org/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-08-16 10:54:08', '2023-08-16 10:54:08', '<!-- wp:paragraph -->\n<p>[paypal-donation]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:54:08', '2023-08-16 10:54:08', '', 10, 'https://vmf-mada.org/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-08-16 10:55:02', '2023-08-16 10:55:02', '<!-- wp:paragraph -->\n<p>[custom_header]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:55:02', '2023-08-16 10:55:02', '', 10, 'https://vmf-mada.org/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-08-16 11:01:39', '2023-08-16 11:01:39', '<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code></code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2023-08-16 11:01:39', '2023-08-16 11:01:39', '', 10, 'https://vmf-mada.org/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-08-16 10:59:49', '2023-08-16 10:59:49', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 10:59:49', '2023-08-16 10:59:49', '', 10, 'https://vmf-mada.org/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-08-16 11:01:11', '2023-08-16 11:01:11', '<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 11:01:11', '2023-08-16 11:01:11', '', 10, 'https://vmf-mada.org/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-08-16 11:02:01', '2023-08-16 11:02:01', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 11:02:01', '2023-08-16 11:02:01', '', 10, 'https://vmf-mada.org/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-08-16 11:44:54', '2023-08-16 11:44:54', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Homer', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-08-16 11:44:54', '2023-08-16 11:44:54', '', 10, 'https://vmf-mada.org/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-08-16 11:46:25', '2023-08-16 11:46:25', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2023-08-16 11:47:17', '2023-08-16 11:47:17', '', 0, 'https://vmf-mada.org/?page_id=62', 0, 'page', '', 0),
(63, 1, '2023-08-16 11:46:25', '2023-08-16 11:46:25', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2023-08-16 11:46:25', '2023-08-16 11:46:25', '', 62, 'https://vmf-mada.org/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-08-16 11:46:31', '2023-08-16 11:46:31', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '62-autosave-v1', '', '', '2023-08-16 11:46:31', '2023-08-16 11:46:31', '', 62, 'https://vmf-mada.org/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-08-16 11:47:56', '2023-08-16 11:47:56', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_homepage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Accueil', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-08-17 07:42:29', '2023-08-17 07:42:29', '', 0, 'https://vmf-mada.org/?page_id=65', 0, 'page', '', 0),
(66, 1, '2023-08-16 11:47:56', '2023-08-16 11:47:56', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-08-16 11:47:56', '2023-08-16 11:47:56', '', 65, 'https://vmf-mada.org/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-08-16 11:52:25', '2023-08-16 11:52:25', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-08-16 11:52:25', '2023-08-16 11:52:25', '', 65, 'https://vmf-mada.org/?p=67', 0, 'revision', '', 0),
(69, 1, '2023-08-16 11:52:37', '2023-08-16 11:52:37', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-08-16 11:52:37', '2023-08-16 11:52:37', '', 65, 'https://vmf-mada.org/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-08-16 11:58:06', '2023-08-16 11:58:06', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_home]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-08-16 11:58:06', '2023-08-16 11:58:06', '', 65, 'https://vmf-mada.org/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-08-16 11:58:12', '2023-08-16 11:58:12', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_hom]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-08-16 11:58:12', '2023-08-16 11:58:12', '', 65, 'https://vmf-mada.org/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-08-16 11:58:48', '2023-08-16 11:58:48', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_homepage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-08-16 11:58:48', '2023-08-16 11:58:48', '', 65, 'https://vmf-mada.org/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-08-16 12:05:58', '2023-08-16 12:05:58', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_homepage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-08-16 12:05:58', '2023-08-16 12:05:58', '', 65, 'https://vmf-mada.org/?p=73', 0, 'revision', '', 0),
(75, 1, '2023-08-16 12:44:27', '2023-08-16 12:44:27', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_aboutpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'A Propos', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-08-16 12:44:27', '2023-08-16 12:44:27', '', 7, 'https://vmf-mada.org/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-08-16 12:50:04', '2023-08-16 12:50:04', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_eventpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Nos Evénements', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-08-16 12:50:04', '2023-08-16 12:50:04', '', 12, 'https://vmf-mada.org/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-08-16 12:51:38', '2023-08-16 12:51:38', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_missionpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Nos Missions', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-08-16 12:51:38', '2023-08-16 12:51:38', '', 14, 'https://vmf-mada.org/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-08-16 12:57:16', '2023-08-16 12:57:16', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_contactpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Nous Contacter', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-08-16 12:57:16', '2023-08-16 12:57:16', '', 16, 'https://vmf-mada.org/?p=78', 0, 'revision', '', 0),
(80, 1, '2023-08-16 13:03:09', '2023-08-16 13:03:09', '<!-- wp:shortcode -->\n[custom_header]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_joinpage]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[custom_footer]\n<!-- /wp:shortcode -->', 'Nous Rejoindre', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-08-16 13:03:09', '2023-08-16 13:03:09', '', 18, 'https://vmf-mada.org/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-08-16 13:11:19', '2023-08-16 13:11:19', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://vmf-mada.org.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-08-16 13:11:19', '2023-08-16 13:11:19', '', 3, 'https://vmf-mada.org/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-08-16 13:12:36', '2023-08-16 13:12:36', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://vmf-mada.org/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-08-16 13:12:36', '2023-08-16 13:12:36', '', 2, 'https://vmf-mada.org/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-08-16 13:13:51', '2023-08-16 13:13:51', '<!-- wp:shortcode -->\n[custom_submit_page\n<!-- /wp:shortcode -->', 'submit page', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-08-16 13:13:51', '2023-08-16 13:13:51', '', 20, 'https://vmf-mada.org/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-08-16 13:14:12', '2023-08-16 13:14:12', '<!-- wp:shortcode -->\n[custom_submitpage\n<!-- /wp:shortcode -->', 'submit page', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-08-16 13:14:12', '2023-08-16 13:14:12', '', 20, 'https://vmf-mada.org/?p=84', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `vmf_termmeta`
--

CREATE TABLE `vmf_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vmf_terms`
--

CREATE TABLE `vmf_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_terms`
--

INSERT INTO `vmf_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0);

-- --------------------------------------------------------

--
-- Structure de la table `vmf_term_relationships`
--

CREATE TABLE `vmf_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_term_relationships`
--

INSERT INTO `vmf_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `vmf_term_taxonomy`
--

CREATE TABLE `vmf_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_term_taxonomy`
--

INSERT INTO `vmf_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vmf_usermeta`
--

CREATE TABLE `vmf_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_usermeta`
--

INSERT INTO `vmf_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin@vmf'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'vmf_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'vmf_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'vmf_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"197.149.60.0\";}'),
(19, 1, 'vmf_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:5:{i:0;s:15:\"page-attributes\";i:1;s:16:\"discussion-panel\";i:2;s:14:\"featured-image\";i:3;s:11:\"post-status\";i:4;s:24:\"yoast-seo/document-panel\";}}s:9:\"_modified\";s:24:\"2023-08-16T11:53:06.265Z\";}'),
(21, 1, 'vmf_user-settings', 'libraryContent=browse&mfold=o'),
(22, 1, 'vmf_user-settings-time', '1692102498'),
(24, 1, '_yoast_wpseo_profile_updated', '1692110637'),
(26, 1, 'closedpostboxes_page', 'a:0:{}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}'),
(33, 1, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:10:\"wpseo_meta\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_users`
--

CREATE TABLE `vmf_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_users`
--

INSERT INTO `vmf_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin@vmf', '$P$BNaBa5FbT0S7L8Ns5sZqGqrFX6EJOr/', 'adminvmf', 'admin@vmf-mada.org', 'https://vmf-mada.org', '2023-08-15 11:19:41', '', 0, 'admin@vmf');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_yoast_indexable`
--

CREATE TABLE `vmf_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_yoast_indexable`
--

INSERT INTO `vmf_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'https://vmf-mada.org/category/uncategorized/', '44:8552a73db9db3944aec99f8820a57eb7', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-15 13:21:34', '2023-08-15 13:21:55', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-15 11:19:41', '2023-08-15 11:19:41', NULL),
(2, 'https://vmf-mada.org/?page_id=3', '31:4f867a713884bee61a0516af4b78f25d', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 13:21:34', '2023-08-16 13:11:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-16 13:11:19', '2023-08-15 11:19:41', 0),
(3, 'https://vmf-mada.org/author/adminvmf/', '37:c8993daba6b338a0b63a828ee6f52c4f', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/2d4c1ded044c4f7dce69caab1208ac6c?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/2d4c1ded044c4f7dce69caab1208ac6c?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-08-15 13:21:34', '2023-08-17 07:52:04', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-17 07:52:03', '2023-08-15 11:19:41', NULL),
(4, 'https://vmf-mada.org/?page_id=2', '31:479a1c07a67dd519129fb70b3024ebab', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-15 13:21:34', '2023-08-16 13:12:36', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-16 13:12:36', '2023-08-15 11:19:41', 0),
(5, 'https://vmf-mada.org/about-us/', '30:39d0b412934f63e83ff1856e4174239f', 7, 'post', 'page', 1, 0, NULL, 'VMF - Femmes Moteurs de Développement est une fondation dédiée à l\'autonomisation des femmes malgaches. Fondée pendant le confinement de 2020, notre mission est d\'inspirer et de soutenir les femmes à devenir des actrices du développement économique, social et personnel. À travers des initiatives telles que l\'éducation, l\'entrepreneuriat, la santé et le social, nous travaillons à renforcer les femmes pour qu\'elles deviennent des forces motrices de changement positif dans leurs familles et leurs communautés. Rejoignez-nous dans notre vision de justice, de bonté et de courage pour un Madagascar prospère et équilibré. Ensemble, nous sommes les Femmes Moteurs de Développement.', 'A Propos', 'publish', NULL, 0, NULL, NULL, NULL, 'VMF Femmes Moteurs de Développement Madagascar - Vehivavy Môteran\'ny Fampandrosoana - Fondation pour l\'autonomisation des femmes malgaches - A propos', 22, 0, 0, NULL, 0, NULL, NULL, NULL, '%%title%% %%page%% %%sep%% %%sitename%%', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', 'VMF - Femmes Moteurs de Développement est une fondation dédiée à l\'autonomisation des femmes malgaches. Fondée pendant le confinement de 2020, notre mission est d\'inspirer et de soutenir les femmes à devenir des actrices du développement économique, social et personnel. À travers des initiatives telles que l\'éducation, l\'entrepreneuriat, la santé et le social, nous travaillons à renforcer les femmes pour qu\'elles deviennent des forces motrices de changement positif dans leurs familles et leurs communautés. Rejoignez-nous dans notre vision de justice, de bonté et de courage pour un Madagascar prospère et équilibré. Ensemble, nous sommes les Femmes Moteurs de Développement.', '32', 'set-by-user', '%%title%% %%page%% %%sep%% %%sitename%%', 'VMF - Femmes Moteurs de Développement est une fondation dédiée à l\'autonomisation des femmes malgaches. Fondée pendant le confinement de 2020, notre mission est d\'inspirer et de soutenir les femmes à devenir des actrices du développement économique, social et personnel. À travers des initiatives telles que l\'éducation, l\'entrepreneuriat, la santé et le social, nous travaillons à renforcer les femmes pour qu\'elles deviennent des forces motrices de changement positif dans leurs familles et leurs communautés. Rejoignez-nous dans notre vision de justice, de bonté et de courage pour un Madagascar prospère et équilibré. Ensemble, nous sommes les Femmes Moteurs de Développement.', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', '32', 'set-by-user', '{\"width\":740,\"height\":450,\"filesize\":127791,\"url\":\"https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg\",\"path\":\"/home/vmfmadao/public_html/wp-content/uploads/2023/08/Don-de-sang.jpg\",\"size\":\"full\",\"id\":\"32\",\"alt\":\"\",\"pixels\":333000,\"type\":\"image/jpeg\"}', 3, 6, NULL, '2023-08-15 13:21:34', '2023-08-17 07:34:40', 1, NULL, NULL, 'AboutPage', 'None', 0, 1, 2, '2023-08-17 07:34:39', '2023-08-15 11:34:12', 0),
(6, 'https://vmf-mada.org/?page_id=10', '32:6d41aa4e4341264f3aa028402ed221bb', 10, 'post', 'page', 1, 0, NULL, NULL, 'Homer', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2023-08-15 13:21:34', '2023-08-16 11:47:12', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-08-16 11:47:12', '2023-08-15 11:35:01', 0),
(7, 'https://vmf-mada.org/?page_id=12', '32:ad65114888e0d20a96f8e35143829fa7', 12, 'post', 'page', 1, 0, NULL, NULL, 'Nos Evénements', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2023-08-15 13:21:34', '2023-08-16 12:50:46', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-08-16 12:50:46', '2023-08-15 11:35:56', 0),
(8, 'https://vmf-mada.org/our-missions/', '34:1d63fbaca8771f77a3089c8a248f848e', 14, 'post', 'page', 1, 0, NULL, 'Découvrez les missions de la Fondation Femmes Moteurs de Développement à Madagascar. Nous nous engageons à promouvoir l\'autonomisation des femmes malgaches à travers l\'éducation, l\'entrepreneuriat, la santé et le social. En savoir plus sur nos efforts pour un avenir prospère.', 'Nos Missions', 'publish', NULL, 0, NULL, NULL, NULL, 'Missions de la Fondation Femmes Moteurs de Développement Madagascar VMF Vehivavy Môteran\'ny Fampandrosoana', 22, 0, 0, NULL, 0, NULL, NULL, NULL, '%%title%% %%page%% %%sep%% %%sitename%%', 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-2.jpg', 'Découvrez les missions de la Fondation Femmes Moteurs de Développement à Madagascar. Nous nous engageons à promouvoir l\'autonomisation des femmes malgaches à travers l\'éducation, l\'entrepreneuriat, la santé et le social. En savoir plus sur nos efforts pour un avenir prospère.', '27', 'set-by-user', '%%title%% %%page%% %%sep%% %%sitename%%', 'Découvrez les missions de la Fondation Femmes Moteurs de Développement à Madagascar. Nous nous engageons à promouvoir l\'autonomisation des femmes malgaches à travers l\'éducation, l\'entrepreneuriat, la santé et le social. En savoir plus sur nos efforts pour un avenir prospère.', 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-2.jpg', '27', 'set-by-user', '{\"width\":528,\"height\":960,\"filesize\":70966,\"url\":\"https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-2.jpg\",\"path\":\"/home/vmfmadao/public_html/wp-content/uploads/2023/08/Distribution-de-vetements-2.jpg\",\"size\":\"full\",\"id\":\"27\",\"alt\":\"\",\"pixels\":506880,\"type\":\"image/jpeg\"}', 3, 6, NULL, '2023-08-15 13:21:34', '2023-08-17 07:47:03', 1, NULL, NULL, 'WebPage', NULL, 0, 1, 2, '2023-08-17 07:47:03', '2023-08-15 11:36:35', 0),
(9, 'https://vmf-mada.org/contact-us/', '32:51d9c24af4bdc142067ac4f753a9c78a', 16, 'post', 'page', 1, 0, NULL, 'Contactez la Fondation VMF - Femmes Moteurs de Développement à Madagascar pour toute question, collaboration ou soutien. Nous sommes là pour vous entendre et travailler ensemble vers un Madagascar plus équitable et prospère.', 'Nous Contacter', 'publish', NULL, 0, NULL, NULL, NULL, 'Contact VMF Fondation Femmes Moteurs de Développement Madagascar - Vehivavy Môteran\'ny Fampandrosoana', 22, 0, 0, NULL, 0, NULL, NULL, NULL, '%%title%% %%page%% %%sep%% %%sitename%%', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', 'Contactez la Fondation VMF - Femmes Moteurs de Développement à Madagascar pour toute question, collaboration ou soutien. Nous sommes là pour vous entendre et travailler ensemble vers un Madagascar plus équitable et prospère.', '32', 'set-by-user', '%%title%% %%page%% %%sep%% %%sitename%%', 'Contactez la Fondation VMF - Femmes Moteurs de Développement à Madagascar pour toute question, collaboration ou soutien. Nous sommes là pour vous entendre et travailler ensemble vers un Madagascar plus équitable et prospère.', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', '32', 'set-by-user', '{\"width\":740,\"height\":450,\"filesize\":127791,\"url\":\"https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg\",\"path\":\"/home/vmfmadao/public_html/wp-content/uploads/2023/08/Don-de-sang.jpg\",\"size\":\"full\",\"id\":\"32\",\"alt\":\"\",\"pixels\":333000,\"type\":\"image/jpeg\"}', 4, NULL, NULL, '2023-08-15 13:21:34', '2023-08-17 07:52:04', 1, NULL, NULL, 'ContactPage', NULL, 0, 1, 2, '2023-08-17 07:52:03', '2023-08-15 11:37:16', 0),
(10, 'https://vmf-mada.org/join-us/', '29:c0d67074fa4e44373797d6c582e04637', 18, 'post', 'page', 1, 0, NULL, NULL, 'Nous Rejoindre', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 6, NULL, '2023-08-15 13:21:34', '2023-08-16 13:03:10', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-08-16 13:03:10', '2023-08-15 11:37:45', 0),
(11, 'https://vmf-mada.org/admin-only-submit-page/', '44:08f5b97a64a0895b95ae21477c863d68', 20, 'post', 'page', 1, 0, NULL, NULL, 'submit page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-15 13:21:34', '2023-08-16 13:14:13', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-08-16 13:14:13', '2023-08-15 11:38:36', 0),
(12, 'https://vmf-mada.org/thank-you/', '31:9473447294a1a7e6fc564d5c1b0f9113', 41, 'post', 'page', 1, 0, NULL, NULL, 'Merci pour votre donation', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-15 13:21:34', '2023-08-16 08:17:17', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-08-16 08:17:17', '2023-08-15 12:29:00', 0),
(13, 'https://vmf-mada.org/2023/08/15/hello-world/', '44:78f764598e7b1f45b350740936aeff4f', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-08-15 13:21:34', '2023-08-15 13:21:54', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-15 11:19:41', '2023-08-15 11:19:41', 0),
(14, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page non trouvée %%sep%% %%sitename%%', NULL, 'Erreur 404 : Page introuvable', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 13:21:36', '2023-08-15 13:21:36', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 13:21:36', '2023-08-15 13:21:36', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(16, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 13:21:36', '2023-08-15 13:21:36', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(17, 'https://vmf-mada.org/', '21:3252611f398f2eb70b65e6717bc2c445', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Justice - Bonté - Courage', 'Accueil', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, 5, NULL, '2023-08-15 13:31:17', '2023-08-17 07:52:04', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-08-17 07:52:03', '2023-08-15 11:19:41', NULL),
(18, 'https://vmf-mada.org/?page_id=62', '32:0ae10c6e5012ec2b84dc837a1ab6ee02', 62, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-16 11:46:25', '2023-08-16 11:47:17', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-08-16 11:47:17', '2023-08-16 11:46:25', 0),
(19, 'https://vmf-mada.org/', '21:3252611f398f2eb70b65e6717bc2c445', 65, 'post', 'page', 1, 0, NULL, 'Bienvenue sur la Fondation Femmes Moteurs de Développement à Madagascar. Nous œuvrons pour l\'autonomisation et le développement des femmes malgaches. Découvrez nos initiatives pour un Madagascar prospère et équilibré.', 'Accueil', 'publish', NULL, 0, NULL, NULL, NULL, 'VMF - Vehivavy Môteran\'ny Fampandrosoana - Fondation Femmes Moteurs de Développement Madagascar', 22, 0, 0, NULL, 0, NULL, NULL, NULL, '%%title%% %%page%% %%sep%% %%sitename%%', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', 'Bienvenue sur la Fondation Femmes Moteurs de Développement à Madagascar. Nous œuvrons pour l\'autonomisation et le développement des femmes malgaches. Découvrez nos initiatives pour un Madagascar prospère et équilibré.', '32', 'set-by-user', '%%title%% %%page%% %%sep%% %%sitename%%', 'Bienvenue sur la Fondation Femmes Moteurs de Développement à Madagascar. Nous œuvrons pour l\'autonomisation et le développement des femmes malgaches. Découvrez nos initiatives pour un Madagascar prospère et équilibré.', 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', '32', 'set-by-user', '{\"width\":740,\"height\":450,\"filesize\":127791,\"url\":\"https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg\",\"path\":\"/home/vmfmadao/public_html/wp-content/uploads/2023/08/Don-de-sang.jpg\",\"size\":\"full\",\"id\":\"32\",\"alt\":\"\",\"pixels\":333000,\"type\":\"image/jpeg\"}', 3, NULL, NULL, '2023-08-16 11:47:56', '2023-08-17 07:42:29', 1, NULL, NULL, 'WebPage', 'None', 0, 1, 2, '2023-08-17 07:42:29', '2023-08-16 11:47:56', 0);

-- --------------------------------------------------------

--
-- Structure de la table `vmf_yoast_indexable_hierarchy`
--

CREATE TABLE `vmf_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_yoast_indexable_hierarchy`
--

INSERT INTO `vmf_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vmf_yoast_migrations`
--

CREATE TABLE `vmf_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `vmf_yoast_migrations`
--

INSERT INTO `vmf_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Structure de la table `vmf_yoast_primary_term`
--

CREATE TABLE `vmf_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vmf_yoast_seo_links`
--

CREATE TABLE `vmf_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vmf_yoast_seo_links`
--

INSERT INTO `vmf_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'https://vmf-mada.org/wp-admin/', 2, NULL, 'internal', 4, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'https://vmf-mada.org/our-missions/', 10, 14, 'internal', 6, 8, NULL, NULL, NULL, NULL, NULL),
(4, 'https://vmf-mada.org/join-us/', 10, 18, 'internal', 6, 10, NULL, NULL, NULL, NULL, NULL),
(5, 'https://vmf-mada.org/about-us/', 10, 7, 'internal', 6, 5, NULL, NULL, NULL, NULL, NULL),
(7, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-1.png', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'https://wordpress.org/', 10, NULL, 'external', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-3.jpg', 10, 28, 'image-in', 6, NULL, 960, 960, 113741, NULL, NULL),
(10, 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', 10, 32, 'image-in', 6, NULL, 450, 740, 127791, NULL, NULL),
(11, 'https://vmf-mada.org/wp-content/uploads/2023/08/EEM-Antanimora.jpg', 10, 34, 'image-in', 6, NULL, 1824, 1523, 205201, NULL, NULL),
(12, 'https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement.jpg', 10, 40, 'image-in', 6, NULL, 540, 960, 60694, NULL, NULL),
(13, 'https://vmf-mada.org/wp-content/uploads/2023/08/Enquete-BAD.jpeg', 10, 36, 'image-in', 6, NULL, 1280, 576, 139693, NULL, NULL),
(14, 'https://vmf-mada.org/wp-content/uploads/donors_featured_one.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'https://vmf-mada.org/wp-content/uploads/donors_featured_one.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'https://vmf-mada.org/wp-content/uploads/donors_featured_one.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'https://vmf-mada.org/wp-content/uploads/donors_featured_one.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'https://vmf-mada.org/wp-content/uploads/volanteer_1.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'https://vmf-mada.org/wp-content/uploads/volanteer_2.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'https://vmf-mada.org/wp-content/uploads/volanteer_3.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'https://vmf-mada.org/wp-content/uploads/volanteer_1.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'https://vmf-mada.org/wp-content/uploads/volanteer_2.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'https://vmf-mada.org/wp-content/uploads/volanteer_3.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'https://vmf-mada.org/wp-content/uploads/volanteer_1.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'https://vmf-mada.org/wp-content/uploads/volanteer_2.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'https://vmf-mada.org/wp-content/uploads/volanteer_3.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'https://vmf-mada.org/wp-content/uploads/news_images_1.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'https://vmf-mada.org/wp-content/uploads/news_images_2.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'https://vmf-mada.org/wp-content/uploads/news_images_3.jpg', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'https://vmf-mada.org/wp-content/uploads/microsoft.png', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'https://vmf-mada.org/wp-content/uploads/envato.png', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'https://vmf-mada.org/wp-content/uploads/yahoo.png', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'https://vmf-mada.org/wp-content/uploads/jquery.png', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'https://vmf-mada.org/wp-content/uploads/amazon.png', 10, NULL, 'image-in', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'https://www.paypalobjects.com/en_US/i/scr/pixel.gif', 10, NULL, 'image-ex', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'https://www.paypalobjects.com/en_US/i/scr/pixel.gif', 65, NULL, 'image-ex', 19, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'https://vmf-mada.org/our-missions/', 65, 14, 'internal', 19, 8, NULL, NULL, NULL, NULL, NULL),
(39, 'https://vmf-mada.org/join-us/', 65, 18, 'internal', 19, 10, NULL, NULL, NULL, NULL, NULL),
(40, 'https://vmf-mada.org/about-us/', 65, 7, 'internal', 19, 5, NULL, NULL, NULL, NULL, NULL),
(41, 'https://vmf-mada.org/wp-content/uploads/2023/08/Distribution-de-vetements-3.jpg', 65, 28, 'image-in', 19, NULL, 960, 960, 113741, NULL, NULL),
(42, 'https://vmf-mada.org/wp-content/uploads/2023/08/Don-de-sang.jpg', 65, 32, 'image-in', 19, NULL, 450, 740, 127791, NULL, NULL),
(43, 'https://vmf-mada.org/wp-content/uploads/2023/08/EEM-Antanimora.jpg', 65, 34, 'image-in', 19, NULL, 1824, 1523, 205201, NULL, NULL),
(44, 'https://vmf-mada.org/wp-content/uploads/2023/08/Reboisement.jpg', 65, 40, 'image-in', 19, NULL, 540, 960, 60694, NULL, NULL),
(45, 'https://vmf-mada.org/wp-content/uploads/2023/08/Enquete-BAD.jpeg', 65, 36, 'image-in', 19, NULL, 1280, 576, 139693, NULL, NULL),
(46, 'https://vmf-mada.org/', 7, NULL, 'internal', 5, 17, NULL, NULL, NULL, NULL, NULL),
(47, 'https://vmf-mada.org/our-missions/', 7, 14, 'internal', 5, 8, NULL, NULL, NULL, NULL, NULL),
(48, 'https://vmf-mada.org/join-us/', 7, 18, 'internal', 5, 10, NULL, NULL, NULL, NULL, NULL),
(49, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 7, 43, 'image-in', 5, NULL, 150, 150, 40324, NULL, NULL),
(50, 'https://www.paypalobjects.com/en_US/i/scr/pixel.gif', 7, NULL, 'image-ex', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 7, 43, 'image-in', 5, NULL, 150, 150, 40324, NULL, NULL),
(52, 'https://vmf-mada.org/', 12, NULL, 'internal', 7, 17, NULL, NULL, NULL, NULL, NULL),
(53, 'https://vmf-mada.org/our-missions/', 12, 14, 'internal', 7, 8, NULL, NULL, NULL, NULL, NULL),
(54, 'https://vmf-mada.org/join-us/', 12, 18, 'internal', 7, 10, NULL, NULL, NULL, NULL, NULL),
(55, 'https://vmf-mada.org/about-us/', 12, 7, 'internal', 7, 5, NULL, NULL, NULL, NULL, NULL),
(56, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 12, 43, 'image-in', 7, NULL, 150, 150, 40324, NULL, NULL),
(57, 'https://www.paypalobjects.com/en_US/i/scr/pixel.gif', 12, NULL, 'image-ex', 7, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 12, 43, 'image-in', 7, NULL, 150, 150, 40324, NULL, NULL),
(59, 'https://vmf-mada.org/', 14, NULL, 'internal', 8, 17, NULL, NULL, NULL, NULL, NULL),
(60, 'https://vmf-mada.org/join-us/', 14, 18, 'internal', 8, 10, NULL, NULL, NULL, NULL, NULL),
(61, 'https://vmf-mada.org/about-us/', 14, 7, 'internal', 8, 5, NULL, NULL, NULL, NULL, NULL),
(62, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 14, 43, 'image-in', 8, NULL, 150, 150, 40324, NULL, NULL),
(63, 'https://www.paypalobjects.com/en_US/i/scr/pixel.gif', 14, NULL, 'image-ex', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 14, 43, 'image-in', 8, NULL, 150, 150, 40324, NULL, NULL),
(65, 'https://vmf-mada.org/', 16, NULL, 'internal', 9, 17, NULL, NULL, NULL, NULL, NULL),
(66, 'https://vmf-mada.org/our-missions/', 16, 14, 'internal', 9, 8, NULL, NULL, NULL, NULL, NULL),
(67, 'https://vmf-mada.org/join-us/', 16, 18, 'internal', 9, 10, NULL, NULL, NULL, NULL, NULL),
(68, 'https://vmf-mada.org/about-us/', 16, 7, 'internal', 9, 5, NULL, NULL, NULL, NULL, NULL),
(69, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 16, 43, 'image-in', 9, NULL, 150, 150, 40324, NULL, NULL),
(70, 'https://www.paypalobjects.com/en_US/i/scr/pixel.gif', 16, NULL, 'image-ex', 9, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 16, 43, 'image-in', 9, NULL, 150, 150, 40324, NULL, NULL),
(72, 'https://vmf-mada.org/', 18, NULL, 'internal', 10, 17, NULL, NULL, NULL, NULL, NULL),
(73, 'https://vmf-mada.org/our-missions/', 18, 14, 'internal', 10, 8, NULL, NULL, NULL, NULL, NULL),
(74, 'https://vmf-mada.org/about-us/', 18, 7, 'internal', 10, 5, NULL, NULL, NULL, NULL, NULL),
(75, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 18, 43, 'image-in', 10, NULL, 150, 150, 40324, NULL, NULL),
(76, 'https://www.paypalobjects.com/en_US/i/scr/pixel.gif', 18, NULL, 'image-ex', 10, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 18, 43, 'image-in', 10, NULL, 150, 150, 40324, NULL, NULL),
(78, 'mailto:narindra@vmf-mada.org', 7, NULL, 'external', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'mailto:narindra@vmf-mada.org', 7, NULL, 'external', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'mailto:yollande@vmf-mada.org', 7, NULL, 'external', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'mailto:yollande@vmf-mada.org', 7, NULL, 'external', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'mailto:narindra@vmf-mada.org', 65, NULL, 'external', 19, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'mailto:narindra@vmf-mada.org', 65, NULL, 'external', 19, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'mailto:yollande@vmf-mada.org', 65, NULL, 'external', 19, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'mailto:yollande@vmf-mada.org', 65, NULL, 'external', 19, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 65, 43, 'image-in', 19, NULL, 150, 150, 40324, NULL, NULL),
(87, 'https://vmf-mada.org/wp-content/uploads/2023/08/logo-2.png', 65, 43, 'image-in', 19, NULL, 150, 150, 40324, NULL, NULL),
(88, 'mailto:narindra@vmf-mada.org', 14, NULL, 'external', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'mailto:narindra@vmf-mada.org', 14, NULL, 'external', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'mailto:yollande@vmf-mada.org', 14, NULL, 'external', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'mailto:yollande@vmf-mada.org', 14, NULL, 'external', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'https://vmf-mada.org/wp-content/uploads/2023/08/EEM-Antanimora.jpg', 14, 34, 'image-in', 8, NULL, 1824, 1523, 205201, NULL, NULL),
(93, 'https://vmf-mada.org/wp-content/uploads/2023/08/EEM-Antanimora-2.jpg', 14, 33, 'image-in', 8, NULL, 1824, 1824, 181243, NULL, NULL),
(94, 'mailto:narindra@vmf-mada.org', 16, NULL, 'external', 9, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'mailto:narindra@vmf-mada.org', 16, NULL, 'external', 9, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'mailto:yollande@vmf-mada.org', 16, NULL, 'external', 9, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'mailto:yollande@vmf-mada.org', 16, NULL, 'external', 9, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `vmf_commentmeta`
--
ALTER TABLE `vmf_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `vmf_comments`
--
ALTER TABLE `vmf_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `vmf_content_modificator_activity`
--
ALTER TABLE `vmf_content_modificator_activity`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vmf_content_modificator_carousel`
--
ALTER TABLE `vmf_content_modificator_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vmf_content_modificator_event`
--
ALTER TABLE `vmf_content_modificator_event`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vmf_content_modificator_image`
--
ALTER TABLE `vmf_content_modificator_image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vmf_content_modificator_member`
--
ALTER TABLE `vmf_content_modificator_member`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vmf_links`
--
ALTER TABLE `vmf_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `vmf_options`
--
ALTER TABLE `vmf_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `vmf_postmeta`
--
ALTER TABLE `vmf_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `vmf_posts`
--
ALTER TABLE `vmf_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `vmf_termmeta`
--
ALTER TABLE `vmf_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `vmf_terms`
--
ALTER TABLE `vmf_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `vmf_term_relationships`
--
ALTER TABLE `vmf_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `vmf_term_taxonomy`
--
ALTER TABLE `vmf_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `vmf_usermeta`
--
ALTER TABLE `vmf_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `vmf_users`
--
ALTER TABLE `vmf_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `vmf_yoast_indexable`
--
ALTER TABLE `vmf_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Index pour la table `vmf_yoast_indexable_hierarchy`
--
ALTER TABLE `vmf_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Index pour la table `vmf_yoast_migrations`
--
ALTER TABLE `vmf_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vmf_yoast_migrations_version` (`version`);

--
-- Index pour la table `vmf_yoast_primary_term`
--
ALTER TABLE `vmf_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Index pour la table `vmf_yoast_seo_links`
--
ALTER TABLE `vmf_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `vmf_commentmeta`
--
ALTER TABLE `vmf_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vmf_comments`
--
ALTER TABLE `vmf_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `vmf_content_modificator_activity`
--
ALTER TABLE `vmf_content_modificator_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `vmf_content_modificator_carousel`
--
ALTER TABLE `vmf_content_modificator_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `vmf_content_modificator_event`
--
ALTER TABLE `vmf_content_modificator_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `vmf_content_modificator_image`
--
ALTER TABLE `vmf_content_modificator_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `vmf_content_modificator_member`
--
ALTER TABLE `vmf_content_modificator_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `vmf_links`
--
ALTER TABLE `vmf_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vmf_options`
--
ALTER TABLE `vmf_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;

--
-- AUTO_INCREMENT pour la table `vmf_postmeta`
--
ALTER TABLE `vmf_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT pour la table `vmf_posts`
--
ALTER TABLE `vmf_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `vmf_termmeta`
--
ALTER TABLE `vmf_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vmf_terms`
--
ALTER TABLE `vmf_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `vmf_term_taxonomy`
--
ALTER TABLE `vmf_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `vmf_usermeta`
--
ALTER TABLE `vmf_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `vmf_users`
--
ALTER TABLE `vmf_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `vmf_yoast_indexable`
--
ALTER TABLE `vmf_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `vmf_yoast_migrations`
--
ALTER TABLE `vmf_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `vmf_yoast_primary_term`
--
ALTER TABLE `vmf_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vmf_yoast_seo_links`
--
ALTER TABLE `vmf_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
