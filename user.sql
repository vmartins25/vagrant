CREATE USER IF NOT EXISTS 'vagrant'@'%' IDENTIFIED BY '';

GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'%' IDENTIFIED BY '';

FLUSH PRIVILEGES;
