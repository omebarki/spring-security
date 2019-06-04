-- ClientDetailsServiceConfigurer
CREATE TABLE oauth_client_details (
      client_id VARCHAR(256) PRIMARY KEY,
      resource_ids VARCHAR(256),
      client_secret VARCHAR(256),
      scope VARCHAR(256),
      authorized_grant_types VARCHAR(256),
      web_server_redirect_uri VARCHAR(256),
      authorities VARCHAR(256),
      access_token_validity INTEGER,
      refresh_token_validity INTEGER,
      additional_information VARCHAR(4096),
      autoapprove VARCHAR(256)
    );

insert into oauth_client_details values('web.api.client',
                                 null,
                                 'password',
                                 'scope',
                                 'client_credentials,refresh_token',
                                 'http://localhost/api',
                                 'READ,WRITE',
                                 3600,
                                 3600,
                                 '{"infos":"test"}',
                                 true);

insert into oauth_client_details values('resource.client',
                                 null,
                                 'password',
                                 'scope',
                                 'client_credentials',
                                 'http://localhost/api',
                                 'READ,WRITE',
                                 3600,
                                 3600,
                                 '{"infos":"test"}',
                                 true);


-- JdbcTokenStore
CREATE TABLE oauth_access_token (
    token_id VARCHAR(256),
    token bytea,
    authentication_id VARCHAR(256),
    user_name VARCHAR(256),
    client_id VARCHAR(256),
    authentication bytea,
    refresh_token VARCHAR(256)
);

create table oauth_refresh_token (
  token_id VARCHAR(256),
  token LONGVARBINARY,
  authentication LONGVARBINARY
);
