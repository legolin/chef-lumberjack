maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures Lumberjack."
version           "0.1.2"
recipe            "lumberjack", "Installs and configures Lumberjack"
name              "lumberjack"

%w{ logrotate }.each do |d|
  depends d
end

%w{ logstash }.each do |s|
  suggests s
end

%w{ ubuntu debian rhel centos scientific amazon fedora}.each do |os|
    supports os
end
