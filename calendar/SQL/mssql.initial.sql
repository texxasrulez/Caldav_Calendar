/**
 * Roundcube CalDav Calendar
 *
 * @author Gene Hawkins <texxasrulez@yahoo.com>
 *
 * @licence GNU AGPL
 **/

CREATE TABLE calendar_oauth_states (
  provider VARCHAR(255) NOT NULL,
  client_config_id VARCHAR(255) NOT NULL,
  user_id VARCHAR(255) NOT NULL,
  scope VARCHAR(255) NOT NULL,
  issue_time INTEGER NOT NULL,
  state VARCHAR(255) NOT NULL,
  UNIQUE (provider_id, client_config_id, user_id, scope),
  PRIMARY KEY (state)
);

CREATE TABLE calendar_oauth_access_tokens (
  provider VARCHAR(255) NOT NULL,
  client_config_id VARCHAR(255) NOT NULL,
  user_id VARCHAR(255) NOT NULL,
  scope VARCHAR(255) NOT NULL,
  issue_time INTEGER NOT NULL,
  access_token VARCHAR(255) NOT NULL,
  token_type VARCHAR(255) NOT NULL,
  expires_in INTEGER DEFAULT NULL,
  UNIQUE (provider_id, client_config_id, user_id, scope)
);

CREATE TABLE calendar_oauth_refresh_tokens (
  provider VARCHAR(255) NOT NULL,
  client_config_id VARCHAR(255) NOT NULL,
  user_id VARCHAR(255) NOT NULL,
  scope VARCHAR(255) NOT NULL,
  issue_time INTEGER NOT NULL,
  refresh_token VARCHAR(255) DEFAULT NULL,
  UNIQUE (provider_id, client_config_id, user_id, scope)
);

REPLACE INTO `system` ([name], [value]) SELECT ('texxasrulez-calendar-version', '2020072000');
