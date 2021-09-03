GRANT SELECT ON player.player TO 'mt2web'@'%';
GRANT SELECT ON player.player_index TO 'mt2web'@'%';

GRANT INSERT ON account.account TO 'mt2web'@'%';

FLUSH PRIVILEGES;

