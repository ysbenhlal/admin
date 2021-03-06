#
# Libertempo
#

#
#
#
# TABLE: conges_appli
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_appli` ;
CREATE TABLE `conges_appli` (
  `appli_variable` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `appli_valeur` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`appli_variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_appli` ;
INSERT INTO `conges_appli` VALUES ( 'num_exercice', '1' );
INSERT INTO `conges_appli` VALUES ( 'date_limite_reliquats', '0' );
INSERT INTO `conges_appli` VALUES ( 'semaine_bgcolor', '#FFFFFF' );
INSERT INTO `conges_appli` VALUES ( 'week_end_bgcolor', '#BFBFBF' );
INSERT INTO `conges_appli` VALUES ( 'temps_partiel_bgcolor', '#FFFFC4' );
INSERT INTO `conges_appli` VALUES ( 'conges_bgcolor', '#DEDEDE' );
INSERT INTO `conges_appli` VALUES ( 'demande_conges_bgcolor', '#E7C4C4' );
INSERT INTO `conges_appli` VALUES ( 'absence_autre_bgcolor', '#D3FFB6' );
INSERT INTO `conges_appli` VALUES ( 'fermeture_bgcolor', '#7B9DE6' );
INSERT INTO `conges_appli` VALUES ( 'token_instance', '' );
#
#
# TABLE: conges_config
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_config` ;
CREATE TABLE `conges_config` (
  `conf_nom` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `conf_valeur` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `conf_groupe` varchar(200) NOT NULL DEFAULT '',
  `conf_type` varchar(200) NOT NULL DEFAULT 'texte',
  `conf_commentaire` text NOT NULL,
  PRIMARY KEY (`conf_nom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_config` ;
INSERT INTO `conges_config` VALUES ( 'installed_version', '0', '00_libertempo', 'texte', 'config_comment_installed_version' );
INSERT INTO `conges_config` VALUES ( 'lang', 'fr_FR', '00_libertempo', 'enum=fr/test', 'config_comment_lang' );
INSERT INTO `conges_config` VALUES ( 'URL_ACCUEIL_CONGES', 'http://libertempo/', '01_Serveur Web', 'texte', 'config_comment_URL_ACCUEIL_CONGES' );
INSERT INTO `conges_config` VALUES ( 'auth', 'TRUE', '04_Authentification', 'boolean', 'config_comment_auth' );
INSERT INTO `conges_config` VALUES ( 'how_to_connect_user', 'dbconges', '04_Authentification', 'enum=dbconges/ldap/CAS/SSO', 'config_comment_how_to_connect_user' );
INSERT INTO `conges_config` VALUES ( 'export_users_from_ldap', 'FALSE', '04_Authentification', 'boolean', 'config_comment_export_users_from_ldap' );
INSERT INTO `conges_config` VALUES ( 'resp_association_planning', 'FALSE', '06_Responsable', 'boolean', 'config_comment_resp_association_planning' );
INSERT INTO `conges_config` VALUES ( 'user_saisie_demande', 'TRUE', '05_Utilisateur', 'boolean', 'config_comment_user_saisie_demande' );
INSERT INTO `conges_config` VALUES ( 'user_saisie_mission', 'TRUE', '05_Utilisateur', 'boolean', 'config_comment_user_saisie_mission' );
INSERT INTO `conges_config` VALUES ( 'user_ch_passwd', 'TRUE', '05_Utilisateur', 'boolean', 'config_comment_user_ch_passwd' );
INSERT INTO `conges_config` VALUES ( 'resp_saisie_mission', 'FALSE', '06_Responsable', 'boolean', 'config_comment_resp_saisie_mission' );
INSERT INTO `conges_config` VALUES ( 'resp_ajoute_conges', 'TRUE', '06_Responsable', 'boolean', 'config_comment_resp_ajoute_conges' );
INSERT INTO `conges_config` VALUES ( 'gestion_cas_absence_responsable', 'FALSE', '06_Responsable', 'boolean', 'config_comment_gestion_cas_absence_responsable' );
INSERT INTO `conges_config` VALUES ( 'admin_see_all', 'FALSE', '07_Administrateur', 'boolean', 'config_comment_admin_see_all' );
INSERT INTO `conges_config` VALUES ( 'admin_change_passwd', 'TRUE', '07_Administrateur', 'boolean', 'config_comment_admin_change_passwd' );
INSERT INTO `conges_config` VALUES ( 'affiche_bouton_config_pour_admin', 'FALSE', '07_Administrateur', 'boolean', 'config_comment_affiche_bouton_config_pour_admin' );
INSERT INTO `conges_config` VALUES ( 'affiche_bouton_config_absence_pour_admin', 'FALSE', '07_Administrateur', 'boolean', 'config_comment_affiche_bouton_config_absence_pour_admin' );
INSERT INTO `conges_config` VALUES ( 'affiche_bouton_config_mail_pour_admin', 'FALSE', '07_Administrateur', 'boolean', 'config_comment_affiche_bouton_config_mail_pour_admin' );
INSERT INTO `conges_config` VALUES ( 'mail_new_demande_alerte_resp', 'FALSE', '08_Mail', 'boolean', 'config_comment_mail_new_demande_alerte_resp' );
INSERT INTO `conges_config` VALUES ( 'mail_valid_conges_alerte_user', 'FALSE', '08_Mail', 'boolean', 'config_comment_mail_valid_conges_alerte_user' );
INSERT INTO `conges_config` VALUES ( 'mail_prem_valid_conges_alerte_user', 'FALSE', '08_Mail', 'boolean', 'config_comment_mail_prem_valid_conges_alerte_user' );
INSERT INTO `conges_config` VALUES ( 'mail_refus_conges_alerte_user', 'FALSE', '08_Mail', 'boolean', 'config_comment_mail_refus_conges_alerte_user' );
INSERT INTO `conges_config` VALUES ( 'mail_annul_conges_alerte_user', 'FALSE', '08_Mail', 'boolean', 'config_comment_mail_annul_conges_alerte_user' );
INSERT INTO `conges_config` VALUES ( 'mail_modif_demande_alerte_resp', 'FALSE', '08_Mail', 'boolean', 'config_comment_mail_modif_demande_alerte_resp' );
INSERT INTO `conges_config` VALUES ( 'mail_supp_demande_alerte_resp', 'FALSE', '08_Mail', 'boolean', 'config_comment_mail_supp_demande_alerte_resp' );
INSERT INTO `conges_config` VALUES ( 'where_to_find_user_email', 'dbconges', '08_Mail', 'enum=dbconges/ldap', 'config_comment_where_to_find_user_email' );
INSERT INTO `conges_config` VALUES ( 'samedi_travail', 'FALSE', '09_jours ouvrables', 'boolean', 'config_comment_samedi_travail' );
INSERT INTO `conges_config` VALUES ( 'dimanche_travail', 'FALSE', '09_jours ouvrables', 'boolean', 'config_comment_dimanche_travail' );
INSERT INTO `conges_config` VALUES ( 'gestion_heures', 'TRUE', '12_Fonctionnement de l\'Etablissement', 'boolean', 'config_comment_gestion_heures' );
INSERT INTO `conges_config` VALUES ( 'fermeture_par_groupe', 'FALSE', '10_Gestion par groupes', 'boolean', 'config_comment_fermeture_par_groupe' );
INSERT INTO `conges_config` VALUES ( 'editions_papier', 'TRUE', '11_Editions papier', 'boolean', 'config_comment_editions_papier' );
INSERT INTO `conges_config` VALUES ( 'texte_haut_edition_papier', '- Libertempo : ??dition des cong??s -', '11_Editions papier', 'texte', 'config_comment_texte_haut_edition_papier' );
INSERT INTO `conges_config` VALUES ( 'texte_bas_edition_papier', '- ??dit?? par Libertempo -', '11_Editions papier', 'texte', 'config_comment_texte_bas_edition_papier' );
INSERT INTO `conges_config` VALUES ( 'user_echange_rtt', 'FALSE', '12_Fonctionnement de l\'Etablissement', 'boolean', 'config_comment_user_echange_rtt' );
INSERT INTO `conges_config` VALUES ( 'double_validation_conges', 'FALSE', '12_Fonctionnement de l\'Etablissement', 'boolean', 'config_comment_double_validation_conges' );
INSERT INTO `conges_config` VALUES ( 'grand_resp_ajout_conges', 'FALSE', '12_Fonctionnement de l\'Etablissement', 'boolean', 'config_comment_grand_resp_ajout_conges' );
INSERT INTO `conges_config` VALUES ( 'gestion_conges_exceptionnels', 'FALSE', '12_Fonctionnement de l\'Etablissement', 'boolean', 'config_comment_gestion_conges_exceptionnels' );
INSERT INTO `conges_config` VALUES ( 'solde_toujours_positif', 'FALSE', '12_Fonctionnement de l\'Etablissement', 'boolean', 'config_comment_solde_toujours_positif' );
INSERT INTO `conges_config` VALUES ( 'autorise_reliquats_exercice', 'TRUE', '12_Fonctionnement de l\'Etablissement', 'boolean', 'config_comment_autorise_reliquats_exercice' );
INSERT INTO `conges_config` VALUES ( 'nb_maxi_jours_reliquats', '0', '12_Fonctionnement de l\'Etablissement', 'texte', 'config_comment_nb_maxi_jours_reliquats' );
INSERT INTO `conges_config` VALUES ( 'jour_mois_limite_reliquats', '0', '12_Fonctionnement de l\'Etablissement', 'texte', 'config_comment_jour_mois_limite_reliquats' );
INSERT INTO `conges_config` VALUES ( 'interdit_saisie_periode_date_passee', 'FALSE', '05_Utilisateur', 'boolean', 'config_comment_interdit_saisie_periode_date_passee' );
INSERT INTO `conges_config` VALUES ( 'interdit_modif_demande', 'FALSE', '05_Utilisateur', 'boolean', 'config_comment_interdit_modif_demande' );
INSERT INTO `conges_config` VALUES ( 'duree_session', '1800', '13_Divers', 'texte', 'config_comment_duree_session' );
INSERT INTO `conges_config` VALUES ( 'affiche_date_traitement', 'FALSE', '13_Divers', 'boolean', 'config_comment_affiche_date_traitement' );
INSERT INTO `conges_config` VALUES ( 'affiche_soldes_calendrier', 'TRUE', '13_Divers', 'boolean', 'config_comment_affiche_soldes_calendrier' );
INSERT INTO `conges_config` VALUES ( 'affiche_demandes_dans_calendrier', 'FALSE', '13_Divers', 'boolean', 'config_comment_affiche_demandes_dans_calendrier' );
INSERT INTO `conges_config` VALUES ( 'affiche_jours_current_month_calendrier', 'FALSE', '13_Divers', 'boolean', 'config_comment_affiche_jours_current_month_calendrier' );
INSERT INTO `conges_config` VALUES ( 'calcul_auto_jours_feries_france', 'FALSE', '13_Divers', 'boolean', 'config_comment_calcul_auto_jours_feries_france' );
INSERT INTO `conges_config` VALUES ( 'export_ical', 'TRUE', '15_ical', 'boolean', 'config_comment__export_ical' );
INSERT INTO `conges_config` VALUES ( 'export_ical_salt', 'Jao%iT}', '15_ical', 'texte', 'config_comment_export_ical_salt' );
#
#
# TABLE: conges_echange_rtt
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_echange_rtt` ;
CREATE TABLE `conges_echange_rtt` (
  `e_login` varbinary(99) NOT NULL DEFAULT '',
  `e_date_jour` date NOT NULL DEFAULT '0000-00-00',
  `e_absence` enum('N','J','M','A') NOT NULL DEFAULT 'N',
  `e_presence` enum('N','J','M','A') NOT NULL DEFAULT 'N',
  `e_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`e_login`,`e_date_jour`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_echange_rtt` ;
#
#
# TABLE: conges_edition_papier
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_edition_papier` ;
CREATE TABLE `conges_edition_papier` (
  `ep_id` int(11) NOT NULL AUTO_INCREMENT,
  `ep_login` varbinary(99) NOT NULL DEFAULT '',
  `ep_date` date NOT NULL DEFAULT '0000-00-00',
  `ep_num_for_user` int(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ep_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_edition_papier` ;
#
#
# TABLE: conges_groupe
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_groupe` ;
CREATE TABLE `conges_groupe` (
  `g_gid` int(11) NOT NULL AUTO_INCREMENT,
  `g_groupename` varchar(50) NOT NULL DEFAULT '',
  `g_comment` varchar(250) DEFAULT NULL,
  `g_double_valid` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`g_gid`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_groupe` ;
#
#
# TABLE: conges_groupe_grd_resp
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_groupe_grd_resp` ;
CREATE TABLE `conges_groupe_grd_resp` (
  `ggr_gid` int(11) NOT NULL DEFAULT '0',
  `ggr_login` varbinary(99) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_groupe_grd_resp` ;
#
#
# TABLE: conges_groupe_resp
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_groupe_resp` ;
CREATE TABLE `conges_groupe_resp` (
  `gr_gid` int(11) NOT NULL DEFAULT '0',
  `gr_login` varbinary(99) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_groupe_resp` ;
#
#
# TABLE: conges_groupe_users
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_groupe_users` ;
CREATE TABLE `conges_groupe_users` (
  `gu_gid` int(11) NOT NULL DEFAULT '0',
  `gu_login` varbinary(99) NOT NULL DEFAULT '',
  UNIQUE KEY `gu_gid` (`gu_gid`,`gu_login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_groupe_users` ;
#
#
# TABLE: conges_jours_feries
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_jours_feries` ;
CREATE TABLE `conges_jours_feries` (
  `jf_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`jf_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_jours_feries` ;
#
#
# TABLE: conges_jours_fermeture
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_jours_fermeture` ;
CREATE TABLE `conges_jours_fermeture` (
  `jf_id` int(5) NOT NULL,
  `jf_gid` int(11) NOT NULL DEFAULT '0',
  `jf_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_jours_fermeture` ;
#
#
# TABLE: conges_logs
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_logs` ;
CREATE TABLE `conges_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_p_num` int(5) unsigned NOT NULL,
  `log_user_login_par` varbinary(99) NOT NULL DEFAULT '',
  `log_user_login_pour` varbinary(99) NOT NULL DEFAULT '',
  `log_etat` varchar(16) NOT NULL DEFAULT '',
  `log_comment` text,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8966 DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_logs` ;
#
#
# TABLE: conges_mail
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_mail` ;
CREATE TABLE `conges_mail` (
  `mail_nom` varchar(100) NOT NULL,
  `mail_subject` text,
  `mail_body` text,
  UNIQUE KEY `mail_nom` (`mail_nom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_mail` ;
INSERT INTO `conges_mail` VALUES ( 'mail_new_demande', 'APPLI CONGES - Demande de cong??s', ' __SENDER_NAME__ a solicit?? une demande de cong??s dans l\'application de gestion des cong??s.

Merci de consulter votre application Libertempo : __URL_ACCUEIL_CONGES__/

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique.' );
INSERT INTO `conges_mail` VALUES ( 'mail_new_demande_resp_absent', 'APPLI CONGES - Demande de cong??s', ' __SENDER_NAME__ a solicit?? une demande de cong??s dans l\'application de gestion des cong??s.

En votre absence, cette demande a ??t?? transf??r??e ?? votre (vos) propre(s) responsable(s)./

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique.' );
INSERT INTO `conges_mail` VALUES ( 'mail_valid_conges', 'APPLI CONGES - Cong??s accept??', ' __SENDER_NAME__ a enregistr??/accept?? un cong??s pour vous dans l\'application de gestion des cong??s.

Merci de consulter votre application Libertempo : __URL_ACCUEIL_CONGES__/

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique.' );
INSERT INTO `conges_mail` VALUES ( 'mail_refus_conges', 'APPLI CONGES - Cong??s refus??', ' __SENDER_NAME__ a refus?? une demande de cong??s pour vous dans l\'application de gestion des cong??s.

Merci de consulter votre application Libertempo : __URL_ACCUEIL_CONGES__/

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique.' );
INSERT INTO `conges_mail` VALUES ( 'mail_annul_conges', 'APPLI CONGES - Cong??s annul??', ' __SENDER_NAME__ a annul?? un de vos cong??s dans l\'application de gestion des cong??s.

Merci de consulter votre application Libertempo : __URL_ACCUEIL_CONGES__/

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique.' );
INSERT INTO `conges_mail` VALUES ( 'mail_prem_valid_conges', 'APPLI CONGES - Cong??s valid??', ' __SENDER_NAME__ a valid?? (premi??re validation) un cong??s pour vous dans l\'application de gestion des cong??s.
Il doit maintenant ??tre accept?? en deuxi??me validation.

Merci de consulter votre application Libertempo : __URL_ACCUEIL_CONGES__/

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique.' );
INSERT INTO `conges_mail` VALUES ( 'mail_new_absence_conges', 'APPLI CONGES - Nouvelle absence', ' __SENDER_NAME__ vous informe qu\'il sera absent. Ce type de cong??s ne nec??ssite pas de validation. Vous pouvez consulter votre application Libertempo : __URL_ACCUEIL_CONGES__/

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique. ' );
INSERT INTO `conges_mail` VALUES ( 'mail_modif_demande_conges', 'APPLI CONGES - Modification demande', ' __SENDER_NAME__ ?? modifi?? une demande non trait??. Vous pouvez consulter votre application Libertempo : __URL_ACCUEIL_CONGES__/

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique.' );
INSERT INTO `conges_mail` VALUES ( 'mail_supp_demande_conges', 'APPLI CONGES - Suppression demande', ' __SENDER_NAME__ ?? supprim?? une demande non trait??. Vous pouvez consulter votre application Libertempo : __URL_ACCUEIL_CONGES__/

-------------------------------------------------------------------------------------------------------
Ceci est un message automatique.' );
#
#
# TABLE: conges_periode
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_periode` ;
CREATE TABLE `conges_periode` (
  `p_login` varbinary(99) NOT NULL DEFAULT '',
  `p_date_deb` date NOT NULL DEFAULT '0000-00-00',
  `p_demi_jour_deb` enum('am','pm') NOT NULL DEFAULT 'am',
  `p_date_fin` date NOT NULL DEFAULT '0000-00-00',
  `p_demi_jour_fin` enum('am','pm') NOT NULL DEFAULT 'pm',
  `p_nb_jours` decimal(5,2) NOT NULL DEFAULT '0.00',
  `p_commentaire` varchar(250) DEFAULT NULL,
  `p_type` int(2) unsigned NOT NULL DEFAULT '1',
  `p_etat` enum('ok','valid','demande','ajout','refus','annul') NOT NULL DEFAULT 'demande',
  `p_edition_id` int(11) DEFAULT NULL,
  `p_motif_refus` varchar(250) DEFAULT NULL,
  `p_date_demande` datetime DEFAULT NULL,
  `p_date_traitement` datetime DEFAULT NULL,
  `p_fermeture_id` int(5) DEFAULT NULL,
  `p_num` int(5) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`p_num`)
) ENGINE=MyISAM AUTO_INCREMENT=2061 DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_periode` ;
#
#
# TABLE: conges_plugin_cet
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_plugin_cet` ;
CREATE TABLE `conges_plugin_cet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pc_jours_demandes` decimal(5,2) DEFAULT NULL COMMENT 'Number of days requested to supply the CET',
  `pc_requested_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pc_comments` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `pc_u_login` varbinary(99) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pc_u_login` (`pc_u_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
#
# Data :
#
DELETE FROM `conges_plugin_cet` ;
#
#
# TABLE: conges_plugins
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_plugins` ;
CREATE TABLE `conges_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Plugin name',
  `p_is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Plugin activated ?',
  `p_is_install` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Plugin is installed ?',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
#
# Data :
#
DELETE FROM `conges_plugins` ;
#
#
# TABLE: conges_solde_edition
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_solde_edition` ;
CREATE TABLE `conges_solde_edition` (
  `se_id_edition` int(11) NOT NULL,
  `se_id_absence` int(2) NOT NULL,
  `se_solde` decimal(4,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_solde_edition` ;
#
#
# TABLE: conges_solde_user
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_solde_user` ;
CREATE TABLE `conges_solde_user` (
  `su_login` varbinary(99) NOT NULL DEFAULT '',
  `su_abs_id` int(2) unsigned NOT NULL DEFAULT '0',
  `su_nb_an` decimal(5,2) NOT NULL DEFAULT '0.00',
  `su_solde` decimal(5,2) NOT NULL DEFAULT '0.00',
  `su_reliquat` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`su_login`,`su_abs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_solde_user` ;
#
#
# TABLE: conges_type_absence
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_type_absence` ;
CREATE TABLE `conges_type_absence` (
  `ta_id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `ta_type` enum('conges','absences','conges_exceptionnels') NOT NULL DEFAULT 'conges',
  `ta_libelle` varchar(20) NOT NULL DEFAULT '',
  `ta_short_libelle` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`ta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_type_absence` ;
INSERT INTO `conges_type_absence` VALUES ( '1', 'conges', 'cong??s pay??s', 'cp' );
INSERT INTO `conges_type_absence` VALUES ( '2', 'conges', 'rtt', 'rtt' );
INSERT INTO `conges_type_absence` VALUES ( '3', 'absences', 'formation', 'fo' );
INSERT INTO `conges_type_absence` VALUES ( '4', 'absences', 'mission', 'mi' );
INSERT INTO `conges_type_absence` VALUES ( '5', 'absences', 'autre', 'ab' );
INSERT INTO `conges_type_absence` VALUES ( '6', 'absences', 'malade', 'mal' );
#
#
# TABLE: conges_users
#
# Struture :
#
DROP TABLE IF EXISTS  `conges_users` ;
CREATE TABLE `conges_users` (
  `u_login` varbinary(99) NOT NULL DEFAULT '',
  `u_nom` varchar(30) NOT NULL DEFAULT '',
  `u_prenom` varchar(30) NOT NULL DEFAULT '',
  `u_is_resp` enum('Y','N') NOT NULL DEFAULT 'N',
  `u_resp_login` varbinary(99) DEFAULT NULL,
  `u_is_admin` enum('Y','N') NOT NULL DEFAULT 'N',
  `u_is_hr` enum('Y','N') NOT NULL DEFAULT 'N',
  `u_is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `u_see_all` enum('Y','N') NOT NULL DEFAULT 'N',
  `u_passwd` varchar(64) NOT NULL DEFAULT '',
  `u_quotite` int(3) DEFAULT '100',
  `u_email` varchar(100) DEFAULT NULL,
  `u_num_exercice` int(2) NOT NULL DEFAULT '0',
  `planning_id` int(11) unsigned NOT NULL,
  `u_heure_solde` int(11) NOT NULL DEFAULT '0',
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(100) NOT NULL DEFAULT '',
  `date_last_access` datetime NOT NULL,
  PRIMARY KEY (`u_login`),
  KEY `planning_id` (`planning_id`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
#
# Data :
#
DELETE FROM `conges_users` ;
INSERT INTO `conges_users` VALUES ( 'admin', 'Libertempo', 'admin', 'N', 'admin', 'Y', 'N', 'Y', 'Y', '636d61cf9094a62a81836f3737d9c0da', '100', NULL, '0', '0', '0', '2018-12-19 23:44:29', '', '0000-00-00 00:00:00' );
#
#
# TABLE: heure_additionnelle
#
# Struture :
#
DROP TABLE IF EXISTS  `heure_additionnelle` ;
CREATE TABLE `heure_additionnelle` (
  `id_heure` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varbinary(99) NOT NULL,
  `debut` int(11) NOT NULL,
  `fin` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `type_periode` int(3) NOT NULL,
  `statut` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(250) NOT NULL DEFAULT '',
  `comment_refus` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_heure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#
# Data :
#
DELETE FROM `heure_additionnelle` ;
#
#
# TABLE: heure_repos
#
# Struture :
#
DROP TABLE IF EXISTS  `heure_repos` ;
CREATE TABLE `heure_repos` (
  `id_heure` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varbinary(99) NOT NULL,
  `debut` int(11) NOT NULL,
  `fin` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `type_periode` int(3) NOT NULL,
  `statut` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(250) NOT NULL DEFAULT '',
  `comment_refus` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_heure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#
# Data :
#
DELETE FROM `heure_repos` ;
#
#
# TABLE: planning
#
# Struture :
#
DROP TABLE IF EXISTS  `planning` ;
CREATE TABLE `planning` (
  `planning_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`planning_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#
# Data :
#
DELETE FROM `planning` ;
#
#
# TABLE: planning_creneau
#
# Struture :
#
DROP TABLE IF EXISTS  `planning_creneau` ;
CREATE TABLE `planning_creneau` (
  `creneau_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `planning_id` int(11) unsigned NOT NULL,
  `jour_id` tinyint(3) unsigned NOT NULL,
  `type_semaine` tinyint(3) unsigned NOT NULL,
  `type_periode` tinyint(3) unsigned NOT NULL,
  `debut` int(11) unsigned NOT NULL,
  `fin` int(11) unsigned NOT NULL,
  PRIMARY KEY (`creneau_id`),
  KEY `planning_id` (`planning_id`,`type_semaine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#
# Data :
#
DELETE FROM `planning_creneau` ;
