CREATE
DATABASE blog_server_testing;

CREATE
USER blog_server_testing@'%' IDENTIFIED WITH mysql_native_password BY 'blog_server_testing';

GRANT ALL PRIVILEGES ON blog_server_testing.* TO blog_server_testing@'%';
