CREATE
DATABASE blog_testing;

CREATE
USER blog_testing@'%' IDENTIFIED WITH mysql_native_password BY 'blog_testing';

GRANT ALL PRIVILEGES ON blog_testing.* TO blog_testing@'%';
