Installing message broker

Installing Messagebroker Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package rabbitmq-server-3.6.5-1.el7.noarch already installed and latest version
Nothing to do
Note: Forwarding request to 'systemctl enable rabbitmq-server.service'.
Redirecting to /bin/systemctl start  rabbitmq-server.service
Verifying RabbitMQ - Try 1
Redirecting to /bin/systemctl restart  rabbitmq-server.service
RabbitMQ OK
Status of node rabbit@richmond ...
[{pid,14071},
 {running_applications,[{rabbit,"RabbitMQ","3.6.5"},
                        {os_mon,"CPO  CXC 138 46","2.4"},
                        {ranch,"Socket acceptor pool for TCP protocols.",
                               "1.2.1"},
                        {rabbit_common,[],"3.6.5"},
                        {xmerl,"XML parser","1.3.10"},
                        {mnesia,"MNESIA  CXC 138 12","4.13.4"},
                        {sasl,"SASL  CXC 138 11","2.7"},
                        {stdlib,"ERTS  CXC 138 10","2.8"},
                        {kernel,"ERTS  CXC 138 10","4.2"}]},
 {os,{unix,linux}},
 {erlang_version,"Erlang/OTP 18 [erts-7.3.1.2] [source] [64-bit] [smp:8:8] [async-threads:128] [hipe] [kernel-poll:true]\n"},
 {memory,[{total,49088352},
          {connection_readers,0},
          {connection_writers,0},
          {connection_channels,0},
          {connection_other,0},
          {queue_procs,2808},
          {queue_slave_procs,0},
          {plugins,0},
          {other_proc,18925072},
          {mnesia,60280},
          {mgmt_db,0},
          {msg_index,40800},
          {other_ets,921368},
          {binary,28912},
          {code,19591236},
          {atom,711569},
          {other_system,8806307}]},
 {alarms,[]},
 {listeners,[{clustering,25672,"::"},{amqp,5672,"0.0.0.0"}]},
 {vm_memory_high_watermark,0.4},
 {vm_memory_limit,13426604441},
 {disk_free_limit,50000000},
 {disk_free,887253172224},
 {file_descriptors,[{total_limit,924},
                    {total_used,2},
                    {sockets_limit,829},
                    {sockets_used,0}]},
 {processes,[{limit,1048576},{used,144}]},
 {run_queue,0},
 {uptime,7},
 {kernel,{net_ticktime,60}}]
Creating vhost "/openstack" ...
Listing vhosts ...
/
/openstack
Creating user "openstack" ...
Listing users ...
openstack	[]
guest	[administrator]
Setting permissions for user "openstack" in vhost "/openstack" ...
Listing permissions in vhost "/openstack" ...
openstack	.*	.*	.*
Applying IPTABLES Rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Done

Message Broker Installed and Configured


Ready


Installing database support

Proceding to install database software
Installing Local MariaDB Software
rm: cannot remove ‘/root/.my.cnf’: No such file or directory
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
No Match for argument: mysql
No Packages marked for removal
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package mariadb-galera-server is obsoleted by mariadb-server-galera, trying to install 3:mariadb-server-galera-10.1.20-1.el7.x86_64 instead
Resolving Dependencies
--> Running transaction check
---> Package galera.x86_64 0:25.3.16-1.el7 will be installed
---> Package mariadb.x86_64 3:10.1.20-1.el7 will be installed
---> Package mariadb-galera-common.x86_64 1:5.5.40-3.el7 will be installed
---> Package mariadb-server-galera.x86_64 3:10.1.20-1.el7 will be installed
--> Processing Dependency: mariadb-server(x86-64) = 3:10.1.20-1.el7 for package: 3:mariadb-server-galera-10.1.20-1.el7.x86_64
--> Running transaction check
---> Package mariadb-server.x86_64 3:10.1.20-1.el7 will be installed
--> Processing Dependency: mariadb-errmsg(x86-64) = 3:10.1.20-1.el7 for package: 3:mariadb-server-10.1.20-1.el7.x86_64
--> Running transaction check
---> Package mariadb-errmsg.x86_64 3:10.1.20-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                Arch    Version           Repository               Size
================================================================================
Installing:
 galera                 x86_64  25.3.16-1.el7     centos-openstack-ocata  1.2 M
 mariadb                x86_64  3:10.1.20-1.el7   centos-openstack-ocata  6.3 M
 mariadb-galera-common  x86_64  1:5.5.40-3.el7    centos-openstack-ocata  212 k
 mariadb-server-galera  x86_64  3:10.1.20-1.el7   centos-openstack-ocata   41 k
Installing for dependencies:
 mariadb-errmsg         x86_64  3:10.1.20-1.el7   centos-openstack-ocata  200 k
 mariadb-server         x86_64  3:10.1.20-1.el7   centos-openstack-ocata   19 M

Transaction Summary
================================================================================
Install  4 Packages (+2 Dependent packages)

Total download size: 27 M
Installed size: 139 M
Downloading packages:
(1/6): mariadb-10.1.20-1.el7.x86_64.rpm                    | 6.3 MB   00:00     
(2/6): mariadb-errmsg-10.1.20-1.el7.x86_64.rpm             | 200 kB   00:00     
(3/6): mariadb-galera-common-5.5.40-3.el7.x86_64.rpm       | 212 kB   00:00     
(4/6): galera-25.3.16-1.el7.x86_64.rpm                     | 1.2 MB   00:01     
(5/6): mariadb-server-galera-10.1.20-1.el7.x86_64.rpm      |  41 kB   00:00     
(6/6): mariadb-server-10.1.20-1.el7.x86_64.rpm             |  19 MB   00:01     
--------------------------------------------------------------------------------
Total                                              9.4 MB/s |  27 MB  00:02     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 3:mariadb-10.1.20-1.el7.x86_64                               1/6 
  Installing : 3:mariadb-errmsg-10.1.20-1.el7.x86_64                        2/6 
  Installing : galera-25.3.16-1.el7.x86_64                                  3/6 
  Installing : 1:mariadb-galera-common-5.5.40-3.el7.x86_64                  4/6 
  Installing : 3:mariadb-server-10.1.20-1.el7.x86_64                        5/6 
  Installing : 3:mariadb-server-galera-10.1.20-1.el7.x86_64                 6/6 
  Verifying  : 1:mariadb-galera-common-5.5.40-3.el7.x86_64                  1/6 
  Verifying  : galera-25.3.16-1.el7.x86_64                                  2/6 
  Verifying  : 3:mariadb-server-10.1.20-1.el7.x86_64                        3/6 
  Verifying  : 3:mariadb-errmsg-10.1.20-1.el7.x86_64                        4/6 
  Verifying  : 3:mariadb-10.1.20-1.el7.x86_64                               5/6 
  Verifying  : 3:mariadb-server-galera-10.1.20-1.el7.x86_64                 6/6 

Installed:
  galera.x86_64 0:25.3.16-1.el7                                                 
  mariadb.x86_64 3:10.1.20-1.el7                                                
  mariadb-galera-common.x86_64 1:5.5.40-3.el7                                   
  mariadb-server-galera.x86_64 3:10.1.20-1.el7                                  

Dependency Installed:
  mariadb-errmsg.x86_64 3:10.1.20-1.el7  mariadb-server.x86_64 3:10.1.20-1.el7 

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package openstack-utils.noarch 0:2017.1-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package            Arch      Version           Repository                 Size
================================================================================
Installing:
 openstack-utils    noarch    2017.1-1.el7      centos-openstack-ocata     18 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 18 k
Installed size: 29 k
Downloading packages:
openstack-utils-2017.1-1.el7.noarch.rpm                    |  18 kB   00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : openstack-utils-2017.1-1.el7.noarch                          1/1 
  Verifying  : openstack-utils-2017.1-1.el7.noarch                          1/1 

Installed:
  openstack-utils.noarch 0:2017.1-1.el7                                         

Complete!
Created symlink from /etc/systemd/system/multi-user.target.wants/mariadb.service to /usr/lib/systemd/system/mariadb.service.
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
MariaDB Installed
Creating Databases
Keystone
Glance
Cinder
Neutron
Nova
Nova-API:
Nova-CELL0:
Heat
Gnocchi
Horizon
Trove
Sahara
Aodh
Manila
Designate
Magnum

Databases list:
Database
aodhdb
cinderdb
designatedb
designatepoolmanagerdb
glancedb
gnocchidb
heatdb
horizondb
information_schema
keystonedb
magnumdb
maniladb
mysql
neutrondb
novaapidb
novadb
novadb_cell0
performance_schema
saharadb
test
trovedb


Database Proccess DONE !!


Database support ready


Installing OPENSTACK KEYSTONE

DB Proccess OK. Let's continue

Installing Keystone Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package python-psycopg2-2.5.1-3.el7.x86_64 already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-keystone.noarch 1:11.0.0-1.el7 will be installed
---> Package openstack-selinux.noarch 0:0.7.13-2.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package              Arch     Version           Repository                Size
================================================================================
Installing:
 openstack-keystone   noarch   1:11.0.0-1.el7    centos-openstack-ocata    48 k
 openstack-selinux    noarch   0.7.13-2.el7      centos-openstack-ocata   135 k

Transaction Summary
================================================================================
Install  2 Packages

Total download size: 183 k
Installed size: 327 k
Downloading packages:
(1/2): openstack-keystone-11.0.0-1.el7.noarch.rpm          |  48 kB   00:00     
(2/2): openstack-selinux-0.7.13-2.el7.noarch.rpm           | 135 kB   00:00     
--------------------------------------------------------------------------------
Total                                              442 kB/s | 183 kB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : openstack-selinux-0.7.13-2.el7.noarch                        1/2 
  Installing : 1:openstack-keystone-11.0.0-1.el7.noarch                     2/2 
  Verifying  : 1:openstack-keystone-11.0.0-1.el7.noarch                     1/2 
  Verifying  : openstack-selinux-0.7.13-2.el7.noarch                        2/2 

Installed:
  openstack-keystone.noarch 1:11.0.0-1.el7                                      
  openstack-selinux.noarch 0:0.7.13-2.el7                                       

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python-memcached-1.54-3.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package httpd.x86_64 0:2.4.6-45.el7.centos.4 will be installed
--> Processing Dependency: httpd-tools = 2.4.6-45.el7.centos.4 for package: httpd-2.4.6-45.el7.centos.4.x86_64
--> Processing Dependency: /etc/mime.types for package: httpd-2.4.6-45.el7.centos.4.x86_64
--> Processing Dependency: libaprutil-1.so.0()(64bit) for package: httpd-2.4.6-45.el7.centos.4.x86_64
--> Processing Dependency: libapr-1.so.0()(64bit) for package: httpd-2.4.6-45.el7.centos.4.x86_64
---> Package memcached.x86_64 0:1.4.33-2.el7 will be installed
---> Package mod_wsgi.x86_64 0:3.4-12.el7_0 will be installed
--> Running transaction check
---> Package apr.x86_64 0:1.4.8-3.el7 will be installed
---> Package apr-util.x86_64 0:1.5.2-6.el7 will be installed
---> Package httpd-tools.x86_64 0:2.4.6-45.el7.centos.4 will be installed
---> Package mailcap.noarch 0:2.1.41-2.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package       Arch     Version                  Repository                Size
================================================================================
Installing:
 httpd         x86_64   2.4.6-45.el7.centos.4    updates                  2.7 M
 memcached     x86_64   1.4.33-2.el7             centos-openstack-ocata   111 k
 mod_wsgi      x86_64   3.4-12.el7_0             base                      76 k
Installing for dependencies:
 apr           x86_64   1.4.8-3.el7              base                     103 k
 apr-util      x86_64   1.5.2-6.el7              base                      92 k
 httpd-tools   x86_64   2.4.6-45.el7.centos.4    updates                   84 k
 mailcap       noarch   2.1.41-2.el7             base                      31 k

Transaction Summary
================================================================================
Install  3 Packages (+4 Dependent packages)

Total download size: 3.2 M
Installed size: 10 M
Downloading packages:
(1/7): apr-util-1.5.2-6.el7.x86_64.rpm                     |  92 kB   00:00     
(2/7): apr-1.4.8-3.el7.x86_64.rpm                          | 103 kB   00:00     
(3/7): httpd-tools-2.4.6-45.el7.centos.4.x86_64.rpm        |  84 kB   00:00     
(4/7): mod_wsgi-3.4-12.el7_0.x86_64.rpm                    |  76 kB   00:00     
(5/7): mailcap-2.1.41-2.el7.noarch.rpm                     |  31 kB   00:00     
(6/7): httpd-2.4.6-45.el7.centos.4.x86_64.rpm              | 2.7 MB   00:00     
(7/7): memcached-1.4.33-2.el7.x86_64.rpm                   | 111 kB   00:01     
--------------------------------------------------------------------------------
Total                                              1.8 MB/s | 3.2 MB  00:01     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : apr-1.4.8-3.el7.x86_64                                       1/7 
  Installing : apr-util-1.5.2-6.el7.x86_64                                  2/7 
  Installing : httpd-tools-2.4.6-45.el7.centos.4.x86_64                     3/7 
  Installing : mailcap-2.1.41-2.el7.noarch                                  4/7 
  Installing : httpd-2.4.6-45.el7.centos.4.x86_64                           5/7 
  Installing : mod_wsgi-3.4-12.el7_0.x86_64                                 6/7 
  Installing : memcached-1.4.33-2.el7.x86_64                                7/7 
  Verifying  : mod_wsgi-3.4-12.el7_0.x86_64                                 1/7 
  Verifying  : apr-1.4.8-3.el7.x86_64                                       2/7 
  Verifying  : mailcap-2.1.41-2.el7.noarch                                  3/7 
  Verifying  : apr-util-1.5.2-6.el7.x86_64                                  4/7 
  Verifying  : memcached-1.4.33-2.el7.x86_64                                5/7 
  Verifying  : httpd-tools-2.4.6-45.el7.centos.4.x86_64                     6/7 
  Verifying  : httpd-2.4.6-45.el7.centos.4.x86_64                           7/7 

Installed:
  httpd.x86_64 0:2.4.6-45.el7.centos.4      memcached.x86_64 0:1.4.33-2.el7     
  mod_wsgi.x86_64 0:3.4-12.el7_0           

Dependency Installed:
  apr.x86_64 0:1.4.8-3.el7                      apr-util.x86_64 0:1.5.2-6.el7   
  httpd-tools.x86_64 0:2.4.6-45.el7.centos.4    mailcap.noarch 0:2.1.41-2.el7   

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python-openstackclient-3.8.1-1.el7.noarch already installed and latest version
Nothing to do
Created symlink from /etc/systemd/system/multi-user.target.wants/memcached.service to /usr/lib/systemd/system/memcached.service.
Done

Configuring Keystone

Provisioning Keystone DB

Done


Creating FERNET Tokens

Starting Keystone
Created symlink from /etc/systemd/system/multi-user.target.wants/httpd.service to /usr/lib/systemd/system/httpd.service.
Done


Bootstraping Keystone


Creating Services Project: services
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | Service Project                  |
| domain_id   | default                          |
| enabled     | True                             |
| id          | f947822236b54ae48ef66090dbe3e4fc |
| is_domain   | False                            |
| name        | services                         |
| parent_id   | default                          |
+-------------+----------------------------------+
Creating Member Role: _member_
Conflict occurred attempting to store role - Duplicate entry found with name _member_. (HTTP 409) (Request-ID: req-da18bdfd-5d9c-44b9-ac3f-c6f8f891dcde)
Creating User Role: user
+-----------+----------------------------------+
| Field     | Value                            |
+-----------+----------------------------------+
| domain_id | None                             |
| id        | 1395ef9186624270815a4fd81ccfdd8f |
| name      | user                             |
+-----------+----------------------------------+
Adding Member Role _member_ to Admin User: admin
Keystone Main Identities Configured:
+----------------------------------+----------+
| ID                               | Name     |
+----------------------------------+----------+
| ef9405e25f2040c392fa9a408bad8406 | admin    |
| f947822236b54ae48ef66090dbe3e4fc | services |
+----------------------------------+----------+
+----------------------------------+-------+
| ID                               | Name  |
+----------------------------------+-------+
| 7d77b237aea948a1ae2ee533393d5be1 | admin |
+----------------------------------+-------+
+----------------------------------+----------+----------+
| ID                               | Name     | Type     |
+----------------------------------+----------+----------+
| 4ee6dd10e6784c1ba2961aedba6a2f9c | keystone | identity |
+----------------------------------+----------+----------+
+----------+----------+--------------+--------------+---------+-----------+-------------+
| ID       | Region   | Service Name | Service Type | Enabled | Interface | URL         |
+----------+----------+--------------+--------------+---------+-----------+-------------+
| 0fd99309 | RegionOn | keystone     | identity     | True    | public    | http://192. |
| 33f14991 | e        |              |              |         |           | 168.1.100:5 |
| aea0135e |          |              |              |         |           | 000/v3/     |
| 9aece01e |          |              |              |         |           |             |
| 2405f620 | RegionOn | keystone     | identity     | True    | admin     | http://192. |
| 50514132 | e        |              |              |         |           | 168.1.100:3 |
| a27a1c01 |          |              |              |         |           | 5357/v3/    |
| 6c34dfa8 |          |              |              |         |           |             |
| 5d1b83eb | RegionOn | keystone     | identity     | True    | internal  | http://192. |
| 6e3e4a2a | e        |              |              |         |           | 168.1.100:3 |
| bc47d3b4 |          |              |              |         |           | 5357/v3/    |
| 81c714f8 |          |              |              |         |           |             |
+----------+----------+--------------+--------------+---------+-----------+-------------+
+----------------------------------+----------+
| ID                               | Name     |
+----------------------------------+----------+
| 1395ef9186624270815a4fd81ccfdd8f | user     |
| 4d63d0473a504f2180be48a32b39c25d | admin    |
| 9fe2ff9ee4384b1894a90878d3e92bab | _member_ |
+----------------------------------+----------+

Applying IPTABLES rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]

Creating OpenStack Services Identities


DB Proccess OK. Let's Continue


Keystone Proccess OK. Let's continue


Creating GLANCE Identities

Glance User
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | glance@localhost                 |
| enabled             | True                             |
| id                  | 0852f715684747028055fe106f3b89d2 |
| name                | glance                           |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Glance Role
Glance Service
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Image service          |
| enabled     | True                             |
| id          | 0229f25f16054fefa618eb70590666a3 |
| name        | glance                           |
| type        | image                            |
+-------------+----------------------------------+
Glance Endpoints
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 77e62b6955c447989809d8770b30effa |
| interface    | public                           |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 0229f25f16054fefa618eb70590666a3 |
| service_name | glance                           |
| service_type | image                            |
| url          | http://192.168.1.100:9292        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 9e5716c4c9b445d4b61d0a96ec0cb95e |
| interface    | internal                         |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 0229f25f16054fefa618eb70590666a3 |
| service_name | glance                           |
| service_type | image                            |
| url          | http://192.168.1.100:9292        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 0e4ce24ddbef4ab38bff0b1535871576 |
| interface    | admin                            |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 0229f25f16054fefa618eb70590666a3 |
| service_name | glance                           |
| service_type | image                            |
| url          | http://192.168.1.100:9292        |
+--------------+----------------------------------+

GLANCE Identities DONE


DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Creating CINDER Identities

Cinder User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | cinder@localhost                 |
| enabled             | True                             |
| id                  | 8ebd29d9afba45e2b2ae7b5ed3615582 |
| name                | cinder                           |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Cinder Role
Cinder Services (V1, V2 and V3)
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Block Storage          |
| enabled     | True                             |
| id          | f659379c97f344669b688065641e166d |
| name        | cinder                           |
| type        | volume                           |
+-------------+----------------------------------+
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Block Storage          |
| enabled     | True                             |
| id          | 24317a8865c84fa0b497d8e45e72a1ef |
| name        | cinderv2                         |
| type        | volumev2                         |
+-------------+----------------------------------+
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Block Storage          |
| enabled     | True                             |
| id          | 7b9a33f61f7a4a0c8edf710bf8bc19ad |
| name        | cinderv3                         |
| type        | volumev3                         |
+-------------+----------------------------------+
Endpoints for Cinder V1
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 12fcc32b885b47af8d12b624cc094d8f           |
| interface    | public                                     |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | f659379c97f344669b688065641e166d           |
| service_name | cinder                                     |
| service_type | volume                                     |
| url          | http://192.168.1.100:8776/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | d5834ddd6294419d99eda46c37fbaf46           |
| interface    | internal                                   |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | f659379c97f344669b688065641e166d           |
| service_name | cinder                                     |
| service_type | volume                                     |
| url          | http://192.168.1.100:8776/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 5a578b9e2ba240978af6eb6dc0ed8bd9           |
| interface    | admin                                      |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | f659379c97f344669b688065641e166d           |
| service_name | cinder                                     |
| service_type | volume                                     |
| url          | http://192.168.1.100:8776/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
Endpoints for Cinder V2
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 2ffa223909ba4fdab0b4cf82f9f149ad           |
| interface    | public                                     |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 24317a8865c84fa0b497d8e45e72a1ef           |
| service_name | cinderv2                                   |
| service_type | volumev2                                   |
| url          | http://192.168.1.100:8776/v2/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 3faa031ac2a74de88e226328dd9c277c           |
| interface    | internal                                   |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 24317a8865c84fa0b497d8e45e72a1ef           |
| service_name | cinderv2                                   |
| service_type | volumev2                                   |
| url          | http://192.168.1.100:8776/v2/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | f66f576b7b6340709449ba8fece6dfdd           |
| interface    | admin                                      |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 24317a8865c84fa0b497d8e45e72a1ef           |
| service_name | cinderv2                                   |
| service_type | volumev2                                   |
| url          | http://192.168.1.100:8776/v2/%(tenant_id)s |
+--------------+--------------------------------------------+
Endpoints for Cinder V3
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 4953557b63c441f79f0557b66de48aa4           |
| interface    | public                                     |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 7b9a33f61f7a4a0c8edf710bf8bc19ad           |
| service_name | cinderv3                                   |
| service_type | volumev3                                   |
| url          | http://192.168.1.100:8776/v3/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 832fb6afb0c342e3b6fcb5521c8bd874           |
| interface    | internal                                   |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 7b9a33f61f7a4a0c8edf710bf8bc19ad           |
| service_name | cinderv3                                   |
| service_type | volumev3                                   |
| url          | http://192.168.1.100:8776/v3/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 54f0e6f005f1468c972c9715a2fb1e95           |
| interface    | admin                                      |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 7b9a33f61f7a4a0c8edf710bf8bc19ad           |
| service_name | cinderv3                                   |
| service_type | volumev3                                   |
| url          | http://192.168.1.100:8776/v3/%(tenant_id)s |
+--------------+--------------------------------------------+
Ready

CINDER V1/V2 Identities ready

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Creating NEUTRON Identities

Neutron User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | neutron@localhost                |
| enabled             | True                             |
| id                  | d335cf73f267433eb87c3b0f872b107c |
| name                | neutron                          |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Neutron Role:
Neutron Service:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Networking             |
| enabled     | True                             |
| id          | 83fa5c7b5f36451994bd2682aebae817 |
| name        | neutron                          |
| type        | network                          |
+-------------+----------------------------------+
Neutron Endpoints:
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 389d34fccbf848499a450836066118cf |
| interface    | public                           |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 83fa5c7b5f36451994bd2682aebae817 |
| service_name | neutron                          |
| service_type | network                          |
| url          | http://192.168.1.105:9696        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 4d494329762744b385905e9271e2eee8 |
| interface    | internal                         |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 83fa5c7b5f36451994bd2682aebae817 |
| service_name | neutron                          |
| service_type | network                          |
| url          | http://192.168.1.105:9696        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | c6eaf87c4cd94502a61ab8abdedb10ba |
| interface    | admin                            |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 83fa5c7b5f36451994bd2682aebae817 |
| service_name | neutron                          |
| service_type | network                          |
| url          | http://192.168.1.105:9696        |
+--------------+----------------------------------+
Listo

NEUTRON Identities Created


DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Creating NOVA Identities

Nova User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | nova@localhost                   |
| enabled             | True                             |
| id                  | 28b0ede3ad154007aa7d905ed93dd468 |
| name                | nova                             |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Placement User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | placement@localhost              |
| enabled             | True                             |
| id                  | 5c8e1378a1fa47729e775d8d6eb1dfc6 |
| name                | placement                        |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Nova Role:
Placement Role:
Nova Service:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Compute                |
| enabled     | True                             |
| id          | d4c73613c61946f1b5bc01ecafecf5ee |
| name        | nova                             |
| type        | compute                          |
+-------------+----------------------------------+
Placement Service:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | Placement API                    |
| enabled     | True                             |
| id          | df342fed2eca46298b98e121a16886d7 |
| name        | placement                        |
| type        | placement                        |
+-------------+----------------------------------+
Nova Endpoints:
+--------------+----------------------------------------------+
| Field        | Value                                        |
+--------------+----------------------------------------------+
| enabled      | True                                         |
| id           | 4ec41791b2894ea5bf26f5ae83d07502             |
| interface    | public                                       |
| region       | RegionOne                                    |
| region_id    | RegionOne                                    |
| service_id   | d4c73613c61946f1b5bc01ecafecf5ee             |
| service_name | nova                                         |
| service_type | compute                                      |
| url          | http://192.168.1.100:8774/v2.1/%(tenant_id)s |
+--------------+----------------------------------------------+
+--------------+----------------------------------------------+
| Field        | Value                                        |
+--------------+----------------------------------------------+
| enabled      | True                                         |
| id           | 56252ff5ef4a47c9bae31759772adcbe             |
| interface    | internal                                     |
| region       | RegionOne                                    |
| region_id    | RegionOne                                    |
| service_id   | d4c73613c61946f1b5bc01ecafecf5ee             |
| service_name | nova                                         |
| service_type | compute                                      |
| url          | http://192.168.1.100:8774/v2.1/%(tenant_id)s |
+--------------+----------------------------------------------+
+--------------+----------------------------------------------+
| Field        | Value                                        |
+--------------+----------------------------------------------+
| enabled      | True                                         |
| id           | b38bb61ecb8c4ff6852fa8dc067ea8f2             |
| interface    | admin                                        |
| region       | RegionOne                                    |
| region_id    | RegionOne                                    |
| service_id   | d4c73613c61946f1b5bc01ecafecf5ee             |
| service_name | nova                                         |
| service_type | compute                                      |
| url          | http://192.168.1.100:8774/v2.1/%(tenant_id)s |
+--------------+----------------------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | ab1eff30d75f46c48f435b00e4abbaa4 |
| interface    | public                           |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | df342fed2eca46298b98e121a16886d7 |
| service_name | placement                        |
| service_type | placement                        |
| url          | http://192.168.1.100:8778        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | ee53579aa910490298f1ed8054becba5 |
| interface    | internal                         |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | df342fed2eca46298b98e121a16886d7 |
| service_name | placement                        |
| service_type | placement                        |
| url          | http://192.168.1.100:8778        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 925f1b09978f46259b9c47f85c7b3e5a |
| interface    | admin                            |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | df342fed2eca46298b98e121a16886d7 |
| service_name | placement                        |
| service_type | placement                        |
| url          | http://192.168.1.100:8778        |
+--------------+----------------------------------+
Ready

NOVA Identities Created


DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Creating CEILOMETER identities

Ceilometer User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | ceilometer@localhost             |
| enabled             | True                             |
| id                  | 78b5e282f61c4e289a163442396c92ed |
| name                | ceilometer                       |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Ceilometer Role:
Ceilometer Service:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | Telemetry                        |
| enabled     | True                             |
| id          | 699857847d954a53998832994cf508fc |
| name        | ceilometer                       |
| type        | metering                         |
+-------------+----------------------------------+
Creating Role: ResellerAdmin
+-----------+----------------------------------+
| Field     | Value                            |
+-----------+----------------------------------+
| domain_id | None                             |
| id        | 62ef655e1b334bf593a56e8fd241e4db |
| name      | ResellerAdmin                    |
+-----------+----------------------------------+

Creating GNOCCHI identities

Gnocchi User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | gnocchi@localhost                |
| enabled             | True                             |
| id                  | d2c2a74ca6684c039244670db3009a11 |
| name                | gnocchi                          |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Gnocchi Role:
Gnocchi Service:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Metric                 |
| enabled     | True                             |
| id          | 8e2a322278194e06a41a95b2d6cd368b |
| name        | gnocchi                          |
| type        | metric                           |
+-------------+----------------------------------+
Gnocchi Endpoints:
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | a3bff578d5a9491e80f80fc446ac50aa |
| interface    | public                           |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 8e2a322278194e06a41a95b2d6cd368b |
| service_name | gnocchi                          |
| service_type | metric                           |
| url          | http://192.168.1.100:8041        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | bc2d57487695468fbe514e94ec598543 |
| interface    | internal                         |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 8e2a322278194e06a41a95b2d6cd368b |
| service_name | gnocchi                          |
| service_type | metric                           |
| url          | http://192.168.1.100:8041        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 628ec5bb017747f493f91e9c4300e437 |
| interface    | admin                            |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | 8e2a322278194e06a41a95b2d6cd368b |
| service_name | gnocchi                          |
| service_type | metric                           |
| url          | http://192.168.1.100:8041        |
+--------------+----------------------------------+
Aodh User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | aodh@localhost                   |
| enabled             | True                             |
| id                  | ba2a96264c0c49b192135c6d7a062b69 |
| name                | aodh                             |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Aodh Role:
Aodh Service:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | Telemetry Alarming               |
| enabled     | True                             |
| id          | d8140296c26c4de3857470524fa0529a |
| name        | aodh                             |
| type        | alarming                         |
+-------------+----------------------------------+
Aodh Endpoints:
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | f481f055b34748f18bcac8b005cd7266 |
| interface    | public                           |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | d8140296c26c4de3857470524fa0529a |
| service_name | aodh                             |
| service_type | alarming                         |
| url          | http://192.168.1.100:8042        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | f5967a895db449dd99a42155e2b790bf |
| interface    | internal                         |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | d8140296c26c4de3857470524fa0529a |
| service_name | aodh                             |
| service_type | alarming                         |
| url          | http://192.168.1.100:8042        |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 9e6a83263fe34e459dbe9d499c9c788e |
| interface    | admin                            |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | d8140296c26c4de3857470524fa0529a |
| service_name | aodh                             |
| service_type | alarming                         |
| url          | http://192.168.1.100:8042        |
+--------------+----------------------------------+
Done

Ceilometer Identities Ready


DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Creating HEAT Identities

Heat User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | heat@localhost                   |
| enabled             | True                             |
| id                  | a6860c3eb8854127ad88d205723f95e5 |
| name                | heat                             |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Heat Role:
Heat User Role:
+-----------+----------------------------------+
| Field     | Value                            |
+-----------+----------------------------------+
| domain_id | None                             |
| id        | 4cf6504da6814be0a0b0929d4e68a822 |
| name      | heat_stack_user                  |
+-----------+----------------------------------+
Heat Stack Owner
+-----------+----------------------------------+
| Field     | Value                            |
+-----------+----------------------------------+
| domain_id | None                             |
| id        | 7e2f47a4a8b74390956ed243ed971173 |
| name      | heat_stack_owner                 |
+-----------+----------------------------------+
Adding Admin User in Admin Project to Heat Stack Owner role
Heat and Heat-CloudFormation Services:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | Orchestration                    |
| enabled     | True                             |
| id          | b123aa50411a4f2c87b7eac04814b2ad |
| name        | heat                             |
| type        | orchestration                    |
+-------------+----------------------------------+
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | Orchestration                    |
| enabled     | True                             |
| id          | be99bcb04fbb490ab2a7c1f4ca88c693 |
| name        | heat-cfn                         |
| type        | cloudformation                   |
+-------------+----------------------------------+
Heat Domain:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | Stack projects and users         |
| enabled     | True                             |
| id          | eafe43ac23ca4c80ba616ab0673459b7 |
| name        | heat                             |
+-------------+----------------------------------+
Heat Domain User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | eafe43ac23ca4c80ba616ab0673459b7 |
| enabled             | True                             |
| id                  | bb8a976cdc2d4c9a88f35a467490ff12 |
| name                | stack_domain_admin               |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Assigning Role:
Heat and Heat-CloudFormation Endpoints:
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 93f6665817204eb9a0e6f7f5e3167f2c           |
| interface    | public                                     |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | b123aa50411a4f2c87b7eac04814b2ad           |
| service_name | heat                                       |
| service_type | orchestration                              |
| url          | http://192.168.1.100:8004/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 4520d2f52d344fd8a4ea94b4f372ecb1           |
| interface    | internal                                   |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | b123aa50411a4f2c87b7eac04814b2ad           |
| service_name | heat                                       |
| service_type | orchestration                              |
| url          | http://192.168.1.100:8004/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | d5fd446fb2e24c698262ac465c4f89cb           |
| interface    | admin                                      |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | b123aa50411a4f2c87b7eac04814b2ad           |
| service_name | heat                                       |
| service_type | orchestration                              |
| url          | http://192.168.1.100:8004/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | f3f4f56cbc41448297f80bbd6336be3a |
| interface    | public                           |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | be99bcb04fbb490ab2a7c1f4ca88c693 |
| service_name | heat-cfn                         |
| service_type | cloudformation                   |
| url          | http://192.168.1.100:8000/v1     |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 7725a40aafa54bf5862cdf9444ccaf67 |
| interface    | internal                         |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | be99bcb04fbb490ab2a7c1f4ca88c693 |
| service_name | heat-cfn                         |
| service_type | cloudformation                   |
| url          | http://192.168.1.100:8000/v1     |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | c7fc90ae9ef14dc3851b7e92e39bb325 |
| interface    | admin                            |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | be99bcb04fbb490ab2a7c1f4ca88c693 |
| service_name | heat-cfn                         |
| service_type | cloudformation                   |
| url          | http://192.168.1.100:8000/v1     |
+--------------+----------------------------------+
Ready

Heat Identities Ready


DB Proccess OK. Let's continue


Keystone Proccess OK. Let's Continue


Creating SAHARA Identities

Sahara User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | sahara@localhost                 |
| enabled             | True                             |
| id                  | 3f2adf8d32904979b3e4b559312f9f28 |
| name                | sahara                           |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Sahara Tenant:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description |                                  |
| domain_id   | default                          |
| enabled     | True                             |
| id          | 3a2591d6452143a0a532bb9980cda67a |
| is_domain   | False                            |
| name        | sahara                           |
| parent_id   | default                          |
+-------------+----------------------------------+
Sahara Tenants Role: sahara and services
Sahara Service:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | Data Processing Service          |
| enabled     | True                             |
| id          | aa7222e7a0e648458d18b863208edd93 |
| name        | sahara                           |
| type        | data_processing                  |
+-------------+----------------------------------+
Sahara Endpoints:
+--------------+----------------------------------------------+
| Field        | Value                                        |
+--------------+----------------------------------------------+
| enabled      | True                                         |
| id           | 7f35599a87cb461585a2e701f86b4558             |
| interface    | public                                       |
| region       | RegionOne                                    |
| region_id    | RegionOne                                    |
| service_id   | aa7222e7a0e648458d18b863208edd93             |
| service_name | sahara                                       |
| service_type | data_processing                              |
| url          | http://192.168.1.100:8386/v1.1/$(tenant_id)s |
+--------------+----------------------------------------------+
+--------------+----------------------------------------------+
| Field        | Value                                        |
+--------------+----------------------------------------------+
| enabled      | True                                         |
| id           | bb18badd449f4b3589021061bbc66c57             |
| interface    | internal                                     |
| region       | RegionOne                                    |
| region_id    | RegionOne                                    |
| service_id   | aa7222e7a0e648458d18b863208edd93             |
| service_name | sahara                                       |
| service_type | data_processing                              |
| url          | http://192.168.1.100:8386/v1.1/$(tenant_id)s |
+--------------+----------------------------------------------+
+--------------+----------------------------------------------+
| Field        | Value                                        |
+--------------+----------------------------------------------+
| enabled      | True                                         |
| id           | 4b1cca5cf3b940eb95021968dbcdda9f             |
| interface    | admin                                        |
| region       | RegionOne                                    |
| region_id    | RegionOne                                    |
| service_id   | aa7222e7a0e648458d18b863208edd93             |
| service_name | sahara                                       |
| service_type | data_processing                              |
| url          | http://192.168.1.100:8386/v1.1/$(tenant_id)s |
+--------------+----------------------------------------------+
Ready

SAHARA Identities Created


DB Proccess OK. Let's continue


Keystone Proccess OK. Let's Continue


Creating MANILA Identities

Manila User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | manila@localhost                 |
| enabled             | True                             |
| id                  | 84ab82039ac548d1ae85335d2ce065f8 |
| name                | manila                           |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Manila Role
Manila Services V1 and V2:
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Shared File Systems    |
| enabled     | True                             |
| id          | cee643ab5de7436e9698f9f0a423a727 |
| name        | manila                           |
| type        | share                            |
+-------------+----------------------------------+
+-------------+----------------------------------+
| Field       | Value                            |
+-------------+----------------------------------+
| description | OpenStack Shared File Systems    |
| enabled     | True                             |
| id          | 96852b50788d4a069a3eb720e2b8652e |
| name        | manilav2                         |
| type        | sharev2                          |
+-------------+----------------------------------+
Manila Endpoints:
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 7367d6d0893f46a596588011d5e0fb64           |
| interface    | public                                     |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | cee643ab5de7436e9698f9f0a423a727           |
| service_name | manila                                     |
| service_type | share                                      |
| url          | http://192.168.1.100:8786/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | df32109af5e04ced9996ab1a8b3b88fd           |
| interface    | internal                                   |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | cee643ab5de7436e9698f9f0a423a727           |
| service_name | manila                                     |
| service_type | share                                      |
| url          | http://192.168.1.100:8786/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 7402cf8cd63345af926234081fa21b0b           |
| interface    | admin                                      |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | cee643ab5de7436e9698f9f0a423a727           |
| service_name | manila                                     |
| service_type | share                                      |
| url          | http://192.168.1.100:8786/v1/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | fb0251ea1c7b475da1ab766fa0b3d87d           |
| interface    | public                                     |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 96852b50788d4a069a3eb720e2b8652e           |
| service_name | manilav2                                   |
| service_type | sharev2                                    |
| url          | http://192.168.1.100:8786/v2/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 6a3231212c914900adcf37a74321ddb2           |
| interface    | internal                                   |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 96852b50788d4a069a3eb720e2b8652e           |
| service_name | manilav2                                   |
| service_type | sharev2                                    |
| url          | http://192.168.1.100:8786/v2/%(tenant_id)s |
+--------------+--------------------------------------------+
+--------------+--------------------------------------------+
| Field        | Value                                      |
+--------------+--------------------------------------------+
| enabled      | True                                       |
| id           | 386f9c87bef4476fb171b09320c7e66b           |
| interface    | admin                                      |
| region       | RegionOne                                  |
| region_id    | RegionOne                                  |
| service_id   | 96852b50788d4a069a3eb720e2b8652e           |
| service_name | manilav2                                   |
| service_type | sharev2                                    |
| url          | http://192.168.1.100:8786/v2/%(tenant_id)s |
+--------------+--------------------------------------------+
Ready

MANILA Identities Created


DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Creating MAGNUM Identities

Magnum User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | default                          |
| email               | magnum@localhost                 |
| enabled             | True                             |
| id                  | ca4e3a1fb83f4b8dbab242fb8cfc60aa |
| name                | magnum                           |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Magnum Role:
Magnum Services:
+-------------+-------------------------------------------------------+
| Field       | Value                                                 |
+-------------+-------------------------------------------------------+
| description | OpenStack Container Infrastructure Management Service |
| enabled     | True                                                  |
| id          | dbf6c78635a847919f6ee5d7aef7ae0a                      |
| name        | magnum                                                |
| type        | container-infra                                       |
+-------------+-------------------------------------------------------+
Magnum Domain:
+-------------+-------------------------------------------+
| Field       | Value                                     |
+-------------+-------------------------------------------+
| description | Owns users and projects created by magnum |
| enabled     | True                                      |
| id          | eaf76e4e36bf45708fbcda8180991e2b          |
| name        | magnum                                    |
+-------------+-------------------------------------------+
Magnum Domain User:
+---------------------+----------------------------------+
| Field               | Value                            |
+---------------------+----------------------------------+
| domain_id           | eaf76e4e36bf45708fbcda8180991e2b |
| enabled             | True                             |
| id                  | 5d271db3a70344f3bc22c312abae775a |
| name                | magnum_domain_admin              |
| options             | {}                               |
| password_expires_at | None                             |
+---------------------+----------------------------------+
Assigning Role:
Magnum Endpoints:
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 745b68517e4548f7ae01e7c77d8ee240 |
| interface    | public                           |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | dbf6c78635a847919f6ee5d7aef7ae0a |
| service_name | magnum                           |
| service_type | container-infra                  |
| url          | http://192.168.1.100:9511/v1     |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 388b91d8b5b04f51b0cf42354caeaf1c |
| interface    | internal                         |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | dbf6c78635a847919f6ee5d7aef7ae0a |
| service_name | magnum                           |
| service_type | container-infra                  |
| url          | http://192.168.1.100:9511/v1     |
+--------------+----------------------------------+
+--------------+----------------------------------+
| Field        | Value                            |
+--------------+----------------------------------+
| enabled      | True                             |
| id           | 138e8765617a4d3aadeddb16c6910508 |
| interface    | admin                            |
| region       | RegionOne                        |
| region_id    | RegionOne                        |
| service_id   | dbf6c78635a847919f6ee5d7aef7ae0a |
| service_name | magnum                           |
| service_type | container-infra                  |
| url          | http://192.168.1.100:9511/v1     |
+--------------+----------------------------------+
Ready

Magnum Identities Ready


DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Creating Extra Tenants


Extra Tenants Module DONE !!


Ready

Keystone Proccess DONE

Complete list following bellow:

Projects:
+----------------------------------+----------+
| ID                               | Name     |
+----------------------------------+----------+
| 3a2591d6452143a0a532bb9980cda67a | sahara   |
| ef9405e25f2040c392fa9a408bad8406 | admin    |
| f947822236b54ae48ef66090dbe3e4fc | services |
+----------------------------------+----------+
Users:
+----------------------------------+---------------------+
| ID                               | Name                |
+----------------------------------+---------------------+
| 0852f715684747028055fe106f3b89d2 | glance              |
| 28b0ede3ad154007aa7d905ed93dd468 | nova                |
| 3f2adf8d32904979b3e4b559312f9f28 | sahara              |
| 5c8e1378a1fa47729e775d8d6eb1dfc6 | placement           |
| 5d271db3a70344f3bc22c312abae775a | magnum_domain_admin |
| 78b5e282f61c4e289a163442396c92ed | ceilometer          |
| 7d77b237aea948a1ae2ee533393d5be1 | admin               |
| 84ab82039ac548d1ae85335d2ce065f8 | manila              |
| 8ebd29d9afba45e2b2ae7b5ed3615582 | cinder              |
| a6860c3eb8854127ad88d205723f95e5 | heat                |
| ba2a96264c0c49b192135c6d7a062b69 | aodh                |
| bb8a976cdc2d4c9a88f35a467490ff12 | stack_domain_admin  |
| ca4e3a1fb83f4b8dbab242fb8cfc60aa | magnum              |
| d2c2a74ca6684c039244670db3009a11 | gnocchi             |
| d335cf73f267433eb87c3b0f872b107c | neutron             |
+----------------------------------+---------------------+
Services:
+----------------------------------+------------+-----------------+
| ID                               | Name       | Type            |
+----------------------------------+------------+-----------------+
| 0229f25f16054fefa618eb70590666a3 | glance     | image           |
| 24317a8865c84fa0b497d8e45e72a1ef | cinderv2   | volumev2        |
| 4ee6dd10e6784c1ba2961aedba6a2f9c | keystone   | identity        |
| 699857847d954a53998832994cf508fc | ceilometer | metering        |
| 7b9a33f61f7a4a0c8edf710bf8bc19ad | cinderv3   | volumev3        |
| 83fa5c7b5f36451994bd2682aebae817 | neutron    | network         |
| 8e2a322278194e06a41a95b2d6cd368b | gnocchi    | metric          |
| 96852b50788d4a069a3eb720e2b8652e | manilav2   | sharev2         |
| aa7222e7a0e648458d18b863208edd93 | sahara     | data_processing |
| b123aa50411a4f2c87b7eac04814b2ad | heat       | orchestration   |
| be99bcb04fbb490ab2a7c1f4ca88c693 | heat-cfn   | cloudformation  |
| cee643ab5de7436e9698f9f0a423a727 | manila     | share           |
| d4c73613c61946f1b5bc01ecafecf5ee | nova       | compute         |
| d8140296c26c4de3857470524fa0529a | aodh       | alarming        |
| dbf6c78635a847919f6ee5d7aef7ae0a | magnum     | container-infra |
| df342fed2eca46298b98e121a16886d7 | placement  | placement       |
| f659379c97f344669b688065641e166d | cinder     | volume          |
+----------------------------------+------------+-----------------+
Roles:
+----------------------------------+------------------+
| ID                               | Name             |
+----------------------------------+------------------+
| 1395ef9186624270815a4fd81ccfdd8f | user             |
| 4cf6504da6814be0a0b0929d4e68a822 | heat_stack_user  |
| 4d63d0473a504f2180be48a32b39c25d | admin            |
| 62ef655e1b334bf593a56e8fd241e4db | ResellerAdmin    |
| 7e2f47a4a8b74390956ed243ed971173 | heat_stack_owner |
| 9fe2ff9ee4384b1894a90878d3e92bab | _member_         |
+----------------------------------+------------------+
Endpoints:
+----------+----------+--------------+--------------+---------+-----------+-------------+
| ID       | Region   | Service Name | Service Type | Enabled | Interface | URL         |
+----------+----------+--------------+--------------+---------+-----------+-------------+
| 0e4ce24d | RegionOn | glance       | image        | True    | admin     | http://192. |
| dbef4ab3 | e        |              |              |         |           | 168.1.100:9 |
| 8bff0b15 |          |              |              |         |           | 292         |
| 35871576 |          |              |              |         |           |             |
| 0fd99309 | RegionOn | keystone     | identity     | True    | public    | http://192. |
| 33f14991 | e        |              |              |         |           | 168.1.100:5 |
| aea0135e |          |              |              |         |           | 000/v3/     |
| 9aece01e |          |              |              |         |           |             |
| 12fcc32b | RegionOn | cinder       | volume       | True    | public    | http://192. |
| 885b47af | e        |              |              |         |           | 168.1.100:8 |
| 8d12b624 |          |              |              |         |           | 776/v1/%(te |
| cc094d8f |          |              |              |         |           | nant_id)s   |
| 138e8765 | RegionOn | magnum       | container-   | True    | admin     | http://192. |
| 617a4d3a | e        |              | infra        |         |           | 168.1.100:9 |
| adeddb16 |          |              |              |         |           | 511/v1      |
| c6910508 |          |              |              |         |           |             |
| 2405f620 | RegionOn | keystone     | identity     | True    | admin     | http://192. |
| 50514132 | e        |              |              |         |           | 168.1.100:3 |
| a27a1c01 |          |              |              |         |           | 5357/v3/    |
| 6c34dfa8 |          |              |              |         |           |             |
| 2ffa2239 | RegionOn | cinderv2     | volumev2     | True    | public    | http://192. |
| 09ba4fda | e        |              |              |         |           | 168.1.100:8 |
| b0b4cf82 |          |              |              |         |           | 776/v2/%(te |
| f9f149ad |          |              |              |         |           | nant_id)s   |
| 386f9c87 | RegionOn | manilav2     | sharev2      | True    | admin     | http://192. |
| bef4476f | e        |              |              |         |           | 168.1.100:8 |
| b171b093 |          |              |              |         |           | 786/v2/%(te |
| 20c7e66b |          |              |              |         |           | nant_id)s   |
| 388b91d8 | RegionOn | magnum       | container-   | True    | internal  | http://192. |
| b5b04f51 | e        |              | infra        |         |           | 168.1.100:9 |
| b0cf4235 |          |              |              |         |           | 511/v1      |
| 4caeaf1c |          |              |              |         |           |             |
| 389d34fc | RegionOn | neutron      | network      | True    | public    | http://192. |
| cbf84849 | e        |              |              |         |           | 168.1.105:9 |
| 9a450836 |          |              |              |         |           | 696         |
| 066118cf |          |              |              |         |           |             |
| 3faa031a | RegionOn | cinderv2     | volumev2     | True    | internal  | http://192. |
| c2a74de8 | e        |              |              |         |           | 168.1.100:8 |
| 8e226328 |          |              |              |         |           | 776/v2/%(te |
| dd9c277c |          |              |              |         |           | nant_id)s   |
| 4520d2f5 | RegionOn | heat         | orchestratio | True    | internal  | http://192. |
| 2d344fd8 | e        |              | n            |         |           | 168.1.100:8 |
| a4ea94b4 |          |              |              |         |           | 004/v1/%(te |
| f372ecb1 |          |              |              |         |           | nant_id)s   |
| 4953557b | RegionOn | cinderv3     | volumev3     | True    | public    | http://192. |
| 63c441f7 | e        |              |              |         |           | 168.1.100:8 |
| 9f0557b6 |          |              |              |         |           | 776/v3/%(te |
| 6de48aa4 |          |              |              |         |           | nant_id)s   |
| 4b1cca5c | RegionOn | sahara       | data_process | True    | admin     | http://192. |
| f3b940eb | e        |              | ing          |         |           | 168.1.100:8 |
| 95021968 |          |              |              |         |           | 386/v1.1/$( |
| dbcdda9f |          |              |              |         |           | tenant_id)s |
| 4d494329 | RegionOn | neutron      | network      | True    | internal  | http://192. |
| 762744b3 | e        |              |              |         |           | 168.1.105:9 |
| 85905e92 |          |              |              |         |           | 696         |
| 71e2eee8 |          |              |              |         |           |             |
| 4ec41791 | RegionOn | nova         | compute      | True    | public    | http://192. |
| b2894ea5 | e        |              |              |         |           | 168.1.100:8 |
| bf26f5ae |          |              |              |         |           | 774/v2.1/%( |
| 83d07502 |          |              |              |         |           | tenant_id)s |
| 54f0e6f0 | RegionOn | cinderv3     | volumev3     | True    | admin     | http://192. |
| 05f1468c | e        |              |              |         |           | 168.1.100:8 |
| 972c9715 |          |              |              |         |           | 776/v3/%(te |
| a2fb1e95 |          |              |              |         |           | nant_id)s   |
| 56252ff5 | RegionOn | nova         | compute      | True    | internal  | http://192. |
| ef4a47c9 | e        |              |              |         |           | 168.1.100:8 |
| bae31759 |          |              |              |         |           | 774/v2.1/%( |
| 772adcbe |          |              |              |         |           | tenant_id)s |
| 5a578b9e | RegionOn | cinder       | volume       | True    | admin     | http://192. |
| 2ba24097 | e        |              |              |         |           | 168.1.100:8 |
| 8af6eb6d |          |              |              |         |           | 776/v1/%(te |
| c0ed8bd9 |          |              |              |         |           | nant_id)s   |
| 5d1b83eb | RegionOn | keystone     | identity     | True    | internal  | http://192. |
| 6e3e4a2a | e        |              |              |         |           | 168.1.100:3 |
| bc47d3b4 |          |              |              |         |           | 5357/v3/    |
| 81c714f8 |          |              |              |         |           |             |
| 628ec5bb | RegionOn | gnocchi      | metric       | True    | admin     | http://192. |
| 017747f4 | e        |              |              |         |           | 168.1.100:8 |
| 93f91e9c |          |              |              |         |           | 041         |
| 4300e437 |          |              |              |         |           |             |
| 6a323121 | RegionOn | manilav2     | sharev2      | True    | internal  | http://192. |
| 2c914900 | e        |              |              |         |           | 168.1.100:8 |
| adcf37a7 |          |              |              |         |           | 786/v2/%(te |
| 4321ddb2 |          |              |              |         |           | nant_id)s   |
| 7367d6d0 | RegionOn | manila       | share        | True    | public    | http://192. |
| 893f46a5 | e        |              |              |         |           | 168.1.100:8 |
| 96588011 |          |              |              |         |           | 786/v1/%(te |
| d5e0fb64 |          |              |              |         |           | nant_id)s   |
| 7402cf8c | RegionOn | manila       | share        | True    | admin     | http://192. |
| d63345af | e        |              |              |         |           | 168.1.100:8 |
| 92623408 |          |              |              |         |           | 786/v1/%(te |
| 1fa21b0b |          |              |              |         |           | nant_id)s   |
| 745b6851 | RegionOn | magnum       | container-   | True    | public    | http://192. |
| 7e4548f7 | e        |              | infra        |         |           | 168.1.100:9 |
| ae01e7c7 |          |              |              |         |           | 511/v1      |
| 7d8ee240 |          |              |              |         |           |             |
| 7725a40a | RegionOn | heat-cfn     | cloudformati | True    | internal  | http://192. |
| afa54bf5 | e        |              | on           |         |           | 168.1.100:8 |
| 862cdf94 |          |              |              |         |           | 000/v1      |
| 44ccaf67 |          |              |              |         |           |             |
| 77e62b69 | RegionOn | glance       | image        | True    | public    | http://192. |
| 55c44798 | e        |              |              |         |           | 168.1.100:9 |
| 9809d877 |          |              |              |         |           | 292         |
| 0b30effa |          |              |              |         |           |             |
| 7f35599a | RegionOn | sahara       | data_process | True    | public    | http://192. |
| 87cb4615 | e        |              | ing          |         |           | 168.1.100:8 |
| 85a2e701 |          |              |              |         |           | 386/v1.1/$( |
| f86b4558 |          |              |              |         |           | tenant_id)s |
| 832fb6af | RegionOn | cinderv3     | volumev3     | True    | internal  | http://192. |
| b0c342e3 | e        |              |              |         |           | 168.1.100:8 |
| b6fcb552 |          |              |              |         |           | 776/v3/%(te |
| 1c8bd874 |          |              |              |         |           | nant_id)s   |
| 925f1b09 | RegionOn | placement    | placement    | True    | admin     | http://192. |
| 978f4625 | e        |              |              |         |           | 168.1.100:8 |
| 9b9c47f8 |          |              |              |         |           | 778         |
| 5c7b3e5a |          |              |              |         |           |             |
| 93f66658 | RegionOn | heat         | orchestratio | True    | public    | http://192. |
| 17204eb9 | e        |              | n            |         |           | 168.1.100:8 |
| a0e6f7f5 |          |              |              |         |           | 004/v1/%(te |
| e3167f2c |          |              |              |         |           | nant_id)s   |
| 9e5716c4 | RegionOn | glance       | image        | True    | internal  | http://192. |
| c9b445d4 | e        |              |              |         |           | 168.1.100:9 |
| b61d0a96 |          |              |              |         |           | 292         |
| ec0cb95e |          |              |              |         |           |             |
| 9e6a8326 | RegionOn | aodh         | alarming     | True    | admin     | http://192. |
| 3fe34e45 | e        |              |              |         |           | 168.1.100:8 |
| 9dbe9d49 |          |              |              |         |           | 042         |
| 9c9c788e |          |              |              |         |           |             |
| a3bff578 | RegionOn | gnocchi      | metric       | True    | public    | http://192. |
| d5a9491e | e        |              |              |         |           | 168.1.100:8 |
| 80f80fc4 |          |              |              |         |           | 041         |
| 46ac50aa |          |              |              |         |           |             |
| ab1eff30 | RegionOn | placement    | placement    | True    | public    | http://192. |
| d75f46c4 | e        |              |              |         |           | 168.1.100:8 |
| 8f435b00 |          |              |              |         |           | 778         |
| e4abbaa4 |          |              |              |         |           |             |
| b38bb61e | RegionOn | nova         | compute      | True    | admin     | http://192. |
| cb8c4ff6 | e        |              |              |         |           | 168.1.100:8 |
| 852fa8dc |          |              |              |         |           | 774/v2.1/%( |
| 067ea8f2 |          |              |              |         |           | tenant_id)s |
| bb18badd | RegionOn | sahara       | data_process | True    | internal  | http://192. |
| 449f4b35 | e        |              | ing          |         |           | 168.1.100:8 |
| 89021061 |          |              |              |         |           | 386/v1.1/$( |
| bbc66c57 |          |              |              |         |           | tenant_id)s |
| bc2d5748 | RegionOn | gnocchi      | metric       | True    | internal  | http://192. |
| 7695468f | e        |              |              |         |           | 168.1.100:8 |
| be514e94 |          |              |              |         |           | 041         |
| ec598543 |          |              |              |         |           |             |
| c6eaf87c | RegionOn | neutron      | network      | True    | admin     | http://192. |
| 4cd94502 | e        |              |              |         |           | 168.1.105:9 |
| a61ab8ab |          |              |              |         |           | 696         |
| dedb10ba |          |              |              |         |           |             |
| c7fc90ae | RegionOn | heat-cfn     | cloudformati | True    | admin     | http://192. |
| 9ef14dc3 | e        |              | on           |         |           | 168.1.100:8 |
| 851b7e92 |          |              |              |         |           | 000/v1      |
| e39bb325 |          |              |              |         |           |             |
| d5834ddd | RegionOn | cinder       | volume       | True    | internal  | http://192. |
| 6294419d | e        |              |              |         |           | 168.1.100:8 |
| 99eda46c |          |              |              |         |           | 776/v1/%(te |
| 37fbaf46 |          |              |              |         |           | nant_id)s   |
| d5fd446f | RegionOn | heat         | orchestratio | True    | admin     | http://192. |
| b2e24c69 | e        |              | n            |         |           | 168.1.100:8 |
| 8262ac46 |          |              |              |         |           | 004/v1/%(te |
| 5c4f89cb |          |              |              |         |           | nant_id)s   |
| df32109a | RegionOn | manila       | share        | True    | internal  | http://192. |
| f5e04ced | e        |              |              |         |           | 168.1.100:8 |
| 9996ab1a |          |              |              |         |           | 786/v1/%(te |
| 8b3b88fd |          |              |              |         |           | nant_id)s   |
| ee53579a | RegionOn | placement    | placement    | True    | internal  | http://192. |
| a9104902 | e        |              |              |         |           | 168.1.100:8 |
| 98f1ed80 |          |              |              |         |           | 778         |
| 54becba5 |          |              |              |         |           |             |
| f3f4f56c | RegionOn | heat-cfn     | cloudformati | True    | public    | http://192. |
| bc414482 | e        |              | on           |         |           | 168.1.100:8 |
| 97f80bbd |          |              |              |         |           | 000/v1      |
| 6336be3a |          |              |              |         |           |             |
| f481f055 | RegionOn | aodh         | alarming     | True    | public    | http://192. |
| b34748f1 | e        |              |              |         |           | 168.1.100:8 |
| 8bcac8b0 |          |              |              |         |           | 042         |
| 05cd7266 |          |              |              |         |           |             |
| f5967a89 | RegionOn | aodh         | alarming     | True    | internal  | http://192. |
| 5db449dd | e        |              |              |         |           | 168.1.100:8 |
| 99a42155 |          |              |              |         |           | 042         |
| e2b790bf |          |              |              |         |           |             |
| f66f576b | RegionOn | cinderv2     | volumev2     | True    | admin     | http://192. |
| 7b634070 | e        |              |              |         |           | 168.1.100:8 |
| 9449ba8f |          |              |              |         |           | 776/v2/%(te |
| ece6dfdd |          |              |              |         |           | nant_id)s   |
| fb0251ea | RegionOn | manilav2     | sharev2      | True    | public    | http://192. |
| 1c7b475d | e        |              |              |         |           | 168.1.100:8 |
| a1ab766f |          |              |              |         |           | 786/v2/%(te |
| a0b3d87d |          |              |              |         |           | nant_id)s   |
+----------+----------+--------------+--------------+---------+-----------+-------------+

Identities Proccess completed

OPENSTACK KEYSTONE INSTALLED

Installing OPENSTACK GLANCE

DB Proccess complete. Let's continue


Keystone Proccess complete. Let's continue


Installing Grance Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-glance.noarch 1:14.0.0-2.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package            Arch     Version             Repository                Size
================================================================================
Installing:
 openstack-glance   noarch   1:14.0.0-2.el7      centos-openstack-ocata    93 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 93 k
Installed size: 594 k
Downloading packages:
openstack-glance-14.0.0-2.el7.noarch.rpm                   |  93 kB   00:01     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:openstack-glance-14.0.0-2.el7.noarch                       1/1 
  Verifying  : 1:openstack-glance-14.0.0-2.el7.noarch                       1/1 

Installed:
  openstack-glance.noarch 1:14.0.0-2.el7                                        

Complete!
Listo


Configuring Glance
Done

Provisioning Glance DB

Option "verbose" from group "DEFAULT" is deprecated for removal.  Its value may be silently ignored in the future.
/usr/lib/python2.7/site-packages/oslo_db/sqlalchemy/enginefacade.py:1241: OsloDBDeprecationWarning: EngineFacade is deprecated; please use oslo_db.sqlalchemy.enginefacade
  expire_on_commit=expire_on_commit, _conf=conf)
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
INFO  [alembic.runtime.migration] Running upgrade  -> liberty, liberty initial
INFO  [alembic.runtime.migration] Running upgrade liberty -> mitaka01, add index on created_at and updated_at columns of 'images' table
INFO  [alembic.runtime.migration] Running upgrade mitaka01 -> mitaka02, update metadef os_nova_server
INFO  [alembic.runtime.migration] Running upgrade mitaka02 -> ocata01, add visibility to and remove is_public from images
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
Upgraded database to: ocata01, current revision(s): ocata01

Applying IPTABLES rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Listo


Cleaning UP App logs
Done

Starting GLANCE
Starting and Enabling Service: openstack-glance-registry
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-glance-registry.service to /usr/lib/systemd/system/openstack-glance-registry.service.
● openstack-glance-registry.service - OpenStack Image Service (code-named Glance) Registry server
   Loaded: loaded (/usr/lib/systemd/system/openstack-glance-registry.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:25:15 BST; 155ms ago
 Main PID: 18627 (glance-registry)
   CGroup: /system.slice/openstack-glance-registry.service
           └─18627 /usr/bin/python2 /usr/bin/glance-registry

Jun 05 12:25:15 richmond.bradstack.co.uk systemd[1]: Started OpenStack Image ...
Jun 05 12:25:15 richmond.bradstack.co.uk systemd[1]: Starting OpenStack Image...
Hint: Some lines were ellipsized, use -l to show in full.
Starting and Enabling Service: openstack-glance-api
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-glance-api.service to /usr/lib/systemd/system/openstack-glance-api.service.
● openstack-glance-api.service - OpenStack Image Service (code-named Glance) API server
   Loaded: loaded (/usr/lib/systemd/system/openstack-glance-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:25:15 BST; 160ms ago
 Main PID: 18653 (glance-api)
   CGroup: /system.slice/openstack-glance-api.service
           └─18653 /usr/bin/python2 /usr/bin/glance-api

Jun 05 12:25:15 richmond.bradstack.co.uk systemd[1]: Started OpenStack Image ...
Jun 05 12:25:15 richmond.bradstack.co.uk systemd[1]: Starting OpenStack Image...
Hint: Some lines were ellipsized, use -l to show in full.

Glance Installed and Configured


Loading extra metadata
Option "verbose" from group "DEFAULT" is deprecated for removal.  Its value may be silently ignored in the future.
/usr/lib/python2.7/site-packages/oslo_db/sqlalchemy/enginefacade.py:1241: OsloDBDeprecationWarning: EngineFacade is deprecated; please use oslo_db.sqlalchemy.enginefacade
  expire_on_commit=expire_on_commit, _conf=conf)


Adding CIRROS Images to GLANCE

Redirecting to /bin/systemctl restart  openstack-glance-registry.service
Redirecting to /bin/systemctl restart  openstack-glance-api.service

+------------------+------------------------------------------------------+
| Field            | Value                                                |
+------------------+------------------------------------------------------+
| checksum         | 7316af7358dd32ca1956d72ac2c9e147                     |
| container_format | bare                                                 |
| created_at       | 2017-06-05T11:25:58Z                                 |
| disk_format      | qcow2                                                |
| file             | /v2/images/54f114f4-405a-42c1-ae0f-7c10bcdc973f/file |
| id               | 54f114f4-405a-42c1-ae0f-7c10bcdc973f                 |
| min_disk         | 0                                                    |
| min_ram          | 0                                                    |
| name             | Cirros-0.3.5-32                                      |
| owner            | ef9405e25f2040c392fa9a408bad8406                     |
| protected        | True                                                 |
| schema           | /v2/schemas/image                                    |
| size             | 12528640                                             |
| status           | active                                               |
| tags             |                                                      |
| updated_at       | 2017-06-05T11:25:58Z                                 |
| virtual_size     | None                                                 |
| visibility       | public                                               |
+------------------+------------------------------------------------------+
+------------------+------------------------------------------------------+
| Field            | Value                                                |
+------------------+------------------------------------------------------+
| checksum         | f8ab98ff5e73ebab884d80c9dc9c7290                     |
| container_format | bare                                                 |
| created_at       | 2017-06-05T11:26:12Z                                 |
| disk_format      | qcow2                                                |
| file             | /v2/images/090d4cb8-0ea0-47f8-8914-96669c6b869f/file |
| id               | 090d4cb8-0ea0-47f8-8914-96669c6b869f                 |
| min_disk         | 0                                                    |
| min_ram          | 0                                                    |
| name             | Cirros-0.3.5-64                                      |
| owner            | ef9405e25f2040c392fa9a408bad8406                     |
| protected        | True                                                 |
| schema           | /v2/schemas/image                                    |
| size             | 13267968                                             |
| status           | active                                               |
| tags             |                                                      |
| updated_at       | 2017-06-05T11:26:13Z                                 |
| virtual_size     | None                                                 |
| visibility       | public                                               |
+------------------+------------------------------------------------------+
+--------------------------------------+-----------------+--------+
| ID                                   | Name            | Status |
+--------------------------------------+-----------------+--------+
| 54f114f4-405a-42c1-ae0f-7c10bcdc973f | Cirros-0.3.5-32 | active |
| 090d4cb8-0ea0-47f8-8914-96669c6b869f | Cirros-0.3.5-64 | active |
+--------------------------------------+-----------------+--------+

CIRROS Images added to GLANCE

OPENSTACK GLANCE INSTALLED

Installing OPENSTACK CINDER

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue

Installing Cinder Packages
Installing cinder packages for a Cinder-Controller node
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-cinder.noarch 1:10.0.1-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package            Arch     Version             Repository                Size
================================================================================
Installing:
 openstack-cinder   noarch   1:10.0.1-1.el7      centos-openstack-ocata    58 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 58 k
Installed size: 197 k
Downloading packages:
openstack-cinder-10.0.1-1.el7.noarch.rpm                   |  58 kB   00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:openstack-cinder-10.0.1-1.el7.noarch                       1/1 
  Verifying  : 1:openstack-cinder-10.0.1-1.el7.noarch                       1/1 

Installed:
  openstack-cinder.noarch 1:10.0.1-1.el7                                        

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-oslo-db-4.17.0-1.el7.noarch already installed and latest version
Package python2-oslo-log-3.20.1-1.el7.noarch already installed and latest version
Package MySQL-python-1.2.5-1.el7.x86_64 already installed and latest version
Nothing to do
Done

Configuring Cinder
Option "logdir" from group "DEFAULT" is deprecated. Use option "log-dir" from group "DEFAULT".

Cleaning UP App logs
Done


Starting Cinder
Starting and Enabling Service: openstack-cinder-api
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-cinder-api.service to /usr/lib/systemd/system/openstack-cinder-api.service.
● openstack-cinder-api.service - OpenStack Cinder API Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-cinder-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:27:26 BST; 162ms ago
 Main PID: 19147 (cinder-api)
   CGroup: /system.slice/openstack-cinder-api.service
           └─19147 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...

Jun 05 12:27:26 richmond.bradstack.co.uk systemd[1]: Started OpenStack Cinder...
Jun 05 12:27:26 richmond.bradstack.co.uk systemd[1]: Starting OpenStack Cinde...
Hint: Some lines were ellipsized, use -l to show in full.
Starting and Enabling Service: openstack-cinder-scheduler
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-cinder-scheduler.service to /usr/lib/systemd/system/openstack-cinder-scheduler.service.
● openstack-cinder-scheduler.service - OpenStack Cinder Scheduler Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-cinder-scheduler.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:27:26 BST; 164ms ago
 Main PID: 19181 (cinder-schedule)
   CGroup: /system.slice/openstack-cinder-scheduler.service
           └─19181 /usr/bin/python2 /usr/bin/cinder-scheduler --config-file /...

Jun 05 12:27:26 richmond.bradstack.co.uk systemd[1]: Started OpenStack Cinder...
Jun 05 12:27:26 richmond.bradstack.co.uk systemd[1]: Starting OpenStack Cinde...
Hint: Some lines were ellipsized, use -l to show in full.
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-cinderclient-1.11.0-1.el7.noarch already installed and latest version
Nothing to do
Ready

Applying IPTABLES rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Ready

Cinder Installed and Configured

OPENSTACK CINDER INSTALLED

Installing OPENSTACK NEUTRON

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue

Installing NEUTRON Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Package 1:python-neutron-10.0.1-1.el7.noarch already installed and latest version
Package python2-neutronclient-6.1.0-1.el7.noarch already installed and latest version
Package which-2.20-7.el7.x86_64 already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package haproxy.x86_64 0:1.5.18-3.el7_3.1 will be installed
---> Package openstack-neutron.noarch 1:10.0.1-1.el7 will be installed
--> Processing Dependency: openstack-neutron-common = 1:10.0.1-1.el7 for package: 1:openstack-neutron-10.0.1-1.el7.noarch
--> Processing Dependency: keepalived for package: 1:openstack-neutron-10.0.1-1.el7.noarch
--> Processing Dependency: dnsmasq-utils for package: 1:openstack-neutron-10.0.1-1.el7.noarch
--> Processing Dependency: dibbler-client for package: 1:openstack-neutron-10.0.1-1.el7.noarch
--> Processing Dependency: conntrack-tools for package: 1:openstack-neutron-10.0.1-1.el7.noarch
---> Package openstack-neutron-fwaas.noarch 1:10.0.1-1.el7 will be installed
--> Processing Dependency: python-neutron-fwaas = 1:10.0.1-1.el7 for package: 1:openstack-neutron-fwaas-10.0.1-1.el7.noarch
---> Package openstack-neutron-lbaas.noarch 1:10.0.0-1.el7 will be installed
--> Processing Dependency: python-neutron-lbaas = 1:10.0.0-1.el7 for package: 1:openstack-neutron-lbaas-10.0.0-1.el7.noarch
---> Package openstack-neutron-ml2.noarch 1:10.0.1-1.el7 will be installed
--> Processing Dependency: python-ncclient for package: 1:openstack-neutron-ml2-10.0.1-1.el7.noarch
---> Package openstack-neutron-openvswitch.noarch 1:10.0.1-1.el7 will be installed
--> Running transaction check
---> Package conntrack-tools.x86_64 0:1.4.3-1.el7 will be installed
--> Processing Dependency: libnetfilter_cttimeout.so.1(LIBNETFILTER_CTTIMEOUT_1.1)(64bit) for package: conntrack-tools-1.4.3-1.el7.x86_64
--> Processing Dependency: libnetfilter_cttimeout.so.1(LIBNETFILTER_CTTIMEOUT_1.0)(64bit) for package: conntrack-tools-1.4.3-1.el7.x86_64
--> Processing Dependency: libnetfilter_cthelper.so.0(LIBNETFILTER_CTHELPER_1.0)(64bit) for package: conntrack-tools-1.4.3-1.el7.x86_64
--> Processing Dependency: libnetfilter_queue.so.1()(64bit) for package: conntrack-tools-1.4.3-1.el7.x86_64
--> Processing Dependency: libnetfilter_cttimeout.so.1()(64bit) for package: conntrack-tools-1.4.3-1.el7.x86_64
--> Processing Dependency: libnetfilter_cthelper.so.0()(64bit) for package: conntrack-tools-1.4.3-1.el7.x86_64
---> Package dibbler-client.x86_64 0:1.0.1-0.RC1.2.el7 will be installed
---> Package dnsmasq-utils.x86_64 0:2.66-21.el7 will be installed
---> Package keepalived.x86_64 0:1.2.13-9.el7_3 will be installed
--> Processing Dependency: libnetsnmpmibs.so.31()(64bit) for package: keepalived-1.2.13-9.el7_3.x86_64
--> Processing Dependency: libnetsnmpagent.so.31()(64bit) for package: keepalived-1.2.13-9.el7_3.x86_64
---> Package openstack-neutron-common.noarch 1:10.0.1-1.el7 will be installed
---> Package python-ncclient.noarch 0:0.4.2-2.el7 will be installed
--> Processing Dependency: libxslt-python for package: python-ncclient-0.4.2-2.el7.noarch
---> Package python-neutron-fwaas.noarch 1:10.0.1-1.el7 will be installed
---> Package python-neutron-lbaas.noarch 1:10.0.0-1.el7 will be installed
--> Running transaction check
---> Package libnetfilter_cthelper.x86_64 0:1.0.0-9.el7 will be installed
---> Package libnetfilter_cttimeout.x86_64 0:1.0.0-6.el7 will be installed
---> Package libnetfilter_queue.x86_64 0:1.0.2-2.el7 will be installed
---> Package libxslt-python.x86_64 0:1.1.28-5.el7 will be installed
---> Package net-snmp-agent-libs.x86_64 1:5.7.2-24.el7_3.2 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                 Arch   Version            Repository              Size
================================================================================
Installing:
 haproxy                 x86_64 1.5.18-3.el7_3.1   updates                833 k
 openstack-neutron       noarch 1:10.0.1-1.el7     centos-openstack-ocata  26 k
 openstack-neutron-fwaas noarch 1:10.0.1-1.el7     centos-openstack-ocata 8.5 k
 openstack-neutron-lbaas noarch 1:10.0.0-1.el7     centos-openstack-ocata  14 k
 openstack-neutron-ml2   noarch 1:10.0.1-1.el7     centos-openstack-ocata  12 k
 openstack-neutron-openvswitch
                         noarch 1:10.0.1-1.el7     centos-openstack-ocata  14 k
Installing for dependencies:
 conntrack-tools         x86_64 1.4.3-1.el7        base                   175 k
 dibbler-client          x86_64 1.0.1-0.RC1.2.el7  centos-openstack-ocata 409 k
 dnsmasq-utils           x86_64 2.66-21.el7        base                    23 k
 keepalived              x86_64 1.2.13-9.el7_3     updates                224 k
 libnetfilter_cthelper   x86_64 1.0.0-9.el7        base                    18 k
 libnetfilter_cttimeout  x86_64 1.0.0-6.el7        base                    18 k
 libnetfilter_queue      x86_64 1.0.2-2.el7        centos-openstack-ocata  23 k
 libxslt-python          x86_64 1.1.28-5.el7       base                    59 k
 net-snmp-agent-libs     x86_64 1:5.7.2-24.el7_3.2 updates                703 k
 openstack-neutron-common
                         noarch 1:10.0.1-1.el7     centos-openstack-ocata 273 k
 python-ncclient         noarch 0.4.2-2.el7        centos-openstack-ocata 164 k
 python-neutron-fwaas    noarch 1:10.0.1-1.el7     centos-openstack-ocata 110 k
 python-neutron-lbaas    noarch 1:10.0.0-1.el7     centos-openstack-ocata 240 k

Transaction Summary
================================================================================
Install  6 Packages (+13 Dependent packages)

Total download size: 3.3 M
Installed size: 11 M
Downloading packages:
(1/19): dnsmasq-utils-2.66-21.el7.x86_64.rpm               |  23 kB   00:00     
(2/19): libnetfilter_cthelper-1.0.0-9.el7.x86_64.rpm       |  18 kB   00:00     
(3/19): libnetfilter_cttimeout-1.0.0-6.el7.x86_64.rpm      |  18 kB   00:00     
(4/19): conntrack-tools-1.4.3-1.el7.x86_64.rpm             | 175 kB   00:00     
(5/19): keepalived-1.2.13-9.el7_3.x86_64.rpm               | 224 kB   00:00     
(6/19): libxslt-python-1.1.28-5.el7.x86_64.rpm             |  59 kB   00:00     
(7/19): dibbler-client-1.0.1-0.RC1.2.el7.x86_64.rpm        | 409 kB   00:00     
(8/19): openstack-neutron-10.0.1-1.el7.noarch.rpm          |  26 kB   00:00     
(9/19): libnetfilter_queue-1.0.2-2.el7.x86_64.rpm          |  23 kB   00:00     
(10/19): haproxy-1.5.18-3.el7_3.1.x86_64.rpm               | 833 kB   00:00     
(11/19): openstack-neutron-fwaas-10.0.1-1.el7.noarch.rpm   | 8.5 kB   00:00     
(12/19): openstack-neutron-lbaas-10.0.0-1.el7.noarch.rpm   |  14 kB   00:00     
(13/19): openstack-neutron-common-10.0.1-1.el7.noarch.rpm  | 273 kB   00:00     
(14/19): openstack-neutron-ml2-10.0.1-1.el7.noarch.rpm     |  12 kB   00:00     
(15/19): openstack-neutron-openvswitch-10.0.1-1.el7.noarch |  14 kB   00:00     
(16/19): net-snmp-agent-libs-5.7.2-24.el7_3.2.x86_64.rpm   | 703 kB   00:00     
(17/19): python-ncclient-0.4.2-2.el7.noarch.rpm            | 164 kB   00:00     
(18/19): python-neutron-fwaas-10.0.1-1.el7.noarch.rpm      | 110 kB   00:00     
(19/19): python-neutron-lbaas-10.0.0-1.el7.noarch.rpm      | 240 kB   00:00     
--------------------------------------------------------------------------------
Total                                              6.2 MB/s | 3.3 MB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:openstack-neutron-common-10.0.1-1.el7.noarch              1/19 
  Installing : libnetfilter_cthelper-1.0.0-9.el7.x86_64                    2/19 
  Installing : libxslt-python-1.1.28-5.el7.x86_64                          3/19 
  Installing : python-ncclient-0.4.2-2.el7.noarch                          4/19 
  Installing : 1:python-neutron-lbaas-10.0.0-1.el7.noarch                  5/19 
  Installing : dnsmasq-utils-2.66-21.el7.x86_64                            6/19 
  Installing : haproxy-1.5.18-3.el7_3.1.x86_64                             7/19 
  Installing : libnetfilter_queue-1.0.2-2.el7.x86_64                       8/19 
  Installing : dibbler-client-1.0.1-0.RC1.2.el7.x86_64                     9/19 
  Installing : 1:net-snmp-agent-libs-5.7.2-24.el7_3.2.x86_64              10/19 
  Installing : keepalived-1.2.13-9.el7_3.x86_64                           11/19 
  Installing : libnetfilter_cttimeout-1.0.0-6.el7.x86_64                  12/19 
  Installing : conntrack-tools-1.4.3-1.el7.x86_64                         13/19 
  Installing : 1:openstack-neutron-10.0.1-1.el7.noarch                    14/19 
  Installing : 1:python-neutron-fwaas-10.0.1-1.el7.noarch                 15/19 
  Installing : 1:openstack-neutron-fwaas-10.0.1-1.el7.noarch              16/19 
  Installing : 1:openstack-neutron-lbaas-10.0.0-1.el7.noarch              17/19 
  Installing : 1:openstack-neutron-ml2-10.0.1-1.el7.noarch                18/19 
  Installing : 1:openstack-neutron-openvswitch-10.0.1-1.el7.noarch        19/19 
  Verifying  : 1:openstack-neutron-common-10.0.1-1.el7.noarch              1/19 
  Verifying  : 1:python-neutron-fwaas-10.0.1-1.el7.noarch                  2/19 
  Verifying  : libnetfilter_cttimeout-1.0.0-6.el7.x86_64                   3/19 
  Verifying  : 1:net-snmp-agent-libs-5.7.2-24.el7_3.2.x86_64               4/19 
  Verifying  : 1:openstack-neutron-fwaas-10.0.1-1.el7.noarch               5/19 
  Verifying  : dibbler-client-1.0.1-0.RC1.2.el7.x86_64                     6/19 
  Verifying  : 1:openstack-neutron-openvswitch-10.0.1-1.el7.noarch         7/19 
  Verifying  : keepalived-1.2.13-9.el7_3.x86_64                            8/19 
  Verifying  : libnetfilter_queue-1.0.2-2.el7.x86_64                       9/19 
  Verifying  : haproxy-1.5.18-3.el7_3.1.x86_64                            10/19 
  Verifying  : 1:openstack-neutron-10.0.1-1.el7.noarch                    11/19 
  Verifying  : dnsmasq-utils-2.66-21.el7.x86_64                           12/19 
  Verifying  : 1:python-neutron-lbaas-10.0.0-1.el7.noarch                 13/19 
  Verifying  : libxslt-python-1.1.28-5.el7.x86_64                         14/19 
  Verifying  : libnetfilter_cthelper-1.0.0-9.el7.x86_64                   15/19 
  Verifying  : conntrack-tools-1.4.3-1.el7.x86_64                         16/19 
  Verifying  : python-ncclient-0.4.2-2.el7.noarch                         17/19 
  Verifying  : 1:openstack-neutron-ml2-10.0.1-1.el7.noarch                18/19 
  Verifying  : 1:openstack-neutron-lbaas-10.0.0-1.el7.noarch              19/19 

Installed:
  haproxy.x86_64 0:1.5.18-3.el7_3.1                                             
  openstack-neutron.noarch 1:10.0.1-1.el7                                       
  openstack-neutron-fwaas.noarch 1:10.0.1-1.el7                                 
  openstack-neutron-lbaas.noarch 1:10.0.0-1.el7                                 
  openstack-neutron-ml2.noarch 1:10.0.1-1.el7                                   
  openstack-neutron-openvswitch.noarch 1:10.0.1-1.el7                           

Dependency Installed:
  conntrack-tools.x86_64 0:1.4.3-1.el7                                          
  dibbler-client.x86_64 0:1.0.1-0.RC1.2.el7                                     
  dnsmasq-utils.x86_64 0:2.66-21.el7                                            
  keepalived.x86_64 0:1.2.13-9.el7_3                                            
  libnetfilter_cthelper.x86_64 0:1.0.0-9.el7                                    
  libnetfilter_cttimeout.x86_64 0:1.0.0-6.el7                                   
  libnetfilter_queue.x86_64 0:1.0.2-2.el7                                       
  libxslt-python.x86_64 0:1.1.28-5.el7                                          
  net-snmp-agent-libs.x86_64 1:5.7.2-24.el7_3.2                                 
  openstack-neutron-common.noarch 1:10.0.1-1.el7                                
  python-ncclient.noarch 0:0.4.2-2.el7                                          
  python-neutron-fwaas.noarch 1:10.0.1-1.el7                                    
  python-neutron-lbaas.noarch 1:10.0.0-1.el7                                    

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package yum-plugin-versionlock-1.1.31-40.el7.noarch already installed and latest version
Nothing to do
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
versionlock added: 0
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package 1:openstack-neutron-10.0.1-1.el7.noarch already installed and latest version
Package 1:openstack-neutron-openvswitch-10.0.1-1.el7.noarch already installed and latest version
Package 1:openstack-neutron-ml2-10.0.1-1.el7.noarch already installed and latest version
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Package 1:python-neutron-10.0.1-1.el7.noarch already installed and latest version
Package python2-neutronclient-6.1.0-1.el7.noarch already installed and latest version
Package haproxy-1.5.18-3.el7_3.1.x86_64 already installed and latest version
Package which-2.20-7.el7.x86_64 already installed and latest version
Package 1:openstack-neutron-lbaas-10.0.0-1.el7.noarch already installed and latest version
Package 1:openstack-neutron-fwaas-10.0.1-1.el7.noarch already installed and latest version
Nothing to do
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package openstack-neutron-vpnaas.noarch 1:10.0.0-1.el7 will be installed
--> Processing Dependency: python-neutron-vpnaas = 1:10.0.0-1.el7 for package: 1:openstack-neutron-vpnaas-10.0.0-1.el7.noarch
---> Package strongswan.x86_64 0:5.4.0-2.el7 will be installed
---> Package strongswan-charon-nm.x86_64 0:5.4.0-2.el7 will be installed
---> Package strongswan-libipsec.x86_64 0:5.4.0-2.el7 will be installed
---> Package strongswan-tnc-imcvs.x86_64 0:5.4.0-2.el7 will be installed
--> Running transaction check
---> Package python-neutron-vpnaas.noarch 1:10.0.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                  Arch   Version           Repository              Size
================================================================================
Installing:
 openstack-neutron-vpnaas noarch 1:10.0.0-1.el7    centos-openstack-ocata  12 k
 strongswan               x86_64 5.4.0-2.el7       epel                   1.1 M
 strongswan-charon-nm     x86_64 5.4.0-2.el7       epel                    37 k
 strongswan-libipsec      x86_64 5.4.0-2.el7       epel                    41 k
 strongswan-tnc-imcvs     x86_64 5.4.0-2.el7       epel                   302 k
Installing for dependencies:
 python-neutron-vpnaas    noarch 1:10.0.0-1.el7    centos-openstack-ocata 155 k

Transaction Summary
================================================================================
Install  5 Packages (+1 Dependent package)

Total download size: 1.6 M
Installed size: 4.7 M
Downloading packages:
(1/6): openstack-neutron-vpnaas-10.0.0-1.el7.noarch.rpm    |  12 kB   00:00     
(2/6): python-neutron-vpnaas-10.0.0-1.el7.noarch.rpm       | 155 kB   00:00     
(3/6): strongswan-5.4.0-2.el7.x86_64.rpm                   | 1.1 MB   00:00     
(4/6): strongswan-charon-nm-5.4.0-2.el7.x86_64.rpm         |  37 kB   00:00     
(5/6): strongswan-libipsec-5.4.0-2.el7.x86_64.rpm          |  41 kB   00:00     
(6/6): strongswan-tnc-imcvs-5.4.0-2.el7.x86_64.rpm         | 302 kB   00:00     
--------------------------------------------------------------------------------
Total                                              2.9 MB/s | 1.6 MB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : strongswan-5.4.0-2.el7.x86_64                                1/6 
  Installing : 1:python-neutron-vpnaas-10.0.0-1.el7.noarch                  2/6 
  Installing : 1:openstack-neutron-vpnaas-10.0.0-1.el7.noarch               3/6 
  Installing : strongswan-charon-nm-5.4.0-2.el7.x86_64                      4/6 
  Installing : strongswan-libipsec-5.4.0-2.el7.x86_64                       5/6 
  Installing : strongswan-tnc-imcvs-5.4.0-2.el7.x86_64                      6/6 
  Verifying  : strongswan-5.4.0-2.el7.x86_64                                1/6 
  Verifying  : strongswan-charon-nm-5.4.0-2.el7.x86_64                      2/6 
  Verifying  : 1:python-neutron-vpnaas-10.0.0-1.el7.noarch                  3/6 
  Verifying  : 1:openstack-neutron-vpnaas-10.0.0-1.el7.noarch               4/6 
  Verifying  : strongswan-libipsec-5.4.0-2.el7.x86_64                       5/6 
  Verifying  : strongswan-tnc-imcvs-5.4.0-2.el7.x86_64                      6/6 

Installed:
  openstack-neutron-vpnaas.noarch 1:10.0.0-1.el7                                
  strongswan.x86_64 0:5.4.0-2.el7                                               
  strongswan-charon-nm.x86_64 0:5.4.0-2.el7                                     
  strongswan-libipsec.x86_64 0:5.4.0-2.el7                                      
  strongswan-tnc-imcvs.x86_64 0:5.4.0-2.el7                                     

Dependency Installed:
  python-neutron-vpnaas.noarch 1:10.0.0-1.el7                                   

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package openstack-neutron-metering-agent.noarch 1:10.0.1-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                     Arch   Version        Repository              Size
================================================================================
Installing:
 openstack-neutron-metering-agent
                             noarch 1:10.0.1-1.el7 centos-openstack-ocata  11 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 11 k
Installed size: 17 k
Downloading packages:
openstack-neutron-metering-agent-10.0.1-1.el7.noarch.rpm   |  11 kB   00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:openstack-neutron-metering-agent-10.0.1-1.el7.noarch       1/1 
  Verifying  : 1:openstack-neutron-metering-agent-10.0.1-1.el7.noarch       1/1 

Installed:
  openstack-neutron-metering-agent.noarch 1:10.0.1-1.el7                        

Complete!

Ready
mv: cannot stat ‘/etc/neutron/plugins/openvswitch/ovs_neutron_plugin.ini’: No such file or directory

Installing DNSMASQ
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package dnsmasq-2.66-21.el7.x86_64 already installed and latest version
Package dnsmasq-utils-2.66-21.el7.x86_64 already installed and latest version
Nothing to do
Done
Done


Applying IPTABLES Rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Done

Configuring NEUTRON
‘/usr/share/neutron/api-paste.ini’ -> ‘/etc/neutron/api-paste.ini’
‘/etc/neutron/lbaas_agent.ini’ -> ‘/etc/neutron/plugins/services/agent_loadbalancer/lbaas_agent.ini’

Done


Provisioning NEUTRON database

INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
  Running upgrade for neutron ...
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
INFO  [alembic.runtime.migration] Running upgrade  -> kilo, kilo_initial
INFO  [alembic.runtime.migration] Running upgrade kilo -> 354db87e3225, nsxv_vdr_metadata.py
INFO  [alembic.runtime.migration] Running upgrade 354db87e3225 -> 599c6a226151, neutrodb_ipam
INFO  [alembic.runtime.migration] Running upgrade 599c6a226151 -> 52c5312f6baf, Initial operations in support of address scopes
INFO  [alembic.runtime.migration] Running upgrade 52c5312f6baf -> 313373c0ffee, Flavor framework
INFO  [alembic.runtime.migration] Running upgrade 313373c0ffee -> 8675309a5c4f, network_rbac
INFO  [alembic.runtime.migration] Running upgrade 8675309a5c4f -> 45f955889773, quota_usage
INFO  [alembic.runtime.migration] Running upgrade 45f955889773 -> 26c371498592, subnetpool hash
INFO  [alembic.runtime.migration] Running upgrade 26c371498592 -> 1c844d1677f7, add order to dnsnameservers
INFO  [alembic.runtime.migration] Running upgrade 1c844d1677f7 -> 1b4c6e320f79, address scope support in subnetpool
INFO  [alembic.runtime.migration] Running upgrade 1b4c6e320f79 -> 48153cb5f051, qos db changes
INFO  [alembic.runtime.migration] Running upgrade 48153cb5f051 -> 9859ac9c136, quota_reservations
INFO  [alembic.runtime.migration] Running upgrade 9859ac9c136 -> 34af2b5c5a59, Add dns_name to Port
INFO  [alembic.runtime.migration] Running upgrade 34af2b5c5a59 -> 59cb5b6cf4d, Add availability zone
INFO  [alembic.runtime.migration] Running upgrade 59cb5b6cf4d -> 13cfb89f881a, add is_default to subnetpool
INFO  [alembic.runtime.migration] Running upgrade 13cfb89f881a -> 32e5974ada25, Add standard attribute table
INFO  [alembic.runtime.migration] Running upgrade 32e5974ada25 -> ec7fcfbf72ee, Add network availability zone
INFO  [alembic.runtime.migration] Running upgrade ec7fcfbf72ee -> dce3ec7a25c9, Add router availability zone
INFO  [alembic.runtime.migration] Running upgrade dce3ec7a25c9 -> c3a73f615e4, Add ip_version to AddressScope
INFO  [alembic.runtime.migration] Running upgrade c3a73f615e4 -> 659bf3d90664, Add tables and attributes to support external DNS integration
INFO  [alembic.runtime.migration] Running upgrade 659bf3d90664 -> 1df244e556f5, add_unique_ha_router_agent_port_bindings
INFO  [alembic.runtime.migration] Running upgrade 1df244e556f5 -> 19f26505c74f, Auto Allocated Topology - aka Get-Me-A-Network
INFO  [alembic.runtime.migration] Running upgrade 19f26505c74f -> 15be73214821, add dynamic routing model data
INFO  [alembic.runtime.migration] Running upgrade 15be73214821 -> b4caf27aae4, add_bgp_dragent_model_data
INFO  [alembic.runtime.migration] Running upgrade b4caf27aae4 -> 15e43b934f81, rbac_qos_policy
INFO  [alembic.runtime.migration] Running upgrade 15e43b934f81 -> 31ed664953e6, Add resource_versions row to agent table
INFO  [alembic.runtime.migration] Running upgrade 31ed664953e6 -> 2f9e956e7532, tag support
INFO  [alembic.runtime.migration] Running upgrade 2f9e956e7532 -> 3894bccad37f, add_timestamp_to_base_resources
INFO  [alembic.runtime.migration] Running upgrade 3894bccad37f -> 0e66c5227a8a, Add desc to standard attr table
INFO  [alembic.runtime.migration] Running upgrade 0e66c5227a8a -> 45f8dd33480b, qos dscp db addition
INFO  [alembic.runtime.migration] Running upgrade 45f8dd33480b -> 5abc0278ca73, Add support for VLAN trunking
INFO  [alembic.runtime.migration] Running upgrade 5abc0278ca73 -> d3435b514502, Add device_id index to Port
INFO  [alembic.runtime.migration] Running upgrade d3435b514502 -> 30107ab6a3ee, provisioning_blocks.py
INFO  [alembic.runtime.migration] Running upgrade 30107ab6a3ee -> c415aab1c048, add revisions table
INFO  [alembic.runtime.migration] Running upgrade c415aab1c048 -> a963b38d82f4, add dns name to portdnses
INFO  [alembic.runtime.migration] Running upgrade kilo -> 30018084ec99, Initial no-op Liberty contract rule.
INFO  [alembic.runtime.migration] Running upgrade 30018084ec99 -> 4ffceebfada, network_rbac
INFO  [alembic.runtime.migration] Running upgrade 4ffceebfada -> 5498d17be016, Drop legacy OVS and LB plugin tables
INFO  [alembic.runtime.migration] Running upgrade 5498d17be016 -> 2a16083502f3, Metaplugin removal
INFO  [alembic.runtime.migration] Running upgrade 2a16083502f3 -> 2e5352a0ad4d, Add missing foreign keys
INFO  [alembic.runtime.migration] Running upgrade 2e5352a0ad4d -> 11926bcfe72d, add geneve ml2 type driver
INFO  [alembic.runtime.migration] Running upgrade 11926bcfe72d -> 4af11ca47297, Drop cisco monolithic tables
INFO  [alembic.runtime.migration] Running upgrade 4af11ca47297 -> 1b294093239c, Drop embrane plugin table
INFO  [alembic.runtime.migration] Running upgrade 1b294093239c -> 8a6d8bdae39, standardattributes migration
INFO  [alembic.runtime.migration] Running upgrade 8a6d8bdae39 -> 2b4c2465d44b, DVR sheduling refactoring
INFO  [alembic.runtime.migration] Running upgrade 2b4c2465d44b -> e3278ee65050, Drop NEC plugin tables
INFO  [alembic.runtime.migration] Running upgrade e3278ee65050 -> c6c112992c9, rbac_qos_policy
INFO  [alembic.runtime.migration] Running upgrade c6c112992c9 -> 5ffceebfada, network_rbac_external
INFO  [alembic.runtime.migration] Running upgrade 5ffceebfada -> 4ffceebfcdc, standard_desc
INFO  [alembic.runtime.migration] Running upgrade 4ffceebfcdc -> 7bbb25278f53, device_owner_ha_replicate_int
INFO  [alembic.runtime.migration] Running upgrade 7bbb25278f53 -> 89ab9a816d70, Rename ml2_network_segments table
INFO  [alembic.runtime.migration] Running upgrade a963b38d82f4 -> 3d0e74aa7d37, Add flavor_id to Router
INFO  [alembic.runtime.migration] Running upgrade 3d0e74aa7d37 -> 030a959ceafa, uniq_routerports0port_id
INFO  [alembic.runtime.migration] Running upgrade 030a959ceafa -> a5648cfeeadf, Add support for Subnet Service Types
INFO  [alembic.runtime.migration] Running upgrade a5648cfeeadf -> 0f5bef0f87d4, add_qos_minimum_bandwidth_rules
INFO  [alembic.runtime.migration] Running upgrade 0f5bef0f87d4 -> 67daae611b6e, add standardattr to qos policies
INFO  [alembic.runtime.migration] Running upgrade 67daae611b6e -> 6b461a21bcfc, uniq_floatingips0floating_network_id0fixed_port_id0fixed_ip_addr
INFO  [alembic.runtime.migration] Running upgrade 6b461a21bcfc -> 5cd92597d11d, Add ip_allocation to port
INFO  [alembic.runtime.migration] Running upgrade 5cd92597d11d -> 929c968efe70, add_pk_version_table
INFO  [alembic.runtime.migration] Running upgrade 929c968efe70 -> a9c43481023c, extend_pk_with_host_and_add_status_to_ml2_port_binding
INFO  [alembic.runtime.migration] Running upgrade 89ab9a816d70 -> c879c5e1ee90, Add segment_id to subnet
INFO  [alembic.runtime.migration] Running upgrade c879c5e1ee90 -> 8fd3918ef6f4, Add segment_host_mapping table.
INFO  [alembic.runtime.migration] Running upgrade 8fd3918ef6f4 -> 4bcd4df1f426, Rename ml2_dvr_port_bindings
INFO  [alembic.runtime.migration] Running upgrade 4bcd4df1f426 -> b67e765a3524, Remove mtu column from networks.
INFO  [alembic.runtime.migration] Running upgrade b67e765a3524 -> a84ccf28f06a, migrate dns name from port
INFO  [alembic.runtime.migration] Running upgrade a84ccf28f06a -> 7d9d8eeec6ad, rename tenant to project
INFO  [alembic.runtime.migration] Running upgrade 7d9d8eeec6ad -> a8b517cff8ab, Add routerport bindings for L3 HA
INFO  [alembic.runtime.migration] Running upgrade a8b517cff8ab -> 3b935b28e7a0, migrate to pluggable ipam
INFO  [alembic.runtime.migration] Running upgrade 3b935b28e7a0 -> b12a3ef66e62, add standardattr to qos policies
INFO  [alembic.runtime.migration] Running upgrade b12a3ef66e62 -> 97c25b0d2353, Add Name and Description to the networksegments table
INFO  [alembic.runtime.migration] Running upgrade 97c25b0d2353 -> 2e0d7a8a1586, Add binding index to RouterL3AgentBinding
INFO  [alembic.runtime.migration] Running upgrade 2e0d7a8a1586 -> 5c85685d616d, Remove availability ranges.
  OK
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
  Running upgrade for neutron-fwaas ...
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
INFO  [alembic.runtime.migration] Running upgrade  -> start_neutron_fwaas, start neutron-fwaas chain
INFO  [alembic.runtime.migration] Running upgrade start_neutron_fwaas -> 4202e3047e47, add_index_tenant_id
INFO  [alembic.runtime.migration] Running upgrade 4202e3047e47 -> 540142f314f4, FWaaS router insertion
INFO  [alembic.runtime.migration] Running upgrade 540142f314f4 -> 796c68dffbb, cisco_csr_fwaas
INFO  [alembic.runtime.migration] Running upgrade 796c68dffbb -> kilo, kilo
INFO  [alembic.runtime.migration] Running upgrade kilo -> 67c8e8d61d5, Initial Liberty no-op script.
INFO  [alembic.runtime.migration] Running upgrade 67c8e8d61d5 -> 458aa42b14b, fw_table_alter script to make <name> column case sensitive
INFO  [alembic.runtime.migration] Running upgrade 458aa42b14b -> f83a0b2964d0, rename tenant to project
INFO  [alembic.runtime.migration] Running upgrade kilo -> c40fbb377ad, Initial Liberty no-op script.
INFO  [alembic.runtime.migration] Running upgrade c40fbb377ad -> 4b47ea298795, add reject rule
INFO  [alembic.runtime.migration] Running upgrade 4b47ea298795 -> d6a12e637e28, neutron-fwaas v2.0
  OK
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
  Running upgrade for neutron-lbaas ...
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
INFO  [alembic.runtime.migration] Running upgrade  -> start_neutron_lbaas, start neutron-lbaas chain
INFO  [alembic.runtime.migration] Running upgrade start_neutron_lbaas -> lbaasv2, lbaas version 2 api
INFO  [alembic.runtime.migration] Running upgrade lbaasv2 -> 4deef6d81931, add provisioning and operating statuses
INFO  [alembic.runtime.migration] Running upgrade 4deef6d81931 -> 4b6d8d5310b8, add_index_tenant_id
INFO  [alembic.runtime.migration] Running upgrade 4b6d8d5310b8 -> 364f9b6064f0, agentv2
INFO  [alembic.runtime.migration] Running upgrade 364f9b6064f0 -> lbaasv2_tls, lbaasv2 TLS
INFO  [alembic.runtime.migration] Running upgrade lbaasv2_tls -> 4ba00375f715, edge_driver
INFO  [alembic.runtime.migration] Running upgrade 4ba00375f715 -> kilo, kilo
INFO  [alembic.runtime.migration] Running upgrade kilo -> 3345facd0452, Initial Liberty no-op expand script.
INFO  [alembic.runtime.migration] Running upgrade 3345facd0452 -> 4a408dd491c2, Addition of Name column to lbaas_members and lbaas_healthmonitors table
INFO  [alembic.runtime.migration] Running upgrade 4a408dd491c2 -> 3426acbc12de, Add flavor id
INFO  [alembic.runtime.migration] Running upgrade 3426acbc12de -> 6aee0434f911, independent pools
INFO  [alembic.runtime.migration] Running upgrade 6aee0434f911 -> 3543deab1547, add_l7_tables
INFO  [alembic.runtime.migration] Running upgrade 3543deab1547 -> 62deca5010cd, Add tenant-id index for L7 tables
INFO  [alembic.runtime.migration] Running upgrade kilo -> 130ebfdef43, Initial Liberty no-op contract revision.
INFO  [alembic.runtime.migration] Running upgrade 130ebfdef43 -> 4b4dc6d5d843, rename tenant to project
INFO  [alembic.runtime.migration] Running upgrade 4b4dc6d5d843 -> e6417a8b114d, Drop v1 tables
INFO  [alembic.runtime.migration] Running upgrade 62deca5010cd -> 844352f9fe6f, Add healthmonitor max retries down
  OK
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
  Running upgrade for neutron-vpnaas ...
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
INFO  [alembic.runtime.migration] Running upgrade  -> start_neutron_vpnaas, start neutron-vpnaas chain
INFO  [alembic.runtime.migration] Running upgrade start_neutron_vpnaas -> 3ea02b2a773e, add_index_tenant_id
INFO  [alembic.runtime.migration] Running upgrade 3ea02b2a773e -> kilo, kilo
INFO  [alembic.runtime.migration] Running upgrade kilo -> 30018084ed99, Initial no-op Liberty expand rule.
INFO  [alembic.runtime.migration] Running upgrade 30018084ed99 -> 24f28869838b, Add fields to VPN service table
INFO  [alembic.runtime.migration] Running upgrade 24f28869838b -> 41b509d10b5e, VPNaaS endpoint groups
INFO  [alembic.runtime.migration] Running upgrade 41b509d10b5e -> 28ee739a7e4b, Multiple local subnets
INFO  [alembic.runtime.migration] Running upgrade 28ee739a7e4b -> fe637dc3f042, support sha256
INFO  [alembic.runtime.migration] Running upgrade fe637dc3f042 -> 52783a36bd67, support local id
INFO  [alembic.runtime.migration] Running upgrade 52783a36bd67 -> 38893903cbde, add_auth_algorithm_sha384_and_sha512
INFO  [alembic.runtime.migration] Running upgrade kilo -> 56893333aa52, fix identifier map fk
INFO  [alembic.runtime.migration] Running upgrade 56893333aa52 -> 333dfd6afaa2, Populate VPN service table fields
INFO  [alembic.runtime.migration] Running upgrade 333dfd6afaa2 -> 2c82e782d734, drop_tenant_id_in_cisco_csr_identifier_map
INFO  [alembic.runtime.migration] Running upgrade 2c82e782d734 -> 2cb4ee992b41, Multiple local subnets
INFO  [alembic.runtime.migration] Running upgrade 2cb4ee992b41 -> b6a2519ab7dc, rename tenant to project
  OK
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
  Running upgrade for neutron-fwaas ...
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
  OK
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
  Running upgrade for neutron-lbaas ...
INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
  OK

Done


Cleaning UP Neutron Logs before starting Neutron

ls: cannot access /var/log/neutron/*.log: No such file or directory

Done

Starting Neutron
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-ovs-cleanup.service to /usr/lib/systemd/system/neutron-ovs-cleanup.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-server.service to /usr/lib/systemd/system/neutron-server.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-dhcp-agent.service to /usr/lib/systemd/system/neutron-dhcp-agent.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-l3-agent.service to /usr/lib/systemd/system/neutron-l3-agent.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-lbaasv2-agent.service to /usr/lib/systemd/system/neutron-lbaasv2-agent.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-metadata-agent.service to /usr/lib/systemd/system/neutron-metadata-agent.service.
Removed symlink /etc/systemd/system/multi-user.target.wants/neutron-l3-agent.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-vpn-agent.service to /usr/lib/systemd/system/neutron-vpn-agent.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-metering-agent.service to /usr/lib/systemd/system/neutron-metering-agent.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/neutron-openvswitch-agent.service to /usr/lib/systemd/system/neutron-openvswitch-agent.service.
Done

Sleeping 10 seconds

Let's continue


Sleeping another 10 seconds

iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Let's continue

Neutron Installed and Configured

OPENSTACK NEUTRON INSTALLED

Installing OPENSTACK NOVA

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Installing Nova Packages

Nova in Controller or ALL-IN-ONE server

Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-cinderclient-1.11.0-1.el7.noarch already installed and latest version
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Package mod_wsgi-3.4-12.el7_0.x86_64 already installed and latest version
Package httpd-2.4.6-45.el7.centos.4.x86_64 already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-nova-api.noarch 1:15.0.3-2.el7 will be installed
---> Package openstack-nova-common.noarch 1:15.0.3-2.el7 will be installed
--> Processing Dependency: python-nova = 1:15.0.3-2.el7 for package: 1:openstack-nova-common-15.0.3-2.el7.noarch
---> Package openstack-nova-compute.noarch 1:15.0.3-2.el7 will be installed
--> Processing Dependency: ipmitool for package: 1:openstack-nova-compute-15.0.3-2.el7.noarch
---> Package openstack-nova-conductor.noarch 1:15.0.3-2.el7 will be installed
---> Package openstack-nova-console.noarch 1:15.0.3-2.el7 will be installed
---> Package openstack-nova-novncproxy.noarch 1:15.0.3-2.el7 will be installed
--> Processing Dependency: novnc for package: 1:openstack-nova-novncproxy-15.0.3-2.el7.noarch
---> Package openstack-nova-placement-api.noarch 1:15.0.3-2.el7 will be installed
---> Package openstack-nova-scheduler.noarch 1:15.0.3-2.el7 will be installed
---> Package openstack-nova-spicehtml5proxy.noarch 1:15.0.3-2.el7 will be installed
--> Running transaction check
---> Package ipmitool.x86_64 0:1.8.15-7.el7 will be installed
--> Processing Dependency: OpenIPMI-modalias for package: ipmitool-1.8.15-7.el7.x86_64
---> Package novnc.noarch 0:0.5.1-2.el7 will be installed
---> Package python-nova.noarch 1:15.0.3-2.el7 will be installed
--> Processing Dependency: python-os-vif >= 1.4.0 for package: 1:python-nova-15.0.3-2.el7.noarch
--> Processing Dependency: python-microversion-parse >= 0.1.2 for package: 1:python-nova-15.0.3-2.el7.noarch
--> Running transaction check
---> Package OpenIPMI-modalias.x86_64 0:2.0.19-15.el7 will be installed
---> Package python2-microversion-parse.noarch 0:0.1.4-1.el7 will be installed
---> Package python2-os-vif.noarch 0:1.4.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                     Arch   Version        Repository              Size
================================================================================
Installing:
 openstack-nova-api          noarch 1:15.0.3-2.el7 centos-openstack-ocata 6.6 k
 openstack-nova-common       noarch 1:15.0.3-2.el7 centos-openstack-ocata 530 k
 openstack-nova-compute      noarch 1:15.0.3-2.el7 centos-openstack-ocata 8.5 k
 openstack-nova-conductor    noarch 1:15.0.3-2.el7 centos-openstack-ocata 5.2 k
 openstack-nova-console      noarch 1:15.0.3-2.el7 centos-openstack-ocata 6.2 k
 openstack-nova-novncproxy   noarch 1:15.0.3-2.el7 centos-openstack-ocata 5.7 k
 openstack-nova-placement-api
                             noarch 1:15.0.3-2.el7 centos-openstack-ocata 5.4 k
 openstack-nova-scheduler    noarch 1:15.0.3-2.el7 centos-openstack-ocata 5.2 k
 openstack-nova-spicehtml5proxy
                             noarch 1:15.0.3-2.el7 centos-openstack-ocata 5.3 k
Installing for dependencies:
 OpenIPMI-modalias           x86_64 2.0.19-15.el7  base                    15 k
 ipmitool                    x86_64 1.8.15-7.el7   base                   401 k
 novnc                       noarch 0.5.1-2.el7    centos-openstack-ocata 176 k
 python-nova                 noarch 1:15.0.3-2.el7 centos-openstack-ocata 3.1 M
 python2-microversion-parse  noarch 0.1.4-1.el7    centos-openstack-ocata  16 k
 python2-os-vif              noarch 1.4.0-1.el7    centos-openstack-ocata  56 k

Transaction Summary
================================================================================
Install  9 Packages (+6 Dependent packages)

Total download size: 4.3 M
Installed size: 18 M
Downloading packages:
(1/15): OpenIPMI-modalias-2.0.19-15.el7.x86_64.rpm         |  15 kB   00:00     
(2/15): ipmitool-1.8.15-7.el7.x86_64.rpm                   | 401 kB   00:00     
(3/15): openstack-nova-api-15.0.3-2.el7.noarch.rpm         | 6.6 kB   00:01     
(4/15): novnc-0.5.1-2.el7.noarch.rpm                       | 176 kB   00:01     
(5/15): openstack-nova-compute-15.0.3-2.el7.noarch.rpm     | 8.5 kB   00:00     
(6/15): openstack-nova-conductor-15.0.3-2.el7.noarch.rpm   | 5.2 kB   00:00     
(7/15): openstack-nova-common-15.0.3-2.el7.noarch.rpm      | 530 kB   00:00     
(8/15): openstack-nova-console-15.0.3-2.el7.noarch.rpm     | 6.2 kB   00:00     
(9/15): openstack-nova-novncproxy-15.0.3-2.el7.noarch.rpm  | 5.7 kB   00:00     
(10/15): openstack-nova-placement-api-15.0.3-2.el7.noarch. | 5.4 kB   00:00     
(11/15): openstack-nova-scheduler-15.0.3-2.el7.noarch.rpm  | 5.2 kB   00:00     
(12/15): openstack-nova-spicehtml5proxy-15.0.3-2.el7.noarc | 5.3 kB   00:00     
(13/15): python2-microversion-parse-0.1.4-1.el7.noarch.rpm |  16 kB   00:00     
(14/15): python2-os-vif-1.4.0-1.el7.noarch.rpm             |  56 kB   00:00     
(15/15): python-nova-15.0.3-2.el7.noarch.rpm               | 3.1 MB   00:00     
--------------------------------------------------------------------------------
Total                                              2.0 MB/s | 4.3 MB  00:02     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : novnc-0.5.1-2.el7.noarch                                    1/15 
  Installing : python2-os-vif-1.4.0-1.el7.noarch                           2/15 
  Installing : python2-microversion-parse-0.1.4-1.el7.noarch               3/15 
  Installing : 1:python-nova-15.0.3-2.el7.noarch                           4/15 
  Installing : 1:openstack-nova-common-15.0.3-2.el7.noarch                 5/15 
  Installing : OpenIPMI-modalias-2.0.19-15.el7.x86_64                      6/15 
  Installing : ipmitool-1.8.15-7.el7.x86_64                                7/15 
  Installing : 1:openstack-nova-compute-15.0.3-2.el7.noarch                8/15 
  Installing : 1:openstack-nova-placement-api-15.0.3-2.el7.noarch          9/15 
  Installing : 1:openstack-nova-conductor-15.0.3-2.el7.noarch             10/15 
  Installing : 1:openstack-nova-novncproxy-15.0.3-2.el7.noarch            11/15 
  Installing : 1:openstack-nova-api-15.0.3-2.el7.noarch                   12/15 
  Installing : 1:openstack-nova-scheduler-15.0.3-2.el7.noarch             13/15 
  Installing : 1:openstack-nova-spicehtml5proxy-15.0.3-2.el7.noarch       14/15 
  Installing : 1:openstack-nova-console-15.0.3-2.el7.noarch               15/15 
  Verifying  : 1:openstack-nova-placement-api-15.0.3-2.el7.noarch          1/15 
  Verifying  : OpenIPMI-modalias-2.0.19-15.el7.x86_64                      2/15 
  Verifying  : ipmitool-1.8.15-7.el7.x86_64                                3/15 
  Verifying  : 1:openstack-nova-common-15.0.3-2.el7.noarch                 4/15 
  Verifying  : 1:openstack-nova-conductor-15.0.3-2.el7.noarch              5/15 
  Verifying  : python2-microversion-parse-0.1.4-1.el7.noarch               6/15 
  Verifying  : 1:openstack-nova-novncproxy-15.0.3-2.el7.noarch             7/15 
  Verifying  : 1:openstack-nova-api-15.0.3-2.el7.noarch                    8/15 
  Verifying  : python2-os-vif-1.4.0-1.el7.noarch                           9/15 
  Verifying  : novnc-0.5.1-2.el7.noarch                                   10/15 
  Verifying  : 1:openstack-nova-scheduler-15.0.3-2.el7.noarch             11/15 
  Verifying  : 1:openstack-nova-spicehtml5proxy-15.0.3-2.el7.noarch       12/15 
  Verifying  : 1:openstack-nova-compute-15.0.3-2.el7.noarch               13/15 
  Verifying  : 1:python-nova-15.0.3-2.el7.noarch                          14/15 
  Verifying  : 1:openstack-nova-console-15.0.3-2.el7.noarch               15/15 

Installed:
  openstack-nova-api.noarch 1:15.0.3-2.el7                                      
  openstack-nova-common.noarch 1:15.0.3-2.el7                                   
  openstack-nova-compute.noarch 1:15.0.3-2.el7                                  
  openstack-nova-conductor.noarch 1:15.0.3-2.el7                                
  openstack-nova-console.noarch 1:15.0.3-2.el7                                  
  openstack-nova-novncproxy.noarch 1:15.0.3-2.el7                               
  openstack-nova-placement-api.noarch 1:15.0.3-2.el7                            
  openstack-nova-scheduler.noarch 1:15.0.3-2.el7                                
  openstack-nova-spicehtml5proxy.noarch 1:15.0.3-2.el7                          

Dependency Installed:
  OpenIPMI-modalias.x86_64 0:2.0.19-15.el7                                      
  ipmitool.x86_64 0:1.8.15-7.el7                                                
  novnc.noarch 0:0.5.1-2.el7                                                    
  python-nova.noarch 1:15.0.3-2.el7                                             
  python2-microversion-parse.noarch 0:0.1.4-1.el7                               
  python2-os-vif.noarch 0:1.4.0-1.el7                                           

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package spice-html5-0.1.7-1.el7.noarch already installed and latest version
Nothing to do
Ready


Applying IPTABLES rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]

Ready

Configuring NOVA
Option "notification_driver" from group "DEFAULT" is deprecated. Use option "driver" from group "oslo_messaging_notifications".
Option "notification_driver" from group "DEFAULT" is deprecated. Use option "driver" from group "oslo_messaging_notifications".
Option "notification_driver" from group "DEFAULT" is deprecated. Use option "driver" from group "oslo_messaging_notifications".
b2ef12e2-588b-4786-b590-e23acbfb191b
Option "notification_driver" from group "DEFAULT" is deprecated. Use option "driver" from group "oslo_messaging_notifications".
/usr/lib/python2.7/site-packages/pymysql/cursors.py:166: Warning: (1831, u'Duplicate index `block_device_mapping_instance_uuid_virtual_name_device_name_idx`. This is deprecated and will be disallowed in a future release.')
  result = self._query(query)
/usr/lib/python2.7/site-packages/pymysql/cursors.py:166: Warning: (1831, u'Duplicate index `uniq_instances0uuid`. This is deprecated and will be disallowed in a future release.')
  result = self._query(query)
Option "notification_driver" from group "DEFAULT" is deprecated. Use option "driver" from group "oslo_messaging_notifications".
+-------+--------------------------------------+
|  Name |                 UUID                 |
+-------+--------------------------------------+
| cell0 | 00000000-0000-0000-0000-000000000000 |
| cell1 | b2ef12e2-588b-4786-b590-e23acbfb191b |
+-------+--------------------------------------+
Done

Cleaning UP App logs
Done

Starting Nova
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-nova-api.service to /usr/lib/systemd/system/openstack-nova-api.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-nova-scheduler.service to /usr/lib/systemd/system/openstack-nova-scheduler.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-nova-conductor.service to /usr/lib/systemd/system/openstack-nova-conductor.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-nova-consoleauth.service to /usr/lib/systemd/system/openstack-nova-consoleauth.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-nova-novncproxy.service to /usr/lib/systemd/system/openstack-nova-novncproxy.service.

Ready

ALERT !!.. PLEASE READ CAREFULLY (THIS MESSAGE WILL BE ON SCREEN FOR 20 SECONDS)
For any additional COMPUTE NODE you add in your OpenStack deployment, please
run the following command IN YOUR NOVA CONTROLLER NODE:
su -s /bin/sh -c "nova-manage cell_v2 discover_hosts --verbose" nova


Sleeping 10 seconds

iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]

Let's continue


Creating VM's security groups
Ports: ssh, rdp and ICMP


Connection failure that may be retried.
Connection failure that may be retried.
Connection failure that may be retried.
Connection failure that may be retried.
Done


Creating Access to port 25 tcp
Connection failure that may be retried.
Connection failure that may be retried.

Creating Access to port 53 tcp
Connection failure that may be retried.
Connection failure that may be retried.

Creating Access to port 80 tcp
Connection failure that may be retried.
Connection failure that may be retried.

Creating Access to port 110 tcp
Connection failure that may be retried.
Connection failure that may be retried.

Creating Access to port 143 tcp
Connection failure that may be retried.
Connection failure that may be retried.

Creating Access to port 443 tcp
Connection failure that may be retried.
Connection failure that may be retried.

Creating Access to port 53 udp
Connection failure that may be retried.
Connection failure that may be retried.

Nova installed and configured

OPENSTACK NOVA INSTALLED

Installing OPENSTACK CEILOMETER

Database Process OK. Let's continue


Keystone Process OK. Let's continue


Installing Ceilometer Packages

ALL-IN-ONE or Controller Packages

Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-ceilometerclient-2.8.1-1.el7.noarch already installed and latest version
Package 1:python-ceilometer-8.0.1-1.el7.noarch already installed and latest version
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-ceilometer-central.noarch 1:8.0.1-1.el7 will be installed
--> Processing Dependency: openstack-ceilometer-polling = 1:8.0.1-1.el7 for package: 1:openstack-ceilometer-central-8.0.1-1.el7.noarch
---> Package openstack-ceilometer-collector.noarch 1:8.0.1-1.el7 will be installed
---> Package openstack-ceilometer-common.noarch 1:8.0.1-1.el7 will be installed
---> Package openstack-ceilometer-compute.noarch 1:8.0.1-1.el7 will be installed
---> Package openstack-ceilometer-notification.noarch 1:8.0.1-1.el7 will be installed
---> Package python-ceilometerclient-doc.noarch 0:2.8.1-1.el7 will be installed
--> Running transaction check
---> Package openstack-ceilometer-polling.noarch 1:8.0.1-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                      Arch   Version       Repository              Size
================================================================================
Installing:
 openstack-ceilometer-central noarch 1:8.0.1-1.el7 centos-openstack-ocata 4.3 k
 openstack-ceilometer-collector
                              noarch 1:8.0.1-1.el7 centos-openstack-ocata 4.6 k
 openstack-ceilometer-common  noarch 1:8.0.1-1.el7 centos-openstack-ocata  57 k
 openstack-ceilometer-compute noarch 1:8.0.1-1.el7 centos-openstack-ocata 4.3 k
 openstack-ceilometer-notification
                              noarch 1:8.0.1-1.el7 centos-openstack-ocata 8.7 k
 python-ceilometerclient-doc  noarch 2.8.1-1.el7   centos-openstack-ocata  97 k
Installing for dependencies:
 openstack-ceilometer-polling noarch 1:8.0.1-1.el7 centos-openstack-ocata 4.9 k

Transaction Summary
================================================================================
Install  6 Packages (+1 Dependent package)

Total download size: 181 k
Installed size: 626 k
Downloading packages:
(1/7): openstack-ceilometer-collector-8.0.1-1.el7.noarch.r | 4.6 kB   00:00     
(2/7): openstack-ceilometer-common-8.0.1-1.el7.noarch.rpm  |  57 kB   00:00     
(3/7): openstack-ceilometer-compute-8.0.1-1.el7.noarch.rpm | 4.3 kB   00:00     
(4/7): openstack-ceilometer-central-8.0.1-1.el7.noarch.rpm | 4.3 kB   00:00     
(5/7): openstack-ceilometer-polling-8.0.1-1.el7.noarch.rpm | 4.9 kB   00:00     
(6/7): openstack-ceilometer-notification-8.0.1-1.el7.noarc | 8.7 kB   00:00     
(7/7): python-ceilometerclient-doc-2.8.1-1.el7.noarch.rpm  |  97 kB   00:00     
--------------------------------------------------------------------------------
Total                                              401 kB/s | 181 kB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:openstack-ceilometer-common-8.0.1-1.el7.noarch             1/7 
  Installing : 1:openstack-ceilometer-polling-8.0.1-1.el7.noarch            2/7 
  Installing : 1:openstack-ceilometer-notification-8.0.1-1.el7.noarch       3/7 
  Installing : 1:openstack-ceilometer-collector-8.0.1-1.el7.noarch          4/7 
  Installing : 1:openstack-ceilometer-compute-8.0.1-1.el7.noarch            5/7 
  Installing : 1:openstack-ceilometer-central-8.0.1-1.el7.noarch            6/7 
  Installing : python-ceilometerclient-doc-2.8.1-1.el7.noarch               7/7 
  Verifying  : 1:openstack-ceilometer-polling-8.0.1-1.el7.noarch            1/7 
  Verifying  : 1:openstack-ceilometer-collector-8.0.1-1.el7.noarch          2/7 
  Verifying  : 1:openstack-ceilometer-compute-8.0.1-1.el7.noarch            3/7 
  Verifying  : 1:openstack-ceilometer-common-8.0.1-1.el7.noarch             4/7 
  Verifying  : 1:openstack-ceilometer-central-8.0.1-1.el7.noarch            5/7 
  Verifying  : python-ceilometerclient-doc-2.8.1-1.el7.noarch               6/7 
  Verifying  : 1:openstack-ceilometer-notification-8.0.1-1.el7.noarch       7/7 

Installed:
  openstack-ceilometer-central.noarch 1:8.0.1-1.el7                             
  openstack-ceilometer-collector.noarch 1:8.0.1-1.el7                           
  openstack-ceilometer-common.noarch 1:8.0.1-1.el7                              
  openstack-ceilometer-compute.noarch 1:8.0.1-1.el7                             
  openstack-ceilometer-notification.noarch 1:8.0.1-1.el7                        
  python-ceilometerclient-doc.noarch 0:2.8.1-1.el7                              

Dependency Installed:
  openstack-ceilometer-polling.noarch 1:8.0.1-1.el7                             

Complete!

Gnocchi packages (ALL-IN-ONE of Controller Packages)

Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package openstack-gnocchi-api.noarch 0:3.1.3-1.el7 will be installed
---> Package openstack-gnocchi-common.noarch 0:3.1.3-1.el7 will be installed
--> Processing Dependency: python-gnocchi = 3.1.3-1.el7 for package: openstack-gnocchi-common-3.1.3-1.el7.noarch
---> Package openstack-gnocchi-indexer-sqlalchemy.noarch 0:3.1.3-1.el7 will be installed
---> Package openstack-gnocchi-metricd.noarch 0:3.1.3-1.el7 will be installed
---> Package openstack-gnocchi-statsd.noarch 0:3.1.3-1.el7 will be installed
---> Package python2-gnocchiclient.noarch 0:3.1.0-1.el7 will be installed
--> Running transaction check
---> Package python-gnocchi.noarch 0:3.1.3-1.el7 will be installed
--> Processing Dependency: python-pytimeparse >= 1.1.5 for package: python-gnocchi-3.1.3-1.el7.noarch
--> Processing Dependency: python-pandas >= 0.18.0 for package: python-gnocchi-3.1.3-1.el7.noarch
--> Processing Dependency: python-oslo-sphinx >= 2.2.0 for package: python-gnocchi-3.1.3-1.el7.noarch
--> Processing Dependency: python-ujson for package: python-gnocchi-3.1.3-1.el7.noarch
--> Processing Dependency: python-trollius for package: python-gnocchi-3.1.3-1.el7.noarch
--> Processing Dependency: python-sysv_ipc for package: python-gnocchi-3.1.3-1.el7.noarch
--> Processing Dependency: python-sqlalchemy-utils for package: python-gnocchi-3.1.3-1.el7.noarch
--> Processing Dependency: python-lz4 for package: python-gnocchi-3.1.3-1.el7.noarch
--> Running transaction check
---> Package python-pytimeparse.noarch 0:1.1.5-1.el7 will be installed
---> Package python-sqlalchemy-utils.noarch 0:0.31.3-2.el7 will be installed
---> Package python-sysv_ipc.x86_64 0:0.4.2-11.el7 will be installed
---> Package python-trollius.noarch 0:2.0-3.el7 will be installed
---> Package python2-lz4.x86_64 0:0.9.0-1.el7 will be installed
--> Processing Dependency: liblz4.so.1()(64bit) for package: python2-lz4-0.9.0-1.el7.x86_64
---> Package python2-oslo-sphinx.noarch 0:4.10.0-1.el7 will be installed
--> Processing Dependency: git for package: python2-oslo-sphinx-4.10.0-1.el7.noarch
---> Package python2-pandas.x86_64 0:0.19.1-2.el7.2 will be installed
--> Processing Dependency: python2-numexpr for package: python2-pandas-0.19.1-2.el7.2.x86_64
--> Processing Dependency: python2-matplotlib for package: python2-pandas-0.19.1-2.el7.2.x86_64
--> Processing Dependency: python-tables for package: python2-pandas-0.19.1-2.el7.2.x86_64
--> Processing Dependency: python-Bottleneck for package: python2-pandas-0.19.1-2.el7.2.x86_64
---> Package python2-ujson.x86_64 0:1.35-1.el7 will be installed
--> Running transaction check
---> Package git.x86_64 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: perl-Git = 1.8.3.1-6.el7_2.1 for package: git-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Term::ReadKey) for package: git-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git) for package: git-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Error) for package: git-1.8.3.1-6.el7_2.1.x86_64
---> Package lz4.x86_64 0:1.7.3-1.el7 will be installed
---> Package python-Bottleneck.x86_64 0:0.7.0-1.el7 will be installed
---> Package python-tables.x86_64 0:3.2.0-1.el7 will be installed
--> Processing Dependency: libhdf5.so.8()(64bit) for package: python-tables-3.2.0-1.el7.x86_64
--> Processing Dependency: libblosc.so.1()(64bit) for package: python-tables-3.2.0-1.el7.x86_64
---> Package python2-matplotlib.x86_64 0:2.0.0-1.el7 will be installed
--> Processing Dependency: python2-matplotlib-tk(x86-64) = 2.0.0-1.el7 for package: python2-matplotlib-2.0.0-1.el7.x86_64
--> Processing Dependency: python-matplotlib-data = 2.0.0-1.el7 for package: python2-matplotlib-2.0.0-1.el7.x86_64
--> Processing Dependency: python2-cycler >= 0.10.0 for package: python2-matplotlib-2.0.0-1.el7.x86_64
--> Processing Dependency: python2-functools32 for package: python2-matplotlib-2.0.0-1.el7.x86_64
--> Processing Dependency: python-subprocess32 for package: python2-matplotlib-2.0.0-1.el7.x86_64
--> Processing Dependency: dvipng for package: python2-matplotlib-2.0.0-1.el7.x86_64
--> Processing Dependency: libqhull.so.7()(64bit) for package: python2-matplotlib-2.0.0-1.el7.x86_64
---> Package python2-numexpr.x86_64 0:2.6.1-3.el7 will be installed
--> Running transaction check
---> Package blosc.x86_64 0:1.6.1-1.el7 will be installed
---> Package hdf5.x86_64 0:1.8.13-7.el7 will be installed
---> Package libqhull.x86_64 0:2015.2-1.el7 will be installed
---> Package perl-Error.noarch 1:0.17020-2.el7 will be installed
---> Package perl-Git.noarch 0:1.8.3.1-6.el7_2.1 will be installed
---> Package perl-TermReadKey.x86_64 0:2.30-20.el7 will be installed
---> Package python-matplotlib-data.noarch 0:2.0.0-1.el7 will be installed
--> Processing Dependency: python-matplotlib-data-fonts = 2.0.0-1.el7 for package: python-matplotlib-data-2.0.0-1.el7.noarch
---> Package python-subprocess32.x86_64 0:3.2.6-4.el7 will be installed
---> Package python2-cycler.noarch 0:0.10.0-2.el7 will be installed
---> Package python2-functools32.noarch 0:3.2.3.2-1.el7 will be installed
---> Package python2-matplotlib-tk.x86_64 0:2.0.0-1.el7 will be installed
---> Package texlive-dvipng-bin.x86_64 2:svn26509.0-38.20130427_r30134.el7 will be installed
--> Processing Dependency: texlive-kpathsea-lib = 2:2012-38.20130427_r30134.el7 for package: 2:texlive-dvipng-bin-svn26509.0-38.20130427_r30134.el7.x86_64
--> Processing Dependency: texlive-base for package: 2:texlive-dvipng-bin-svn26509.0-38.20130427_r30134.el7.x86_64
--> Processing Dependency: tex-dvipng for package: 2:texlive-dvipng-bin-svn26509.0-38.20130427_r30134.el7.x86_64
--> Processing Dependency: libt1.so.5()(64bit) for package: 2:texlive-dvipng-bin-svn26509.0-38.20130427_r30134.el7.x86_64
--> Processing Dependency: libkpathsea.so.6()(64bit) for package: 2:texlive-dvipng-bin-svn26509.0-38.20130427_r30134.el7.x86_64
--> Running transaction check
---> Package python-matplotlib-data-fonts.noarch 0:2.0.0-1.el7 will be installed
---> Package t1lib.x86_64 0:5.1.2-14.el7 will be installed
---> Package texlive-base.noarch 2:2012-38.20130427_r30134.el7 will be installed
---> Package texlive-dvipng.noarch 2:svn26689.1.14-38.el7 will be installed
--> Processing Dependency: texlive-kpathsea-bin for package: 2:texlive-dvipng-svn26689.1.14-38.el7.noarch
--> Processing Dependency: tex-kpathsea for package: 2:texlive-dvipng-svn26689.1.14-38.el7.noarch
---> Package texlive-kpathsea-lib.x86_64 2:2012-38.20130427_r30134.el7 will be installed
--> Running transaction check
---> Package texlive-kpathsea.noarch 2:svn28792.0-38.el7 will be installed
---> Package texlive-kpathsea-bin.x86_64 2:svn27347.0-38.20130427_r30134.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                  Arch   Version           Repository              Size
================================================================================
Installing:
 openstack-gnocchi-api    noarch 3.1.3-1.el7       centos-openstack-ocata 4.8 k
 openstack-gnocchi-common noarch 3.1.3-1.el7       centos-openstack-ocata  10 k
 openstack-gnocchi-indexer-sqlalchemy
                          noarch 3.1.3-1.el7       centos-openstack-ocata 3.3 k
 openstack-gnocchi-metricd
                          noarch 3.1.3-1.el7       centos-openstack-ocata 4.1 k
 openstack-gnocchi-statsd noarch 3.1.3-1.el7       centos-openstack-ocata 4.1 k
 python2-gnocchiclient    noarch 3.1.0-1.el7       centos-openstack-ocata  66 k
Installing for dependencies:
 blosc                    x86_64 1.6.1-1.el7       epel                    34 k
 git                      x86_64 1.8.3.1-6.el7_2.1 base                   4.4 M
 hdf5                     x86_64 1.8.13-7.el7      centos-openstack-ocata 1.6 M
 libqhull                 x86_64 2015.2-1.el7      centos-openstack-ocata 159 k
 lz4                      x86_64 1.7.3-1.el7       epel                    82 k
 perl-Error               noarch 1:0.17020-2.el7   base                    32 k
 perl-Git                 noarch 1.8.3.1-6.el7_2.1 base                    53 k
 perl-TermReadKey         x86_64 2.30-20.el7       base                    31 k
 python-Bottleneck        x86_64 0.7.0-1.el7       epel                   864 k
 python-gnocchi           noarch 3.1.3-1.el7       centos-openstack-ocata 214 k
 python-matplotlib-data   noarch 2.0.0-1.el7       centos-openstack-ocata 2.1 M
 python-matplotlib-data-fonts
                          noarch 2.0.0-1.el7       centos-openstack-ocata 2.4 M
 python-pytimeparse       noarch 1.1.5-1.el7       centos-openstack-ocata  16 k
 python-sqlalchemy-utils  noarch 0.31.3-2.el7      centos-openstack-ocata 124 k
 python-subprocess32      x86_64 3.2.6-4.el7       centos-openstack-ocata  45 k
 python-sysv_ipc          x86_64 0.4.2-11.el7      centos-openstack-ocata  35 k
 python-tables            x86_64 3.2.0-1.el7       epel                   1.2 M
 python-trollius          noarch 2.0-3.el7         centos-openstack-ocata 211 k
 python2-cycler           noarch 0.10.0-2.el7      centos-openstack-ocata  15 k
 python2-functools32      noarch 3.2.3.2-1.el7     centos-openstack-ocata  24 k
 python2-lz4              x86_64 0.9.0-1.el7       centos-openstack-ocata  28 k
 python2-matplotlib       x86_64 2.0.0-1.el7       centos-openstack-ocata 3.0 M
 python2-matplotlib-tk    x86_64 2.0.0-1.el7       centos-openstack-ocata  58 k
 python2-numexpr          x86_64 2.6.1-3.el7       centos-openstack-ocata 331 k
 python2-oslo-sphinx      noarch 4.10.0-1.el7      centos-openstack-ocata  31 k
 python2-pandas           x86_64 0.19.1-2.el7.2    centos-openstack-ocata 7.9 M
 python2-ujson            x86_64 1.35-1.el7        centos-openstack-ocata  28 k
 t1lib                    x86_64 5.1.2-14.el7      base                   166 k
 texlive-base             noarch 2:2012-38.20130427_r30134.el7
                                                   base                   325 k
 texlive-dvipng           noarch 2:svn26689.1.14-38.el7
                                                   base                    44 k
 texlive-dvipng-bin       x86_64 2:svn26509.0-38.20130427_r30134.el7
                                                   base                    63 k
 texlive-kpathsea         noarch 2:svn28792.0-38.el7
                                                   base                   140 k
 texlive-kpathsea-bin     x86_64 2:svn27347.0-38.20130427_r30134.el7
                                                   base                    40 k
 texlive-kpathsea-lib     x86_64 2:2012-38.20130427_r30134.el7
                                                   base                    78 k

Transaction Summary
================================================================================
Install  6 Packages (+34 Dependent packages)

Total download size: 26 M
Installed size: 120 M
Downloading packages:
(1/40): libqhull-2015.2-1.el7.x86_64.rpm                   | 159 kB   00:00     
(2/40): blosc-1.6.1-1.el7.x86_64.rpm                       |  34 kB   00:00     
(3/40): openstack-gnocchi-api-3.1.3-1.el7.noarch.rpm       | 4.8 kB   00:00     
(4/40): lz4-1.7.3-1.el7.x86_64.rpm                         |  82 kB   00:00     
(5/40): hdf5-1.8.13-7.el7.x86_64.rpm                       | 1.6 MB   00:00     
(6/40): openstack-gnocchi-common-3.1.3-1.el7.noarch.rpm    |  10 kB   00:00     
(7/40): openstack-gnocchi-indexer-sqlalchemy-3.1.3-1.el7.n | 3.3 kB   00:00     
(8/40): openstack-gnocchi-metricd-3.1.3-1.el7.noarch.rpm   | 4.1 kB   00:00     
(9/40): perl-Error-0.17020-2.el7.noarch.rpm                |  32 kB   00:00     
(10/40): openstack-gnocchi-statsd-3.1.3-1.el7.noarch.rpm   | 4.1 kB   00:00     
(11/40): perl-TermReadKey-2.30-20.el7.x86_64.rpm           |  31 kB   00:00     
(12/40): python-gnocchi-3.1.3-1.el7.noarch.rpm             | 214 kB   00:00     
(13/40): python-Bottleneck-0.7.0-1.el7.x86_64.rpm          | 864 kB   00:00     
(14/40): perl-Git-1.8.3.1-6.el7_2.1.noarch.rpm             |  53 kB   00:00     
(15/40): python-matplotlib-data-fonts-2.0.0-1.el7.noarch.r | 2.4 MB   00:00     
(16/40): python-matplotlib-data-2.0.0-1.el7.noarch.rpm     | 2.1 MB   00:00     
(17/40): python-pytimeparse-1.1.5-1.el7.noarch.rpm         |  16 kB   00:00     
(18/40): python-sqlalchemy-utils-0.31.3-2.el7.noarch.rpm   | 124 kB   00:00     
(19/40): python-subprocess32-3.2.6-4.el7.x86_64.rpm        |  45 kB   00:00     
(20/40): python-sysv_ipc-0.4.2-11.el7.x86_64.rpm           |  35 kB   00:00     
(21/40): python2-cycler-0.10.0-2.el7.noarch.rpm            |  15 kB   00:00     
(22/40): python-trollius-2.0-3.el7.noarch.rpm              | 211 kB   00:00     
(23/40): python2-functools32-3.2.3.2-1.el7.noarch.rpm      |  24 kB   00:00     
(24/40): python-tables-3.2.0-1.el7.x86_64.rpm              | 1.2 MB   00:00     
(25/40): python2-gnocchiclient-3.1.0-1.el7.noarch.rpm      |  66 kB   00:00     
(26/40): python2-lz4-0.9.0-1.el7.x86_64.rpm                |  28 kB   00:00     
(27/40): python2-matplotlib-tk-2.0.0-1.el7.x86_64.rpm      |  58 kB   00:00     
(28/40): python2-numexpr-2.6.1-3.el7.x86_64.rpm            | 331 kB   00:00     
(29/40): git-1.8.3.1-6.el7_2.1.x86_64.rpm                  | 4.4 MB   00:01     
(30/40): python2-oslo-sphinx-4.10.0-1.el7.noarch.rpm       |  31 kB   00:00     
(31/40): python2-matplotlib-2.0.0-1.el7.x86_64.rpm         | 3.0 MB   00:00     
(32/40): t1lib-5.1.2-14.el7.x86_64.rpm                     | 166 kB   00:00     
(33/40): python2-ujson-1.35-1.el7.x86_64.rpm               |  28 kB   00:00     
(34/40): texlive-dvipng-bin-svn26509.0-38.20130427_r30134. |  63 kB   00:00     
(35/40): texlive-kpathsea-bin-svn27347.0-38.20130427_r3013 |  40 kB   00:00     
(36/40): texlive-base-2012-38.20130427_r30134.el7.noarch.r | 325 kB   00:00     
(37/40): texlive-dvipng-svn26689.1.14-38.el7.noarch.rpm    |  44 kB   00:00     
(38/40): texlive-kpathsea-lib-2012-38.20130427_r30134.el7. |  78 kB   00:00     
(39/40): texlive-kpathsea-svn28792.0-38.el7.noarch.rpm     | 140 kB   00:00     
(40/40): python2-pandas-0.19.1-2.el7.2.x86_64.rpm          | 7.9 MB   00:00     
--------------------------------------------------------------------------------
Total                                              9.0 MB/s |  26 MB  00:02     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : python-matplotlib-data-fonts-2.0.0-1.el7.noarch             1/40 
  Installing : python-matplotlib-data-2.0.0-1.el7.noarch                   2/40 
  Installing : 2:texlive-base-2012-38.20130427_r30134.el7.noarch           3/40 
  Installing : lz4-1.7.3-1.el7.x86_64                                      4/40 
  Installing : python2-numexpr-2.6.1-3.el7.x86_64                          5/40 
  Installing : 1:perl-Error-0.17020-2.el7.noarch                           6/40 
  Installing : 2:texlive-kpathsea-lib-2012-38.20130427_r30134.el7.x86_6    7/40 
  Installing : 2:texlive-kpathsea-svn28792.0-38.el7.noarch                 8/40 
  Installing : 2:texlive-kpathsea-bin-svn27347.0-38.20130427_r30134.el7    9/40 
  Installing : blosc-1.6.1-1.el7.x86_64                                   10/40 
  Installing : python2-lz4-0.9.0-1.el7.x86_64                             11/40 
  Installing : python-sysv_ipc-0.4.2-11.el7.x86_64                        12/40 
  Installing : hdf5-1.8.13-7.el7.x86_64                                   13/40 
  Installing : python-tables-3.2.0-1.el7.x86_64                           14/40 
  Installing : python-subprocess32-3.2.6-4.el7.x86_64                     15/40 
  Installing : python2-functools32-3.2.3.2-1.el7.noarch                   16/40 
  Installing : t1lib-5.1.2-14.el7.x86_64                                  17/40 
  Installing : 2:texlive-dvipng-bin-svn26509.0-38.20130427_r30134.el7.x   18/40 
  Installing : 2:texlive-dvipng-svn26689.1.14-38.el7.noarch               19/40 
  Installing : python-pytimeparse-1.1.5-1.el7.noarch                      20/40 
  Installing : python2-ujson-1.35-1.el7.x86_64                            21/40 
  Installing : python-Bottleneck-0.7.0-1.el7.x86_64                       22/40 
  Installing : python2-cycler-0.10.0-2.el7.noarch                         23/40 
  Installing : libqhull-2015.2-1.el7.x86_64                               24/40 
  Installing : python2-matplotlib-tk-2.0.0-1.el7.x86_64                   25/40 
  Installing : python2-matplotlib-2.0.0-1.el7.x86_64                      26/40 
  Installing : python2-pandas-0.19.1-2.el7.2.x86_64                       27/40 
  Installing : perl-TermReadKey-2.30-20.el7.x86_64                        28/40 
  Installing : perl-Git-1.8.3.1-6.el7_2.1.noarch                          29/40 
  Installing : git-1.8.3.1-6.el7_2.1.x86_64                               30/40 
  Installing : python2-oslo-sphinx-4.10.0-1.el7.noarch                    31/40 
  Installing : python-sqlalchemy-utils-0.31.3-2.el7.noarch                32/40 
  Installing : python-trollius-2.0-3.el7.noarch                           33/40 
  Installing : python-gnocchi-3.1.3-1.el7.noarch                          34/40 
  Installing : openstack-gnocchi-common-3.1.3-1.el7.noarch                35/40 
  Installing : openstack-gnocchi-indexer-sqlalchemy-3.1.3-1.el7.noarch    36/40 
  Installing : openstack-gnocchi-api-3.1.3-1.el7.noarch                   37/40 
  Installing : openstack-gnocchi-metricd-3.1.3-1.el7.noarch               38/40 
  Installing : openstack-gnocchi-statsd-3.1.3-1.el7.noarch                39/40 
  Installing : python2-gnocchiclient-3.1.0-1.el7.noarch                   40/40 
  Verifying  : python-trollius-2.0-3.el7.noarch                            1/40 
  Verifying  : openstack-gnocchi-metricd-3.1.3-1.el7.noarch                2/40 
  Verifying  : python-sqlalchemy-utils-0.31.3-2.el7.noarch                 3/40 
  Verifying  : perl-TermReadKey-2.30-20.el7.x86_64                         4/40 
  Verifying  : python-matplotlib-data-2.0.0-1.el7.noarch                   5/40 
  Verifying  : 2:texlive-kpathsea-bin-svn27347.0-38.20130427_r30134.el7    6/40 
  Verifying  : libqhull-2015.2-1.el7.x86_64                                7/40 
  Verifying  : 2:texlive-kpathsea-svn28792.0-38.el7.noarch                 8/40 
  Verifying  : python2-cycler-0.10.0-2.el7.noarch                          9/40 
  Verifying  : python-Bottleneck-0.7.0-1.el7.x86_64                       10/40 
  Verifying  : python2-ujson-1.35-1.el7.x86_64                            11/40 
  Verifying  : python2-pandas-0.19.1-2.el7.2.x86_64                       12/40 
  Verifying  : blosc-1.6.1-1.el7.x86_64                                   13/40 
  Verifying  : 2:texlive-kpathsea-lib-2012-38.20130427_r30134.el7.x86_6   14/40 
  Verifying  : python-pytimeparse-1.1.5-1.el7.noarch                      15/40 
  Verifying  : 1:perl-Error-0.17020-2.el7.noarch                          16/40 
  Verifying  : openstack-gnocchi-indexer-sqlalchemy-3.1.3-1.el7.noarch    17/40 
  Verifying  : python-tables-3.2.0-1.el7.x86_64                           18/40 
  Verifying  : python-gnocchi-3.1.3-1.el7.noarch                          19/40 
  Verifying  : python2-oslo-sphinx-4.10.0-1.el7.noarch                    20/40 
  Verifying  : t1lib-5.1.2-14.el7.x86_64                                  21/40 
  Verifying  : perl-Git-1.8.3.1-6.el7_2.1.noarch                          22/40 
  Verifying  : python2-functools32-3.2.3.2-1.el7.noarch                   23/40 
  Verifying  : python-subprocess32-3.2.6-4.el7.x86_64                     24/40 
  Verifying  : python2-numexpr-2.6.1-3.el7.x86_64                         25/40 
  Verifying  : openstack-gnocchi-statsd-3.1.3-1.el7.noarch                26/40 
  Verifying  : python2-gnocchiclient-3.1.0-1.el7.noarch                   27/40 
  Verifying  : python-matplotlib-data-fonts-2.0.0-1.el7.noarch            28/40 
  Verifying  : lz4-1.7.3-1.el7.x86_64                                     29/40 
  Verifying  : python2-lz4-0.9.0-1.el7.x86_64                             30/40 
  Verifying  : 2:texlive-dvipng-bin-svn26509.0-38.20130427_r30134.el7.x   31/40 
  Verifying  : hdf5-1.8.13-7.el7.x86_64                                   32/40 
  Verifying  : 2:texlive-dvipng-svn26689.1.14-38.el7.noarch               33/40 
  Verifying  : openstack-gnocchi-api-3.1.3-1.el7.noarch                   34/40 
  Verifying  : openstack-gnocchi-common-3.1.3-1.el7.noarch                35/40 
  Verifying  : python2-matplotlib-2.0.0-1.el7.x86_64                      36/40 
  Verifying  : python2-matplotlib-tk-2.0.0-1.el7.x86_64                   37/40 
  Verifying  : 2:texlive-base-2012-38.20130427_r30134.el7.noarch          38/40 
  Verifying  : git-1.8.3.1-6.el7_2.1.x86_64                               39/40 
  Verifying  : python-sysv_ipc-0.4.2-11.el7.x86_64                        40/40 

Installed:
  openstack-gnocchi-api.noarch 0:3.1.3-1.el7                                    
  openstack-gnocchi-common.noarch 0:3.1.3-1.el7                                 
  openstack-gnocchi-indexer-sqlalchemy.noarch 0:3.1.3-1.el7                     
  openstack-gnocchi-metricd.noarch 0:3.1.3-1.el7                                
  openstack-gnocchi-statsd.noarch 0:3.1.3-1.el7                                 
  python2-gnocchiclient.noarch 0:3.1.0-1.el7                                    

Dependency Installed:
  blosc.x86_64 0:1.6.1-1.el7                                                    
  git.x86_64 0:1.8.3.1-6.el7_2.1                                                
  hdf5.x86_64 0:1.8.13-7.el7                                                    
  libqhull.x86_64 0:2015.2-1.el7                                                
  lz4.x86_64 0:1.7.3-1.el7                                                      
  perl-Error.noarch 1:0.17020-2.el7                                             
  perl-Git.noarch 0:1.8.3.1-6.el7_2.1                                           
  perl-TermReadKey.x86_64 0:2.30-20.el7                                         
  python-Bottleneck.x86_64 0:0.7.0-1.el7                                        
  python-gnocchi.noarch 0:3.1.3-1.el7                                           
  python-matplotlib-data.noarch 0:2.0.0-1.el7                                   
  python-matplotlib-data-fonts.noarch 0:2.0.0-1.el7                             
  python-pytimeparse.noarch 0:1.1.5-1.el7                                       
  python-sqlalchemy-utils.noarch 0:0.31.3-2.el7                                 
  python-subprocess32.x86_64 0:3.2.6-4.el7                                      
  python-sysv_ipc.x86_64 0:0.4.2-11.el7                                         
  python-tables.x86_64 0:3.2.0-1.el7                                            
  python-trollius.noarch 0:2.0-3.el7                                            
  python2-cycler.noarch 0:0.10.0-2.el7                                          
  python2-functools32.noarch 0:3.2.3.2-1.el7                                    
  python2-lz4.x86_64 0:0.9.0-1.el7                                              
  python2-matplotlib.x86_64 0:2.0.0-1.el7                                       
  python2-matplotlib-tk.x86_64 0:2.0.0-1.el7                                    
  python2-numexpr.x86_64 0:2.6.1-3.el7                                          
  python2-oslo-sphinx.noarch 0:4.10.0-1.el7                                     
  python2-pandas.x86_64 0:0.19.1-2.el7.2                                        
  python2-ujson.x86_64 0:1.35-1.el7                                             
  t1lib.x86_64 0:5.1.2-14.el7                                                   
  texlive-base.noarch 2:2012-38.20130427_r30134.el7                             
  texlive-dvipng.noarch 2:svn26689.1.14-38.el7                                  
  texlive-dvipng-bin.x86_64 2:svn26509.0-38.20130427_r30134.el7                 
  texlive-kpathsea.noarch 2:svn28792.0-38.el7                                   
  texlive-kpathsea-bin.x86_64 2:svn27347.0-38.20130427_r30134.el7               
  texlive-kpathsea-lib.x86_64 2:2012-38.20130427_r30134.el7                     

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package mod_wsgi-3.4-12.el7_0.x86_64 already installed and latest version
Package memcached-1.4.33-2.el7.x86_64 already installed and latest version
Package python-memcached-1.54-3.el7.noarch already installed and latest version
Package httpd-2.4.6-45.el7.centos.4.x86_64 already installed and latest version
Nothing to do
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-ceilometerclient-2.8.1-1.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-aodh-api.noarch 0:4.0.0-1.el7 will be installed
--> Processing Dependency: openstack-aodh-common = 4.0.0-1.el7 for package: openstack-aodh-api-4.0.0-1.el7.noarch
---> Package openstack-aodh-evaluator.noarch 0:4.0.0-1.el7 will be installed
---> Package openstack-aodh-expirer.noarch 0:4.0.0-1.el7 will be installed
---> Package openstack-aodh-listener.noarch 0:4.0.0-1.el7 will be installed
---> Package openstack-aodh-notifier.noarch 0:4.0.0-1.el7 will be installed
---> Package python2-aodhclient.noarch 0:0.8.0-1.el7 will be installed
--> Running transaction check
---> Package openstack-aodh-common.noarch 0:4.0.0-1.el7 will be installed
--> Processing Dependency: python-aodh = 4.0.0-1.el7 for package: openstack-aodh-common-4.0.0-1.el7.noarch
--> Running transaction check
---> Package python-aodh.noarch 0:4.0.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                   Arch    Version        Repository               Size
================================================================================
Installing:
 openstack-aodh-api        noarch  4.0.0-1.el7    centos-openstack-ocata  4.8 k
 openstack-aodh-evaluator  noarch  4.0.0-1.el7    centos-openstack-ocata  4.0 k
 openstack-aodh-expirer    noarch  4.0.0-1.el7    centos-openstack-ocata  4.0 k
 openstack-aodh-listener   noarch  4.0.0-1.el7    centos-openstack-ocata  4.0 k
 openstack-aodh-notifier   noarch  4.0.0-1.el7    centos-openstack-ocata  4.0 k
 python2-aodhclient        noarch  0.8.0-1.el7    centos-openstack-ocata   48 k
Installing for dependencies:
 openstack-aodh-common     noarch  4.0.0-1.el7    centos-openstack-ocata   32 k
 python-aodh               noarch  4.0.0-1.el7    centos-openstack-ocata  156 k

Transaction Summary
================================================================================
Install  6 Packages (+2 Dependent packages)

Total download size: 257 k
Installed size: 829 k
Downloading packages:
(1/8): openstack-aodh-api-4.0.0-1.el7.noarch.rpm           | 4.8 kB   00:00     
(2/8): openstack-aodh-common-4.0.0-1.el7.noarch.rpm        |  32 kB   00:00     
(3/8): openstack-aodh-evaluator-4.0.0-1.el7.noarch.rpm     | 4.0 kB   00:00     
(4/8): openstack-aodh-expirer-4.0.0-1.el7.noarch.rpm       | 4.0 kB   00:00     
(5/8): openstack-aodh-listener-4.0.0-1.el7.noarch.rpm      | 4.0 kB   00:00     
(6/8): openstack-aodh-notifier-4.0.0-1.el7.noarch.rpm      | 4.0 kB   00:00     
(7/8): python2-aodhclient-0.8.0-1.el7.noarch.rpm           |  48 kB   00:00     
(8/8): python-aodh-4.0.0-1.el7.noarch.rpm                  | 156 kB   00:00     
--------------------------------------------------------------------------------
Total                                              827 kB/s | 257 kB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : python-aodh-4.0.0-1.el7.noarch                               1/8 
  Installing : openstack-aodh-common-4.0.0-1.el7.noarch                     2/8 
  Installing : openstack-aodh-expirer-4.0.0-1.el7.noarch                    3/8 
  Installing : openstack-aodh-evaluator-4.0.0-1.el7.noarch                  4/8 
  Installing : openstack-aodh-api-4.0.0-1.el7.noarch                        5/8 
  Installing : openstack-aodh-listener-4.0.0-1.el7.noarch                   6/8 
  Installing : openstack-aodh-notifier-4.0.0-1.el7.noarch                   7/8 
  Installing : python2-aodhclient-0.8.0-1.el7.noarch                        8/8 
  Verifying  : python-aodh-4.0.0-1.el7.noarch                               1/8 
  Verifying  : openstack-aodh-expirer-4.0.0-1.el7.noarch                    2/8 
  Verifying  : python2-aodhclient-0.8.0-1.el7.noarch                        3/8 
  Verifying  : openstack-aodh-evaluator-4.0.0-1.el7.noarch                  4/8 
  Verifying  : openstack-aodh-api-4.0.0-1.el7.noarch                        5/8 
  Verifying  : openstack-aodh-common-4.0.0-1.el7.noarch                     6/8 
  Verifying  : openstack-aodh-listener-4.0.0-1.el7.noarch                   7/8 
  Verifying  : openstack-aodh-notifier-4.0.0-1.el7.noarch                   8/8 

Installed:
  openstack-aodh-api.noarch 0:4.0.0-1.el7                                       
  openstack-aodh-evaluator.noarch 0:4.0.0-1.el7                                 
  openstack-aodh-expirer.noarch 0:4.0.0-1.el7                                   
  openstack-aodh-listener.noarch 0:4.0.0-1.el7                                  
  openstack-aodh-notifier.noarch 0:4.0.0-1.el7                                  
  python2-aodhclient.noarch 0:0.8.0-1.el7                                       

Dependency Installed:
  openstack-aodh-common.noarch 0:4.0.0-1.el7  python-aodh.noarch 0:4.0.0-1.el7 

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python-pip is obsoleted by python2-pip, trying to install python2-pip-8.1.2-5.el7.noarch instead
Resolving Dependencies
--> Running transaction check
---> Package python2-pip.noarch 0:8.1.2-5.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package              Arch            Version               Repository     Size
================================================================================
Installing:
 python2-pip          noarch          8.1.2-5.el7           epel          1.7 M

Transaction Summary
================================================================================
Install  1 Package

Total download size: 1.7 M
Installed size: 7.2 M
Downloading packages:
python2-pip-8.1.2-5.el7.noarch.rpm                         | 1.7 MB   00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : python2-pip-8.1.2-5.el7.noarch                               1/1 
  Verifying  : python2-pip-8.1.2-5.el7.noarch                               1/1 

Installed:
  python2-pip.noarch 0:8.1.2-5.el7                                              

Complete!
Collecting requests-aws
  Downloading requests-aws-0.1.8.tar.gz
Requirement already satisfied (use --upgrade to upgrade): requests>=0.14.0 in /usr/lib/python2.7/site-packages (from requests-aws)
Requirement already satisfied (use --upgrade to upgrade): urllib3==1.16 in /usr/lib/python2.7/site-packages (from requests>=0.14.0->requests-aws)
Installing collected packages: requests-aws
  Running setup.py install for requests-aws ... done
Successfully installed requests-aws-0.1.8
You are using pip version 8.1.2, however version 9.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
Done


Configuring Ceilometer

Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package mod_wsgi-3.4-12.el7_0.x86_64 already installed and latest version
Package memcached-1.4.33-2.el7.x86_64 already installed and latest version
Package python-memcached-1.54-3.el7.noarch already installed and latest version
Package httpd-2.4.6-45.el7.centos.4.x86_64 already installed and latest version
Nothing to do
chown: cannot access ‘/var/log/ceilometer/*’: No such file or directory
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package mod_wsgi-3.4-12.el7_0.x86_64 already installed and latest version
Package memcached-1.4.33-2.el7.x86_64 already installed and latest version
Package python-memcached-1.54-3.el7.noarch already installed and latest version
Package httpd-2.4.6-45.el7.centos.4.x86_64 already installed and latest version
Nothing to do
‘./libs/aodh/wsgi-aodh.conf’ -> ‘/etc/httpd/conf.d/wsgi-aodh.conf’
‘./libs/aodh/app.wsgi’ -> ‘/var/www/cgi-bin/aodh/app.wsgi’
‘./libs/gnocchi/wsgi-gnocchi.conf’ -> ‘/etc/httpd/conf.d/wsgi-gnocchi.conf’
‘./libs/gnocchi/app.wsgi’ -> ‘/var/www/cgi-bin/gnocchi/app.wsgi’
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-gnocchi-metricd.service to /usr/lib/systemd/system/openstack-gnocchi-metricd.service.

Applying IPTABLES Rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Ready...

Cleaning UP App logs
Done

Starting Ceilometer Services

Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-ceilometer-central.service to /usr/lib/systemd/system/openstack-ceilometer-central.service.
Failed to execute operation: No such file or directory
Failed to stop openstack-ceilometer-api.service: Unit openstack-ceilometer-api.service not loaded.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-ceilometer-collector.service to /usr/lib/systemd/system/openstack-ceilometer-collector.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-ceilometer-notification.service to /usr/lib/systemd/system/openstack-ceilometer-notification.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-aodh-evaluator.service to /usr/lib/systemd/system/openstack-aodh-evaluator.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-aodh-notifier.service to /usr/lib/systemd/system/openstack-aodh-notifier.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-aodh-listener.service to /usr/lib/systemd/system/openstack-aodh-listener.service.

Ceilometer Installed and Configured

OPENSTACK CEILOMETER INSTALLED

Installing OPENSTACK HEAT

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Installing HEAT Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-heatclient-1.8.0-1.el7.noarch already installed and latest version
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-heat-api.noarch 1:8.0.1-1.el7 will be installed
---> Package openstack-heat-api-cfn.noarch 1:8.0.1-1.el7 will be installed
---> Package openstack-heat-common.noarch 1:8.0.1-1.el7 will be installed
--> Processing Dependency: python-zaqarclient >= 1.0.0 for package: 1:openstack-heat-common-8.0.1-1.el7.noarch
--> Processing Dependency: python-yaql >= 1.1.0 for package: 1:openstack-heat-common-8.0.1-1.el7.noarch
--> Processing Dependency: python-saharaclient >= 1.1.0 for package: 1:openstack-heat-common-8.0.1-1.el7.noarch
--> Processing Dependency: python-manilaclient >= 1.12.0 for package: 1:openstack-heat-common-8.0.1-1.el7.noarch
--> Processing Dependency: python-magnumclient >= 2.0.0 for package: 1:openstack-heat-common-8.0.1-1.el7.noarch
---> Package openstack-heat-engine.noarch 1:8.0.1-1.el7 will be installed
--> Running transaction check
---> Package python2-magnumclient.noarch 0:2.5.0-1.el7 will be installed
---> Package python2-manilaclient.noarch 0:1.14.0-1.el7 will be installed
---> Package python2-saharaclient.noarch 0:1.1.0-1.el7 will be installed
---> Package python2-yaql.noarch 0:1.1.0-3.el7 will be installed
---> Package python2-zaqarclient.noarch 0:1.4.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                 Arch    Version          Repository               Size
================================================================================
Installing:
 openstack-heat-api      noarch  1:8.0.1-1.el7    centos-openstack-ocata   14 k
 openstack-heat-api-cfn  noarch  1:8.0.1-1.el7    centos-openstack-ocata   14 k
 openstack-heat-common   noarch  1:8.0.1-1.el7    centos-openstack-ocata  1.6 M
 openstack-heat-engine   noarch  1:8.0.1-1.el7    centos-openstack-ocata   13 k
Installing for dependencies:
 python2-magnumclient    noarch  2.5.0-1.el7      centos-openstack-ocata   93 k
 python2-manilaclient    noarch  1.14.0-1.el7     centos-openstack-ocata  374 k
 python2-saharaclient    noarch  1.1.0-1.el7      centos-openstack-ocata  142 k
 python2-yaql            noarch  1.1.0-3.el7      centos-openstack-ocata  156 k
 python2-zaqarclient     noarch  1.4.0-1.el7      centos-openstack-ocata  115 k

Transaction Summary
================================================================================
Install  4 Packages (+5 Dependent packages)

Total download size: 2.5 M
Installed size: 13 M
Downloading packages:
(1/9): openstack-heat-api-8.0.1-1.el7.noarch.rpm           |  14 kB   00:00     
(2/9): openstack-heat-api-cfn-8.0.1-1.el7.noarch.rpm       |  14 kB   00:00     
(3/9): openstack-heat-engine-8.0.1-1.el7.noarch.rpm        |  13 kB   00:00     
(4/9): python2-magnumclient-2.5.0-1.el7.noarch.rpm         |  93 kB   00:00     
(5/9): openstack-heat-common-8.0.1-1.el7.noarch.rpm        | 1.6 MB   00:00     
(6/9): python2-manilaclient-1.14.0-1.el7.noarch.rpm        | 374 kB   00:00     
(7/9): python2-saharaclient-1.1.0-1.el7.noarch.rpm         | 142 kB   00:00     
(8/9): python2-yaql-1.1.0-3.el7.noarch.rpm                 | 156 kB   00:00     
(9/9): python2-zaqarclient-1.4.0-1.el7.noarch.rpm          | 115 kB   00:00     
--------------------------------------------------------------------------------
Total                                              5.2 MB/s | 2.5 MB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : python2-manilaclient-1.14.0-1.el7.noarch                     1/9 
  Installing : python2-yaql-1.1.0-3.el7.noarch                              2/9 
  Installing : python2-zaqarclient-1.4.0-1.el7.noarch                       3/9 
  Installing : python2-magnumclient-2.5.0-1.el7.noarch                      4/9 
  Installing : python2-saharaclient-1.1.0-1.el7.noarch                      5/9 
  Installing : 1:openstack-heat-common-8.0.1-1.el7.noarch                   6/9 
  Installing : 1:openstack-heat-api-8.0.1-1.el7.noarch                      7/9 
  Installing : 1:openstack-heat-api-cfn-8.0.1-1.el7.noarch                  8/9 
  Installing : 1:openstack-heat-engine-8.0.1-1.el7.noarch                   9/9 
  Verifying  : python2-saharaclient-1.1.0-1.el7.noarch                      1/9 
  Verifying  : 1:openstack-heat-api-8.0.1-1.el7.noarch                      2/9 
  Verifying  : 1:openstack-heat-api-cfn-8.0.1-1.el7.noarch                  3/9 
  Verifying  : 1:openstack-heat-engine-8.0.1-1.el7.noarch                   4/9 
  Verifying  : python2-magnumclient-2.5.0-1.el7.noarch                      5/9 
  Verifying  : python2-zaqarclient-1.4.0-1.el7.noarch                       6/9 
  Verifying  : python2-yaql-1.1.0-3.el7.noarch                              7/9 
  Verifying  : 1:openstack-heat-common-8.0.1-1.el7.noarch                   8/9 
  Verifying  : python2-manilaclient-1.14.0-1.el7.noarch                     9/9 

Installed:
  openstack-heat-api.noarch 1:8.0.1-1.el7                                       
  openstack-heat-api-cfn.noarch 1:8.0.1-1.el7                                   
  openstack-heat-common.noarch 1:8.0.1-1.el7                                    
  openstack-heat-engine.noarch 1:8.0.1-1.el7                                    

Dependency Installed:
  python2-magnumclient.noarch 0:2.5.0-1.el7                                     
  python2-manilaclient.noarch 0:1.14.0-1.el7                                    
  python2-saharaclient.noarch 0:1.1.0-1.el7                                     
  python2-yaql.noarch 0:1.1.0-3.el7                                             
  python2-zaqarclient.noarch 0:1.4.0-1.el7                                      

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-zaqarclient-1.4.0-1.el7.noarch already installed and latest version
Package python2-manilaclient-1.14.0-1.el7.noarch already installed and latest version
Package python2-mistralclient-3.0.0-1.el7.noarch already installed and latest version
Nothing to do
Done


Configuring HEAT


Heat Configured


Provisioning heat DB

2017-06-05 12:46:20.230 23861 INFO migrate.versioning.api [-] 64 -> 65... 
2017-06-05 12:46:27.540 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:27.540 23861 INFO migrate.versioning.api [-] 65 -> 66... 
2017-06-05 12:46:27.573 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:27.573 23861 INFO migrate.versioning.api [-] 66 -> 67... 
2017-06-05 12:46:27.606 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:27.607 23861 INFO migrate.versioning.api [-] 67 -> 68... 
2017-06-05 12:46:27.640 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:27.640 23861 INFO migrate.versioning.api [-] 68 -> 69... 
2017-06-05 12:46:27.673 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:27.673 23861 INFO migrate.versioning.api [-] 69 -> 70... 
2017-06-05 12:46:27.707 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:27.707 23861 INFO migrate.versioning.api [-] 70 -> 71... 
2017-06-05 12:46:27.932 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:27.932 23861 INFO migrate.versioning.api [-] 71 -> 72... 
2017-06-05 12:46:29.216 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:29.216 23861 INFO migrate.versioning.api [-] 72 -> 73... 
2017-06-05 12:46:30.066 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:30.067 23861 INFO migrate.versioning.api [-] 73 -> 74... 
2017-06-05 12:46:30.108 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:30.108 23861 INFO migrate.versioning.api [-] 74 -> 75... 
2017-06-05 12:46:30.141 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:30.142 23861 INFO migrate.versioning.api [-] 75 -> 76... 
2017-06-05 12:46:30.175 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:30.175 23861 INFO migrate.versioning.api [-] 76 -> 77... 
2017-06-05 12:46:30.208 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:30.208 23861 INFO migrate.versioning.api [-] 77 -> 78... 
2017-06-05 12:46:30.250 23861 INFO migrate.versioning.api [-] done
2017-06-05 12:46:30.251 23861 INFO migrate.versioning.api [-] 78 -> 79... 
2017-06-05 12:46:33.365 23861 INFO migrate.versioning.api [-] done

Done


Applying IPTABLES Rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Done

Cleaning UP App logs
ls: cannot access /var/log/heat/*.log: No such file or directory
Done


Starting HEAT

Starting and Enabling Service: openstack-heat-api
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-heat-api.service to /usr/lib/systemd/system/openstack-heat-api.service.
● openstack-heat-api.service - OpenStack Heat API Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-heat-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:46:33 BST; 219ms ago
 Main PID: 23922 (heat-api)
   CGroup: /system.slice/openstack-heat-api.service
           └─23922 /usr/bin/python /usr/bin/heat-api --config-file /usr/share...

Jun 05 12:46:33 richmond.bradstack.co.uk systemd[1]: Started OpenStack Heat A...
Jun 05 12:46:33 richmond.bradstack.co.uk systemd[1]: Starting OpenStack Heat ...
Hint: Some lines were ellipsized, use -l to show in full.
Starting and Enabling Service: openstack-heat-api-cfn
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-heat-api-cfn.service to /usr/lib/systemd/system/openstack-heat-api-cfn.service.
● openstack-heat-api-cfn.service - Openstack Heat CFN-compatible API Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-heat-api-cfn.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:46:33 BST; 213ms ago
 Main PID: 23948 (heat-api-cfn)
   CGroup: /system.slice/openstack-heat-api-cfn.service
           └─23948 /usr/bin/python /usr/bin/heat-api-cfn --config-file /usr/s...

Jun 05 12:46:33 richmond.bradstack.co.uk systemd[1]: Started Openstack Heat C...
Jun 05 12:46:33 richmond.bradstack.co.uk systemd[1]: Starting Openstack Heat ...
Hint: Some lines were ellipsized, use -l to show in full.
Starting and Enabling Service: openstack-heat-engine
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-heat-engine.service to /usr/lib/systemd/system/openstack-heat-engine.service.
● openstack-heat-engine.service - Openstack Heat Engine Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-heat-engine.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:46:34 BST; 213ms ago
 Main PID: 23974 (heat-engine)
   CGroup: /system.slice/openstack-heat-engine.service
           └─23974 /usr/bin/python /usr/bin/heat-engine --config-file /usr/sh...

Jun 05 12:46:34 richmond.bradstack.co.uk systemd[1]: Started Openstack Heat E...
Jun 05 12:46:34 richmond.bradstack.co.uk systemd[1]: Starting Openstack Heat ...
Hint: Some lines were ellipsized, use -l to show in full.

Heat Installed and Configured

OPENSTACK HEAT INSTALLED

Installing OPENSTACK SAHARA

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Installing Sahara Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-saharaclient-1.1.0-1.el7.noarch already installed and latest version
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-sahara.noarch 1:6.0.0-1.el7 will be installed
---> Package openstack-sahara-api.noarch 1:6.0.0-1.el7 will be installed
---> Package openstack-sahara-common.noarch 1:6.0.0-1.el7 will be installed
--> Processing Dependency: python-sahara = 1:6.0.0-1.el7 for package: 1:openstack-sahara-common-6.0.0-1.el7.noarch
---> Package openstack-sahara-engine.noarch 1:6.0.0-1.el7 will be installed
--> Running transaction check
---> Package python-sahara.noarch 1:6.0.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                  Arch    Version         Repository               Size
================================================================================
Installing:
 openstack-sahara         noarch  1:6.0.0-1.el7   centos-openstack-ocata  4.6 k
 openstack-sahara-api     noarch  1:6.0.0-1.el7   centos-openstack-ocata  4.5 k
 openstack-sahara-common  noarch  1:6.0.0-1.el7   centos-openstack-ocata   29 k
 openstack-sahara-engine  noarch  1:6.0.0-1.el7   centos-openstack-ocata  4.5 k
Installing for dependencies:
 python-sahara            noarch  1:6.0.0-1.el7   centos-openstack-ocata  1.5 M

Transaction Summary
================================================================================
Install  4 Packages (+1 Dependent package)

Total download size: 1.5 M
Installed size: 13 M
Downloading packages:
(1/5): openstack-sahara-6.0.0-1.el7.noarch.rpm             | 4.6 kB   00:00     
(2/5): openstack-sahara-api-6.0.0-1.el7.noarch.rpm         | 4.5 kB   00:00     
(3/5): openstack-sahara-engine-6.0.0-1.el7.noarch.rpm      | 4.5 kB   00:00     
(4/5): openstack-sahara-common-6.0.0-1.el7.noarch.rpm      |  29 kB   00:00     
(5/5): python-sahara-6.0.0-1.el7.noarch.rpm                | 1.5 MB   00:02     
--------------------------------------------------------------------------------
Total                                              422 kB/s | 1.5 MB  00:03     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:python-sahara-6.0.0-1.el7.noarch                           1/5 
  Installing : 1:openstack-sahara-common-6.0.0-1.el7.noarch                 2/5 
  Installing : 1:openstack-sahara-engine-6.0.0-1.el7.noarch                 3/5 
  Installing : 1:openstack-sahara-api-6.0.0-1.el7.noarch                    4/5 
  Installing : 1:openstack-sahara-6.0.0-1.el7.noarch                        5/5 
  Verifying  : 1:openstack-sahara-engine-6.0.0-1.el7.noarch                 1/5 
  Verifying  : 1:openstack-sahara-api-6.0.0-1.el7.noarch                    2/5 
  Verifying  : 1:openstack-sahara-6.0.0-1.el7.noarch                        3/5 
  Verifying  : 1:python-sahara-6.0.0-1.el7.noarch                           4/5 
  Verifying  : 1:openstack-sahara-common-6.0.0-1.el7.noarch                 5/5 

Installed:
  openstack-sahara.noarch 1:6.0.0-1.el7                                         
  openstack-sahara-api.noarch 1:6.0.0-1.el7                                     
  openstack-sahara-common.noarch 1:6.0.0-1.el7                                  
  openstack-sahara-engine.noarch 1:6.0.0-1.el7                                  

Dependency Installed:
  python-sahara.noarch 1:6.0.0-1.el7                                            

Complete!
Done


Configuring Sahara


Sahara Configured


Provisioning Sahara DB

INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
INFO  [alembic.runtime.migration] Running upgrade  -> 001, Icehouse release
INFO  [alembic.runtime.migration] Running upgrade 001 -> 002, placeholder
INFO  [alembic.runtime.migration] Running upgrade 002 -> 003, placeholder
INFO  [alembic.runtime.migration] Running upgrade 003 -> 004, placeholder
INFO  [alembic.runtime.migration] Running upgrade 004 -> 005, placeholder
INFO  [alembic.runtime.migration] Running upgrade 005 -> 006, placeholder
INFO  [alembic.runtime.migration] Running upgrade 006 -> 007, convert clusters.status_description to LongText
INFO  [alembic.runtime.migration] Running upgrade 007 -> 008, add security_groups field to node groups
INFO  [alembic.runtime.migration] Running upgrade 008 -> 009, add rollback info to cluster
INFO  [alembic.runtime.migration] Running upgrade 009 -> 010, add auto_security_groups flag to node group
INFO  [alembic.runtime.migration] Running upgrade 010 -> 011, add Sahara settings info to cluster
INFO  [alembic.runtime.migration] Running upgrade 011 -> 012, add availability_zone field to node groups
INFO  [alembic.runtime.migration] Running upgrade 012 -> 013, add volumes_availability_zone field to node groups
INFO  [alembic.runtime.migration] Running upgrade 013 -> 014, add_volume_type
INFO  [alembic.runtime.migration] Running upgrade 014 -> 015, add_events_objects
INFO  [alembic.runtime.migration] Running upgrade 015 -> 016, Add is_proxy_gateway
INFO  [alembic.runtime.migration] Running upgrade 016 -> 017, drop progress in JobExecution
INFO  [alembic.runtime.migration] Running upgrade 017 -> 018, add volume_local_to_instance flag
INFO  [alembic.runtime.migration] Running upgrade 018 -> 019, Add is_default field for cluster and node_group templates
INFO  [alembic.runtime.migration] Running upgrade 019 -> 020, remove redandunt progress ops
INFO  [alembic.runtime.migration] Running upgrade 020 -> 021, Add data_source_urls to job_executions to support placeholders
INFO  [alembic.runtime.migration] Running upgrade 021 -> 022, add_job_interface
INFO  [alembic.runtime.migration] Running upgrade 022 -> 023, add_use_autoconfig
INFO  [alembic.runtime.migration] Running upgrade 023 -> 024, manila_shares
INFO  [alembic.runtime.migration] Running upgrade 024 -> 025, Increase internal_ip and management_ip column size to work with IPv6
INFO  [alembic.runtime.migration] Running upgrade 025 -> 026, add is_public and is_protected flags
INFO  [alembic.runtime.migration] Running upgrade 026 -> 027, Rename oozie_job_id
INFO  [alembic.runtime.migration] Running upgrade 027 -> 028, add_storage_devices_number
INFO  [alembic.runtime.migration] Running upgrade 028 -> 029, set is_protected on is_default
INFO  [alembic.runtime.migration] Running upgrade 029 -> 030, health-check
INFO  [alembic.runtime.migration] Running upgrade 030 -> 031, added_plugins_table
INFO  [alembic.runtime.migration] Running upgrade 031 -> 032, 032_add_domain_name

Done


Applying IPTABLES rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Done

Cleaning UP App logs
Done


Starting Services

Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-sahara-all.service to /usr/lib/systemd/system/openstack-sahara-all.service.

Sahara Installed and Configured

OPENSTACK SAHARA INSTALLED

Installing OPENSTACK MANILA

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Installing Support Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package 7:lvm2-2.02.166-1.el7_3.4.x86_64 already installed and latest version
Package 1:nfs-utils-1.3.0-0.33.el7_3.x86_64 already installed and latest version
Package nfs4-acl-tools-0.3.3-15.el7.x86_64 already installed and latest version
Package rpcbind-0.2.0-38.el7_3.x86_64 already installed and latest version
Package scsi-target-utils-1.0.55-4.el7.x86_64 already installed and latest version
Package targetcli-2.1.fb41-3.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package samba.x86_64 0:4.4.4-14.el7_3 will be installed
--> Processing Dependency: samba-libs = 4.4.4-14.el7_3 for package: samba-4.4.4-14.el7_3.x86_64
--> Processing Dependency: samba-common-tools = 4.4.4-14.el7_3 for package: samba-4.4.4-14.el7_3.x86_64
--> Processing Dependency: libxattr-tdb-samba4.so(SAMBA_4.4.4)(64bit) for package: samba-4.4.4-14.el7_3.x86_64
--> Processing Dependency: libxattr-tdb-samba4.so()(64bit) for package: samba-4.4.4-14.el7_3.x86_64
--> Running transaction check
---> Package samba-common-tools.x86_64 0:4.4.4-14.el7_3 will be installed
---> Package samba-libs.x86_64 0:4.4.4-14.el7_3 will be installed
--> Processing Dependency: libpytalloc-util.so.2(PYTALLOC_UTIL_2.1.6)(64bit) for package: samba-libs-4.4.4-14.el7_3.x86_64
--> Processing Dependency: libpytalloc-util.so.2(PYTALLOC_UTIL_2.0.6)(64bit) for package: samba-libs-4.4.4-14.el7_3.x86_64
--> Processing Dependency: libpytalloc-util.so.2()(64bit) for package: samba-libs-4.4.4-14.el7_3.x86_64
--> Running transaction check
---> Package pytalloc.x86_64 0:2.1.6-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                  Arch         Version              Repository     Size
================================================================================
Installing:
 samba                    x86_64       4.4.4-14.el7_3       updates       610 k
Installing for dependencies:
 pytalloc                 x86_64       2.1.6-1.el7          base           15 k
 samba-common-tools       x86_64       4.4.4-14.el7_3       updates       451 k
 samba-libs               x86_64       4.4.4-14.el7_3       updates       260 k

Transaction Summary
================================================================================
Install  1 Package (+3 Dependent packages)

Total download size: 1.3 M
Installed size: 3.6 M
Downloading packages:
(1/4): pytalloc-2.1.6-1.el7.x86_64.rpm                     |  15 kB   00:00     
(2/4): samba-common-tools-4.4.4-14.el7_3.x86_64.rpm        | 451 kB   00:00     
(3/4): samba-4.4.4-14.el7_3.x86_64.rpm                     | 610 kB   00:00     
(4/4): samba-libs-4.4.4-14.el7_3.x86_64.rpm                | 260 kB   00:00     
--------------------------------------------------------------------------------
Total                                              4.7 MB/s | 1.3 MB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : pytalloc-2.1.6-1.el7.x86_64                                  1/4 
  Installing : samba-libs-4.4.4-14.el7_3.x86_64                             2/4 
  Installing : samba-common-tools-4.4.4-14.el7_3.x86_64                     3/4 
  Installing : samba-4.4.4-14.el7_3.x86_64                                  4/4 
  Verifying  : samba-libs-4.4.4-14.el7_3.x86_64                             1/4 
  Verifying  : samba-common-tools-4.4.4-14.el7_3.x86_64                     2/4 
  Verifying  : samba-4.4.4-14.el7_3.x86_64                                  3/4 
  Verifying  : pytalloc-2.1.6-1.el7.x86_64                                  4/4 

Installed:
  samba.x86_64 0:4.4.4-14.el7_3                                                 

Dependency Installed:
  pytalloc.x86_64 0:2.1.6-1.el7      samba-common-tools.x86_64 0:4.4.4-14.el7_3
  samba-libs.x86_64 0:4.4.4-14.el7_3

Complete!

Enabling/Starting Support Services
Created symlink from /etc/systemd/system/sysinit.target.wants/lvm2-lvmetad.service to /usr/lib/systemd/system/lvm2-lvmetad.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/iscsid.service to /usr/lib/systemd/system/iscsid.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/smb.service to /usr/lib/systemd/system/smb.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/nmb.service to /usr/lib/systemd/system/nmb.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/nfs-server.service to /usr/lib/systemd/system/nfs-server.service.
● nfs-server.service - NFS server and services
   Loaded: loaded (/usr/lib/systemd/system/nfs-server.service; enabled; vendor preset: disabled)
   Active: active (exited) since Mon 2017-06-05 12:47:49 BST; 110ms ago
 Main PID: 24537 (code=exited, status=0/SUCCESS)
   CGroup: /system.slice/nfs-server.service

Jun 05 12:47:49 richmond.bradstack.co.uk systemd[1]: Starting NFS server and ...
Jun 05 12:47:49 richmond.bradstack.co.uk systemd[1]: Started NFS server and s...
Hint: Some lines were ellipsized, use -l to show in full.

Installing Manila Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-manilaclient-1.14.0-1.el7.noarch already installed and latest version
Package python2-manilaclient-1.14.0-1.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-manila.noarch 1:4.0.0-1.el7 will be installed
---> Package openstack-manila-doc.noarch 1:4.0.0-1.el7 will be installed
---> Package openstack-manila-share.noarch 1:4.0.0-1.el7 will be installed
---> Package python-manila.noarch 1:4.0.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                 Arch    Version          Repository               Size
================================================================================
Installing:
 openstack-manila        noarch  1:4.0.0-1.el7    centos-openstack-ocata  8.2 k
 openstack-manila-doc    noarch  1:4.0.0-1.el7    centos-openstack-ocata  784 k
 openstack-manila-share  noarch  1:4.0.0-1.el7    centos-openstack-ocata  4.7 k
 python-manila           noarch  1:4.0.0-1.el7    centos-openstack-ocata  1.4 M

Transaction Summary
================================================================================
Install  4 Packages

Total download size: 2.2 M
Installed size: 11 M
Downloading packages:
(1/4): openstack-manila-4.0.0-1.el7.noarch.rpm             | 8.2 kB   00:00     
(2/4): openstack-manila-share-4.0.0-1.el7.noarch.rpm       | 4.7 kB   00:00     
(3/4): openstack-manila-doc-4.0.0-1.el7.noarch.rpm         | 784 kB   00:00     
(4/4): python-manila-4.0.0-1.el7.noarch.rpm                | 1.4 MB   00:00     
--------------------------------------------------------------------------------
Total                                              2.8 MB/s | 2.2 MB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:python-manila-4.0.0-1.el7.noarch                           1/4 
  Installing : 1:openstack-manila-4.0.0-1.el7.noarch                        2/4 
  Installing : 1:openstack-manila-doc-4.0.0-1.el7.noarch                    3/4 
  Installing : 1:openstack-manila-share-4.0.0-1.el7.noarch                  4/4 
  Verifying  : 1:python-manila-4.0.0-1.el7.noarch                           1/4 
  Verifying  : 1:openstack-manila-4.0.0-1.el7.noarch                        2/4 
  Verifying  : 1:openstack-manila-share-4.0.0-1.el7.noarch                  3/4 
  Verifying  : 1:openstack-manila-doc-4.0.0-1.el7.noarch                    4/4 

Installed:
  openstack-manila.noarch 1:4.0.0-1.el7                                         
  openstack-manila-doc.noarch 1:4.0.0-1.el7                                     
  openstack-manila-share.noarch 1:4.0.0-1.el7                                   
  python-manila.noarch 1:4.0.0-1.el7                                            

Complete!
Done


Configuring Manila


Provisioning Manila DB

2017-06-05 12:48:06.872 24686 INFO alembic.runtime.migration [-] Context impl MySQLImpl.
2017-06-05 12:48:06.872 24686 INFO alembic.runtime.migration [-] Will assume non-transactional DDL.
2017-06-05 12:48:07.116 24686 INFO alembic.runtime.migration [-] Running upgrade  -> 162a3e673105, manila_init
2017-06-05 12:48:13.869 24686 INFO alembic.runtime.migration [-] Running upgrade 162a3e673105 -> 211836bf835c, add access level
2017-06-05 12:48:14.311 24686 INFO alembic.runtime.migration [-] Running upgrade 211836bf835c -> 38e632621e5a, change volume_type to share_type
2017-06-05 12:48:14.312 24686 INFO 38e632621e5a_change_volume_type_to_share_type_py [-] Renaming column name shares.volume_type_id to shares.share_type.id
2017-06-05 12:48:14.346 24686 INFO 38e632621e5a_change_volume_type_to_share_type_py [-] Renaming volume_types table to share_types
2017-06-05 12:48:14.796 24686 INFO 38e632621e5a_change_volume_type_to_share_type_py [-] Creating share_type_extra_specs table
2017-06-05 12:48:15.071 24686 INFO 38e632621e5a_change_volume_type_to_share_type_py [-] Migrating volume_type_extra_specs to share_type_extra_specs
2017-06-05 12:48:15.074 24686 INFO 38e632621e5a_change_volume_type_to_share_type_py [-] Dropping volume_type_extra_specs table
2017-06-05 12:48:15.212 24686 INFO alembic.runtime.migration [-] Running upgrade 38e632621e5a -> 17115072e1c3, add_nova_net_id_column_to_share_networks
2017-06-05 12:48:15.621 24686 INFO alembic.runtime.migration [-] Running upgrade 17115072e1c3 -> 4ee2cf4be19a, Remove share_snapshots.export_location
2017-06-05 12:48:16.030 24686 INFO alembic.runtime.migration [-] Running upgrade 4ee2cf4be19a -> 59eb64046740, Add required extra spec
/usr/lib64/python2.7/site-packages/sqlalchemy/sql/default_comparator.py:153: SAWarning: The IN-predicate on "share_types.id" was invoked with an empty sequence. This results in a contradiction, which nonetheless can be expensive to evaluate.  Consider alternative strategies for improved performance.
  'strategies for improved performance.' % expr)
2017-06-05 12:48:16.080 24686 INFO alembic.runtime.migration [-] Running upgrade 59eb64046740 -> ef0c02b4366, Add_share_type_projects
2017-06-05 12:48:16.905 24686 INFO alembic.runtime.migration [-] Running upgrade ef0c02b4366 -> 30cb96d995fa, add public column for share
2017-06-05 12:48:17.397 24686 INFO alembic.runtime.migration [-] Running upgrade 30cb96d995fa -> 56cdbe267881, Add share_export_locations table
2017-06-05 12:48:18.444 24686 INFO alembic.runtime.migration [-] Running upgrade 56cdbe267881 -> 3a482171410f, add_driver_private_data_table
2017-06-05 12:48:18.751 24686 INFO alembic.runtime.migration [-] Running upgrade 3a482171410f -> 533646c7af38, Remove unused attr status
2017-06-05 12:48:19.701 24686 INFO alembic.runtime.migration [-] Running upgrade 533646c7af38 -> 3db9992c30f3, Transform statuses to lowercase
2017-06-05 12:48:19.801 24686 INFO alembic.runtime.migration [-] Running upgrade 3db9992c30f3 -> 5077ffcc5f1c, add_share_instances
2017-06-05 12:48:28.163 24686 INFO alembic.runtime.migration [-] Running upgrade 5077ffcc5f1c -> 579c267fbb4d, add_share_instances_access_map
2017-06-05 12:48:29.014 24686 INFO alembic.runtime.migration [-] Running upgrade 579c267fbb4d -> 1f0bd302c1a6, add_availability_zones_table
2017-06-05 12:48:32.845 24686 INFO alembic.runtime.migration [-] Running upgrade 1f0bd302c1a6 -> 55761e5f59c5, Add 'snapshot_support' extra spec to share types
2017-06-05 12:48:33.237 24686 INFO alembic.runtime.migration [-] Running upgrade 55761e5f59c5 -> 3651e16d7c43, Create Consistency Groups Tables and Columns
2017-06-05 12:48:36.139 24686 INFO alembic.runtime.migration [-] Running upgrade 3651e16d7c43 -> 323840a08dc4, Add shares.task_state
2017-06-05 12:48:36.665 24686 INFO alembic.runtime.migration [-] Running upgrade 323840a08dc4 -> dda6de06349, Add DB support for share instance export locations metadata.
2017-06-05 12:48:38.600 24686 INFO alembic.runtime.migration [-] Running upgrade dda6de06349 -> 344c1ac4747f, Remove access rules status and add access_rule_status to share_instance
model
2017-06-05 12:48:39.767 24686 INFO alembic.runtime.migration [-] Running upgrade 344c1ac4747f -> 293fac1130ca, Add replication attributes to Share and ShareInstance models.
2017-06-05 12:48:40.920 24686 INFO alembic.runtime.migration [-] Running upgrade 293fac1130ca -> 5155c7077f99, Add more network info attributes to 'network_allocations' table.
2017-06-05 12:48:43.163 24686 INFO alembic.runtime.migration [-] Running upgrade 5155c7077f99 -> eb6d5544cbbd, add provider_location to share_snapshot_instances
2017-06-05 12:48:43.672 24686 INFO alembic.runtime.migration [-] Running upgrade eb6d5544cbbd -> 221a83cfd85b, change_user_id_length
2017-06-05 12:48:43.673 24686 INFO 221a83cfd85b_change_user_project_id_length_py [-] Changing user_id length for share_networks
2017-06-05 12:48:44.233 24686 INFO 221a83cfd85b_change_user_project_id_length_py [-] Changing project_id length for share_networks
2017-06-05 12:48:44.825 24686 INFO 221a83cfd85b_change_user_project_id_length_py [-] Changing project_id length for security_services
2017-06-05 12:48:45.416 24686 INFO alembic.runtime.migration [-] Running upgrade 221a83cfd85b -> fdfb668d19e1, add_gateway_to_network_allocations_table
2017-06-05 12:48:46.233 24686 INFO alembic.runtime.migration [-] Running upgrade fdfb668d19e1 -> e8ea58723178, Remove host from driver private data
2017-06-05 12:48:46.692 24686 INFO alembic.runtime.migration [-] Running upgrade e8ea58723178 -> 493eaffd79e1, add_mtu_network_allocations
2017-06-05 12:48:47.551 24686 INFO alembic.runtime.migration [-] Running upgrade 493eaffd79e1 -> 63809d875e32, add_access_key
2017-06-05 12:48:47.987 24686 INFO alembic.runtime.migration [-] Running upgrade 63809d875e32 -> 48a7beae3117, move_share_type_id_to_instances
2017-06-05 12:48:49.813 24686 INFO alembic.runtime.migration [-] Running upgrade 48a7beae3117 -> 3e7d62517afa, Add 'create_share_from_snapshot_support' extra spec to share types
2017-06-05 12:48:50.314 24686 INFO alembic.runtime.migration [-] Running upgrade 3e7d62517afa -> 95e3cf760840, remove_nova_net_id_column_from_share_networks
2017-06-05 12:48:50.781 24686 INFO alembic.runtime.migration [-] Running upgrade 95e3cf760840 -> 87ce15c59bbe, add_revert_to_snapshot_support
2017-06-05 12:48:51.273 24686 INFO alembic.runtime.migration [-] Running upgrade 87ce15c59bbe -> 54667b9cade7, add_share_instance_access_map_state
2017-06-05 12:48:51.924 24686 INFO alembic.runtime.migration [-] Running upgrade 54667b9cade7 -> e9f79621d83f, add_cast_rules_to_readonly_to_share_instances
2017-06-05 12:48:51.924 24686 INFO e9f79621d83f_add_cast_rules_to_readonly_to_share_instances_py [-] Adding cast_rules_to_readonly column to share instances.
2017-06-05 12:48:53.141 24686 INFO alembic.runtime.migration [-] Running upgrade e9f79621d83f -> 03da71c0e321, Convert consistency groups to share groups
2017-06-05 12:48:53.142 24686 INFO 03da71c0e321_convert_cgs_to_share_groups_py [-] Renaming consistency group tables
2017-06-05 12:49:03.684 24686 INFO alembic.runtime.migration [-] Running upgrade 03da71c0e321 -> e1949a93157a, Add share group types table
2017-06-05 12:49:06.104 24686 INFO alembic.runtime.migration [-] Running upgrade e1949a93157a -> a77e2ad5012d, add_share_snapshot_access
2017-06-05 12:49:07.505 24686 INFO alembic.runtime.migration [-] Running upgrade a77e2ad5012d -> 927920b37453, Add 'provider_location' attr to 'share_group_snapshot_members' model.
2017-06-05 12:49:08.031 24686 INFO alembic.runtime.migration [-] Running upgrade 927920b37453 -> d5db24264f5c, Add enum 'consistent_snapshot_support' attr to 'share_groups' model.

Manila Main Config Ready

Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-manila-api.service to /usr/lib/systemd/system/openstack-manila-api.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-manila-scheduler.service to /usr/lib/systemd/system/openstack-manila-scheduler.service.
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-manila-share.service to /usr/lib/systemd/system/openstack-manila-share.service.

Applying IPTABLES rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
+----------------------+--------------------------------------+
| Property             | Value                                |
+----------------------+--------------------------------------+
| required_extra_specs | driver_handles_share_servers : False |
| Name                 | LVM                                  |
| Visibility           | public                               |
| is_default           | -                                    |
| ID                   | 80f2cb0b-9dc6-41f3-8a0b-b9b7e54de6d6 |
| optional_extra_specs |                                      |
+----------------------+--------------------------------------+
+--------------------------------------+------+--------------------------------------+
| ID                                   | Name | all_extra_specs                      |
+--------------------------------------+------+--------------------------------------+
| 80f2cb0b-9dc6-41f3-8a0b-b9b7e54de6d6 | LVM  | share_backend_name : LVM             |
|                                      |      | driver_handles_share_servers : False |
+--------------------------------------+------+--------------------------------------+

Done


Manila Installed and Configured

OPENSTACK MANILA INSTALLED

Installing OPENSTACK MAGNUM

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Installing MAGNUM Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-magnumclient-2.5.0-1.el7.noarch already installed and latest version
Package openstack-utils-2017.1-1.el7.noarch already installed and latest version
Package openstack-selinux-0.7.13-2.el7.noarch already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-magnum-api.noarch 0:4.1.0-2.el7 will be installed
---> Package openstack-magnum-common.noarch 0:4.1.0-2.el7 will be installed
--> Processing Dependency: python-magnum = 4.1.0-2.el7 for package: openstack-magnum-common-4.1.0-2.el7.noarch
---> Package openstack-magnum-conductor.noarch 0:4.1.0-2.el7 will be installed
--> Running transaction check
---> Package python-magnum.noarch 0:4.1.0-2.el7 will be installed
--> Processing Dependency: python-marathon for package: python-magnum-4.1.0-2.el7.noarch
--> Processing Dependency: python-kubernetes for package: python-magnum-4.1.0-2.el7.noarch
--> Processing Dependency: python-docker-py for package: python-magnum-4.1.0-2.el7.noarch
--> Running transaction check
---> Package python-docker-py.noarch 0:1.10.6-1.el7 will be installed
--> Processing Dependency: python-websocket-client >= 0.32.0 for package: python-docker-py-1.10.6-1.el7.noarch
--> Processing Dependency: python-docker-pycreds for package: python-docker-py-1.10.6-1.el7.noarch
---> Package python2-kubernetes.noarch 0:1.0.0-0.3.b3.el7 will be installed
--> Processing Dependency: python-certifi for package: python2-kubernetes-1.0.0-0.3.b3.el7.noarch
---> Package python2-marathon.noarch 0:0.8.8-1.el7 will be installed
--> Running transaction check
---> Package python-docker-pycreds.noarch 0:1.10.6-1.el7 will be installed
---> Package python-websocket-client.noarch 0:0.34.0-3.el7 will be installed
---> Package python2-certifi.noarch 0:2016.9.26-2.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                   Arch   Version          Repository              Size
================================================================================
Installing:
 openstack-magnum-api      noarch 4.1.0-2.el7      centos-openstack-ocata 8.8 k
 openstack-magnum-common   noarch 4.1.0-2.el7      centos-openstack-ocata  25 k
 openstack-magnum-conductor
                           noarch 4.1.0-2.el7      centos-openstack-ocata 8.9 k
Installing for dependencies:
 python-docker-py          noarch 1.10.6-1.el7     extras                 101 k
 python-docker-pycreds     noarch 1.10.6-1.el7     extras                  18 k
 python-magnum             noarch 4.1.0-2.el7      centos-openstack-ocata 397 k
 python-websocket-client   noarch 0.34.0-3.el7     centos-openstack-ocata  57 k
 python2-certifi           noarch 2016.9.26-2.el7  centos-openstack-ocata 9.5 k
 python2-kubernetes        noarch 1.0.0-0.3.b3.el7 centos-openstack-ocata 524 k
 python2-marathon          noarch 0.8.8-1.el7      epel                    49 k

Transaction Summary
================================================================================
Install  3 Packages (+7 Dependent packages)

Total download size: 1.2 M
Installed size: 11 M
Downloading packages:
(1/10): openstack-magnum-common-4.1.0-2.el7.noarch.rpm     |  25 kB   00:01     
(2/10): openstack-magnum-conductor-4.1.0-2.el7.noarch.rpm  | 8.9 kB   00:00     
(3/10): openstack-magnum-api-4.1.0-2.el7.noarch.rpm        | 8.8 kB   00:01     
(4/10): python-magnum-4.1.0-2.el7.noarch.rpm               | 397 kB   00:00     
(5/10): python-docker-py-1.10.6-1.el7.noarch.rpm           | 101 kB   00:00     
(6/10): python-docker-pycreds-1.10.6-1.el7.noarch.rpm      |  18 kB   00:00     
(7/10): python2-certifi-2016.9.26-2.el7.noarch.rpm         | 9.5 kB   00:00     
(8/10): python-websocket-client-0.34.0-3.el7.noarch.rpm    |  57 kB   00:00     
(9/10): python2-kubernetes-1.0.0-0.3.b3.el7.noarch.rpm     | 524 kB   00:00     
(10/10): python2-marathon-0.8.8-1.el7.noarch.rpm           |  49 kB   00:00     
--------------------------------------------------------------------------------
Total                                              594 kB/s | 1.2 MB  00:02     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : python-websocket-client-0.34.0-3.el7.noarch                 1/10 
  Installing : python-docker-pycreds-1.10.6-1.el7.noarch                   2/10 
  Installing : python-docker-py-1.10.6-1.el7.noarch                        3/10 
  Installing : python2-certifi-2016.9.26-2.el7.noarch                      4/10 
  Installing : python2-kubernetes-1.0.0-0.3.b3.el7.noarch                  5/10 
  Installing : python2-marathon-0.8.8-1.el7.noarch                         6/10 
  Installing : python-magnum-4.1.0-2.el7.noarch                            7/10 
  Installing : openstack-magnum-common-4.1.0-2.el7.noarch                  8/10 
  Installing : openstack-magnum-api-4.1.0-2.el7.noarch                     9/10 
  Installing : openstack-magnum-conductor-4.1.0-2.el7.noarch              10/10 
  Verifying  : python2-marathon-0.8.8-1.el7.noarch                         1/10 
  Verifying  : python2-kubernetes-1.0.0-0.3.b3.el7.noarch                  2/10 
  Verifying  : python-websocket-client-0.34.0-3.el7.noarch                 3/10 
  Verifying  : openstack-magnum-api-4.1.0-2.el7.noarch                     4/10 
  Verifying  : python-docker-py-1.10.6-1.el7.noarch                        5/10 
  Verifying  : python-magnum-4.1.0-2.el7.noarch                            6/10 
  Verifying  : python2-certifi-2016.9.26-2.el7.noarch                      7/10 
  Verifying  : openstack-magnum-conductor-4.1.0-2.el7.noarch               8/10 
  Verifying  : python-docker-pycreds-1.10.6-1.el7.noarch                   9/10 
  Verifying  : openstack-magnum-common-4.1.0-2.el7.noarch                 10/10 

Installed:
  openstack-magnum-api.noarch 0:4.1.0-2.el7                                     
  openstack-magnum-common.noarch 0:4.1.0-2.el7                                  
  openstack-magnum-conductor.noarch 0:4.1.0-2.el7                               

Dependency Installed:
  python-docker-py.noarch 0:1.10.6-1.el7                                        
  python-docker-pycreds.noarch 0:1.10.6-1.el7                                   
  python-magnum.noarch 0:4.1.0-2.el7                                            
  python-websocket-client.noarch 0:0.34.0-3.el7                                 
  python2-certifi.noarch 0:2016.9.26-2.el7                                      
  python2-kubernetes.noarch 0:1.0.0-0.3.b3.el7                                  
  python2-marathon.noarch 0:0.8.8-1.el7                                         

Complete!
Done


Configuring MAGNUM


Magnum Configured


Provisioning MAGNUM Database

INFO  [alembic.runtime.migration] Context impl MySQLImpl.
INFO  [alembic.runtime.migration] Will assume non-transactional DDL.
INFO  [alembic.runtime.migration] Running upgrade  -> 2581ebaf0cb2, initial migration
INFO  [alembic.runtime.migration] Running upgrade 2581ebaf0cb2 -> 3bea56f25597, Multi Tenant Support
INFO  [alembic.runtime.migration] Running upgrade 3bea56f25597 -> 5793cd26898d, Add bay status
INFO  [alembic.runtime.migration] Running upgrade 5793cd26898d -> 3a938526b35d, Add docker volume size column
INFO  [alembic.runtime.migration] Running upgrade 3a938526b35d -> 35cff7c86221, add private network to baymodel
INFO  [alembic.runtime.migration] Running upgrade 35cff7c86221 -> 1afee1db6cd0, Add master flavor
INFO  [alembic.runtime.migration] Running upgrade 1afee1db6cd0 -> 2d1354bbf76e, ssh authorized key
INFO  [alembic.runtime.migration] Running upgrade 2d1354bbf76e -> 29affeaa2bc2, rename-bay-master-address
INFO  [alembic.runtime.migration] Running upgrade 29affeaa2bc2 -> 2ace4006498, rename-bay-minions-address
INFO  [alembic.runtime.migration] Running upgrade 2ace4006498 -> 456126c6c9e9, create baylock table
INFO  [alembic.runtime.migration] Running upgrade 456126c6c9e9 -> 4ea34a59a64c, add-discovery-url-to-bay
INFO  [alembic.runtime.migration] Running upgrade 4ea34a59a64c -> e772b2598d9, add-container-command
INFO  [alembic.runtime.migration] Running upgrade e772b2598d9 -> 2d8657c0cdc, add bay uuid
INFO  [alembic.runtime.migration] Running upgrade 2d8657c0cdc -> 4956f03cabad, add cluster distro
INFO  [alembic.runtime.migration] Running upgrade 4956f03cabad -> 592131657ca1, Add coe column to BayModel
INFO  [alembic.runtime.migration] Running upgrade 592131657ca1 -> 3b6c4c42adb4, Add unique constraints
INFO  [alembic.runtime.migration] Running upgrade 3b6c4c42adb4 -> 2b5f24dd95de, rename service port
INFO  [alembic.runtime.migration] Running upgrade 2b5f24dd95de -> 59e7664a8ba1, add_container_status
INFO  [alembic.runtime.migration] Running upgrade 59e7664a8ba1 -> 156ceb17fb0a, add_bay_status_reason
INFO  [alembic.runtime.migration] Running upgrade 156ceb17fb0a -> 1c1ff5e56048, rename_container_image_id
INFO  [alembic.runtime.migration] Running upgrade 1c1ff5e56048 -> 53882537ac57, add host column to pod
INFO  [alembic.runtime.migration] Running upgrade 53882537ac57 -> 14328d6a57e3, add master count to bay
INFO  [alembic.runtime.migration] Running upgrade 14328d6a57e3 -> 421102d1f2d2, create x509keypair table
INFO  [alembic.runtime.migration] Running upgrade 421102d1f2d2 -> 6f21dc998bb, Add master_addresses to bay
INFO  [alembic.runtime.migration] Running upgrade 6f21dc998bb -> 966a99e70ff, add-proxy
INFO  [alembic.runtime.migration] Running upgrade 966a99e70ff -> 6f21dc920bb, Add cert_uuuid to bay
INFO  [alembic.runtime.migration] Running upgrade 6f21dc920bb -> 5518af8dbc21, Rename cert_uuid
INFO  [alembic.runtime.migration] Running upgrade 5518af8dbc21 -> 4e263f236334, Add registry_enabled
INFO  [alembic.runtime.migration] Running upgrade 4e263f236334 -> 3be65537a94a, add_network_driver_baymodel_column
INFO  [alembic.runtime.migration] Running upgrade 3be65537a94a -> 1481f5b560dd, add labels column to baymodel table
INFO  [alembic.runtime.migration] Running upgrade 1481f5b560dd -> 1d045384b966, add-insecure-baymodel-attr
INFO  [alembic.runtime.migration] Running upgrade 1d045384b966 -> 27ad304554e2, adding magnum_service functionality
INFO  [alembic.runtime.migration] Running upgrade 27ad304554e2 -> 5ad410481b88, rename-insecure
INFO  [alembic.runtime.migration] Running upgrade 5ad410481b88 -> 2ae93c9c6191, add public column to baymodel table
INFO  [alembic.runtime.migration] Running upgrade 2ae93c9c6191 -> 33ef79969018, Add memory to container
INFO  [alembic.runtime.migration] Running upgrade 33ef79969018 -> 417917e778f5, Add server_type column to baymodel
INFO  [alembic.runtime.migration] Running upgrade 417917e778f5 -> 5977879072a7, add-env-to-container
INFO  [alembic.runtime.migration] Running upgrade 5977879072a7 -> 40f325033343, add bay_create_timeout to bay
INFO  [alembic.runtime.migration] Running upgrade 40f325033343 -> adc3b7679ae, add registry_trust_id to bay
INFO  [alembic.runtime.migration] Running upgrade adc3b7679ae -> 57fbdf2327a2, remove baylock
INFO  [alembic.runtime.migration] Running upgrade 57fbdf2327a2 -> 05d3e97de9ee, add volume driver
INFO  [alembic.runtime.migration] Running upgrade 05d3e97de9ee -> bb42b7cad130, remove node object
INFO  [alembic.runtime.migration] Running upgrade bb42b7cad130 -> 5d4caa6e0a42, create trustee for each bay
INFO  [alembic.runtime.migration] Running upgrade 5d4caa6e0a42 -> ee92b41b8809, Introduce Quotas
INFO  [alembic.runtime.migration] Running upgrade ee92b41b8809 -> 049f81f6f584, remove_ssh_authorized_key_from_baymodel
INFO  [alembic.runtime.migration] Running upgrade 049f81f6f584 -> e647f5931da8, add insecure_registry to baymodel
INFO  [alembic.runtime.migration] Running upgrade e647f5931da8 -> ef08a5e057bd, remove pod object
INFO  [alembic.runtime.migration] Running upgrade ef08a5e057bd -> d072f58ab240, modify x509keypair table
INFO  [alembic.runtime.migration] Running upgrade d072f58ab240 -> a1136d335540, Add docker storage driver column
INFO  [alembic.runtime.migration] Running upgrade a1136d335540 -> 085e601a39f6, remove service object
INFO  [alembic.runtime.migration] Running upgrade 085e601a39f6 -> 68ce16dfd341, add master_lb_enabled column to baymodel table
INFO  [alembic.runtime.migration] Running upgrade 68ce16dfd341 -> e0653b2d5271, Add fixed_subnet column to baymodel table
INFO  [alembic.runtime.migration] Running upgrade e0653b2d5271 -> 1f196a3dabae, remove container object
INFO  [alembic.runtime.migration] Running upgrade 1f196a3dabae -> 859fb45df249, remove replication controller
INFO  [alembic.runtime.migration] Running upgrade 859fb45df249 -> b1f612248cab, Add floating_ip_enabled column to baymodel table
INFO  [alembic.runtime.migration] Running upgrade b1f612248cab -> fcb4efee8f8b, add version info to bay
INFO  [alembic.runtime.migration] Running upgrade fcb4efee8f8b -> fb03fdef8919, rename_baymodel_to_clustertemplate
INFO  [alembic.runtime.migration] Running upgrade fb03fdef8919 -> 720f640f43d1, rename bay table to cluster
INFO  [alembic.runtime.migration] Running upgrade 720f640f43d1 -> bc46ba6cf949, add keypair to cluster

Done


Applying IPTABLES Rules
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Done

Cleaning UP App logs
ls: cannot access /var/log/magnum/*.log: No such file or directory
Done


Starting MAGNUM

Starting and Enabling Service: openstack-magnum-api
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-magnum-api.service to /usr/lib/systemd/system/openstack-magnum-api.service.
● openstack-magnum-api.service - OpenStack Magnum API Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-magnum-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:51:24 BST; 233ms ago
 Main PID: 25302 (magnum-api)
   CGroup: /system.slice/openstack-magnum-api.service
           └─25302 /usr/bin/python2 /usr/bin/magnum-api

Jun 05 12:51:24 richmond.bradstack.co.uk systemd[1]: Started OpenStack Magnum...
Jun 05 12:51:24 richmond.bradstack.co.uk systemd[1]: Starting OpenStack Magnu...
Hint: Some lines were ellipsized, use -l to show in full.
Starting and Enabling Service: openstack-magnum-conductor
Created symlink from /etc/systemd/system/multi-user.target.wants/openstack-magnum-conductor.service to /usr/lib/systemd/system/openstack-magnum-conductor.service.
● openstack-magnum-conductor.service - Openstack Magnum Conductor Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-magnum-conductor.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 12:51:24 BST; 235ms ago
 Main PID: 25328 (magnum-conducto)
   CGroup: /system.slice/openstack-magnum-conductor.service
           └─25328 /usr/bin/python2 /usr/bin/magnum-conductor

Jun 05 12:51:24 richmond.bradstack.co.uk systemd[1]: Started Openstack Magnum...
Jun 05 12:51:24 richmond.bradstack.co.uk systemd[1]: Starting Openstack Magnu...
Hint: Some lines were ellipsized, use -l to show in full.

Magnum Installed and Configured

OPENSTACK MAGNUM INSTALLED

INSTALLING SNMP SUPPORT

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Installing monitoring support

Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package 1:net-snmp-libs-5.7.2-24.el7_3.2.x86_64 already installed and latest version
Package bc-1.06.95-13.el7.x86_64 already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package net-snmp.x86_64 1:5.7.2-24.el7_3.2 will be installed
---> Package net-snmp-utils.x86_64 1:5.7.2-24.el7_3.2 will be installed
---> Package virt-top.x86_64 0:1.0.8-8.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package              Arch         Version                  Repository     Size
================================================================================
Installing:
 net-snmp             x86_64       1:5.7.2-24.el7_3.2       updates       321 k
 net-snmp-utils       x86_64       1:5.7.2-24.el7_3.2       updates       197 k
 virt-top             x86_64       1.0.8-8.el7              base          401 k

Transaction Summary
================================================================================
Install  3 Packages

Total download size: 919 k
Installed size: 2.6 M
Downloading packages:
(1/3): net-snmp-utils-5.7.2-24.el7_3.2.x86_64.rpm          | 197 kB   00:00     
(2/3): net-snmp-5.7.2-24.el7_3.2.x86_64.rpm                | 321 kB   00:00     
(3/3): virt-top-1.0.8-8.el7.x86_64.rpm                     | 401 kB   00:00     
--------------------------------------------------------------------------------
Total                                              4.1 MB/s | 919 kB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:net-snmp-5.7.2-24.el7_3.2.x86_64                           1/3 
  Installing : virt-top-1.0.8-8.el7.x86_64                                  2/3 
  Installing : 1:net-snmp-utils-5.7.2-24.el7_3.2.x86_64                     3/3 
  Verifying  : 1:net-snmp-utils-5.7.2-24.el7_3.2.x86_64                     1/3 
  Verifying  : virt-top-1.0.8-8.el7.x86_64                                  2/3 
  Verifying  : 1:net-snmp-5.7.2-24.el7_3.2.x86_64                           3/3 

Installed:
  net-snmp.x86_64 1:5.7.2-24.el7_3.2  net-snmp-utils.x86_64 1:5.7.2-24.el7_3.2 
  virt-top.x86_64 0:1.0.8-8.el7      

Complete!
‘./libs/snmp/scripts/node-cpu.sh’ -> ‘/usr/local/bin/node-cpu.sh’
‘./libs/snmp/scripts/node-memory.sh’ -> ‘/usr/local/bin/node-memory.sh’
‘./libs/snmp/scripts/vm-number-by-states.sh’ -> ‘/usr/local/bin/vm-number-by-states.sh’
‘./libs/snmp/scripts/vm-total-disk-bytes-usage.sh’ -> ‘/usr/local/bin/vm-total-disk-bytes-usage.sh’
‘./libs/snmp/crontab/openstack-monitor.crontab’ -> ‘/etc/cron.d/openstack-monitor.crontab’
Redirecting to /bin/systemctl reload  crond.service
Redirecting to /bin/systemctl restart  snmpd.service

Applying IPTABLES rules

iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]

SNMP Monitoring Support INSTALLED !

SNMP SUPPORT INSTALLED

Installing OPENSTACK HORIZON

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue


Installing Horizon Packages
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package memcached-1.4.33-2.el7.x86_64 already installed and latest version
Package python-memcached-1.54-3.el7.noarch already installed and latest version
Package httpd-2.4.6-45.el7.centos.4.x86_64 already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package openstack-dashboard.noarch 1:11.0.1-2.el7 will be installed
--> Processing Dependency: python-django-horizon = 1:11.0.1-2.el7 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-scss >= 1.3.4 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-django-pyscss >= 2.0.2 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-django-openstack-auth >= 3.1.0 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-django-compressor >= 2.0 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-roboto-fontface >= 0.5.0.0 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Angular >= 1:1.3.7 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: fontawesome-fonts-web >= 4.1.0 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-pint for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-django-appconf for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-tv4 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-termjs for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-smart-table for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-objectpath for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-mdi for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-jquery-ui for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-jQuery for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-bootswatch for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Spin for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Rickshaw for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-QUnit for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Magic-Search for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Jasmine for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-JSEncrypt for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-JQuery-quicksearch for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-JQuery-TableSorter for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-JQuery-Migrate for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Hogan for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Font-Awesome for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-D3 for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Bootstrap-SCSS for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Bootstrap-Datepicker for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Angular-lrdragndrop for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Angular-Schema-Form for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Angular-Mock for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Angular-Gettext for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Angular-FileUpload for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic-Angular-Bootstrap for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Processing Dependency: python-XStatic for package: 1:openstack-dashboard-11.0.1-2.el7.noarch
--> Running transaction check
---> Package fontawesome-fonts-web.noarch 0:4.4.0-1.el7 will be installed
--> Processing Dependency: fontawesome-fonts = 4.4.0-1.el7 for package: fontawesome-fonts-web-4.4.0-1.el7.noarch
---> Package python-XStatic-Angular-Mock.noarch 0:1.2.1.1-2.el7 will be installed
--> Processing Dependency: web-assets-filesystem for package: python-XStatic-Angular-Mock-1.2.1.1-2.el7.noarch
---> Package python-XStatic-Angular-lrdragndrop.noarch 0:1.0.2.2-2.el7 will be installed
---> Package python-XStatic-Bootstrap-Datepicker.noarch 0:1.3.1.0-1.el7 will be installed
---> Package python-XStatic-Bootstrap-SCSS.noarch 0:3.2.0.0-1.el7 will be installed
---> Package python-XStatic-Hogan.noarch 0:2.0.0.2-2.el7 will be installed
---> Package python-XStatic-JQuery-Migrate.noarch 0:1.2.1.1-2.el7 will be installed
---> Package python-XStatic-JQuery-TableSorter.noarch 0:2.14.5.1-2.el7 will be installed
---> Package python-XStatic-JQuery-quicksearch.noarch 0:2.0.3.1-2.el7 will be installed
---> Package python-XStatic-Jasmine.noarch 0:1.3.1.1-2.el7 will be installed
---> Package python-XStatic-Magic-Search.noarch 0:0.2.0.1-2.el7 will be installed
---> Package python-XStatic-QUnit.noarch 0:1.14.0.2-2.el7 will be installed
---> Package python-XStatic-Rickshaw.noarch 0:1.5.0.0-4.el7 will be installed
---> Package python-XStatic-Spin.noarch 0:1.2.5.2-2.el7 will be installed
---> Package python-XStatic-jQuery.noarch 0:1.10.2.1-1.el7 will be installed
---> Package python-XStatic-jquery-ui.noarch 0:1.10.4.1-1.el7 will be installed
---> Package python-XStatic-smart-table.noarch 0:1.4.5.3-5.el7.1 will be installed
---> Package python-XStatic-termjs.noarch 0:0.0.4.2-2.el7 will be installed
---> Package python-django-appconf.noarch 0:1.0.1-4.el7 will be installed
--> Processing Dependency: python-django for package: python-django-appconf-1.0.1-4.el7.noarch
---> Package python-django-compressor.noarch 0:2.0-1.el7 will be installed
--> Processing Dependency: python2-rjsmin for package: python-django-compressor-2.0-1.el7.noarch
--> Processing Dependency: python2-rcssmin for package: python-django-compressor-2.0-1.el7.noarch
---> Package python-django-horizon.noarch 1:11.0.1-2.el7 will be installed
---> Package python-django-pyscss.noarch 0:2.0.2-1.el7 will be installed
--> Processing Dependency: python-pathlib for package: python-django-pyscss-2.0.2-1.el7.noarch
---> Package python-pint.noarch 0:0.6-2.el7 will be installed
---> Package python2-XStatic.noarch 0:1.0.1-8.el7 will be installed
---> Package python2-XStatic-Angular.noarch 1:1.5.8.0-1.el7 will be installed
--> Processing Dependency: XStatic-Angular-common = 1:1.5.8.0-1.el7 for package: 1:python2-XStatic-Angular-1.5.8.0-1.el7.noarch
---> Package python2-XStatic-Angular-Bootstrap.noarch 0:2.2.0.0-1.el7 will be installed
--> Processing Dependency: xstatic-angular-bootstrap-common for package: python2-XStatic-Angular-Bootstrap-2.2.0.0-1.el7.noarch
---> Package python2-XStatic-Angular-FileUpload.noarch 0:12.0.4.0-1.el7 will be installed
--> Processing Dependency: xstatic-angular-fileupload-common for package: python2-XStatic-Angular-FileUpload-12.0.4.0-1.el7.noarch
---> Package python2-XStatic-Angular-Gettext.noarch 0:2.3.8.0-1.el7 will be installed
--> Processing Dependency: xstatic-angular-gettext-common for package: python2-XStatic-Angular-Gettext-2.3.8.0-1.el7.noarch
---> Package python2-XStatic-Angular-Schema-Form.noarch 0:0.8.13.0-0.1.pre_review.el7 will be installed
--> Processing Dependency: xstatic-angular-schema-form-common = 0.8.13.0-0.1.pre_review.el7 for package: python2-XStatic-Angular-Schema-Form-0.8.13.0-0.1.pre_review.el7.noarch
---> Package python2-XStatic-D3.noarch 0:3.5.17.0-1.el7 will be installed
--> Processing Dependency: xstatic-d3-common for package: python2-XStatic-D3-3.5.17.0-1.el7.noarch
---> Package python2-XStatic-Font-Awesome.noarch 0:4.7.0.0-3.el7 will be installed
---> Package python2-XStatic-JSEncrypt.noarch 0:2.3.1.1-1.el7 will be installed
--> Processing Dependency: xstatic-jsencrypt-common for package: python2-XStatic-JSEncrypt-2.3.1.1-1.el7.noarch
---> Package python2-XStatic-bootswatch.noarch 0:3.3.7.0-1.el7 will be installed
--> Processing Dependency: bootswatch-fonts = 3.3.7.0-1.el7 for package: python2-XStatic-bootswatch-3.3.7.0-1.el7.noarch
--> Processing Dependency: bootswatch-common = 3.3.7.0-1.el7 for package: python2-XStatic-bootswatch-3.3.7.0-1.el7.noarch
---> Package python2-XStatic-mdi.noarch 0:1.1.70.1-5.el7 will be installed
--> Processing Dependency: mdi-fonts = 1.1.70.1-5.el7 for package: python2-XStatic-mdi-1.1.70.1-5.el7.noarch
--> Processing Dependency: mdi-common = 1.1.70.1-5.el7 for package: python2-XStatic-mdi-1.1.70.1-5.el7.noarch
---> Package python2-XStatic-objectpath.noarch 0:1.2.1.0-0.1.pre_review.el7 will be installed
--> Processing Dependency: xstatic-objectpath-common = 1.2.1.0-0.1.pre_review.el7 for package: python2-XStatic-objectpath-1.2.1.0-0.1.pre_review.el7.noarch
---> Package python2-XStatic-roboto-fontface.noarch 0:0.5.0.0-1.el7 will be installed
--> Processing Dependency: roboto-fontface-fonts = 0.5.0.0-1.el7 for package: python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noarch
--> Processing Dependency: roboto-fontface-common = 0.5.0.0-1.el7 for package: python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noarch
---> Package python2-XStatic-tv4.noarch 0:1.2.7.0-0.1.pre_review.el7 will be installed
--> Processing Dependency: xstatic-tv4-common = 1.2.7.0-0.1.pre_review.el7 for package: python2-XStatic-tv4-1.2.7.0-0.1.pre_review.el7.noarch
---> Package python2-django-openstack-auth.noarch 0:3.1.1-1.el7 will be installed
---> Package python2-scss.x86_64 0:1.3.4-6.el7 will be installed
--> Running transaction check
---> Package XStatic-Angular-common.noarch 1:1.5.8.0-1.el7 will be installed
---> Package bootswatch-common.noarch 0:3.3.7.0-1.el7 will be installed
---> Package bootswatch-fonts.noarch 0:3.3.7.0-1.el7 will be installed
---> Package fontawesome-fonts.noarch 0:4.4.0-1.el7 will be installed
---> Package mdi-common.noarch 0:1.1.70.1-5.el7 will be installed
---> Package mdi-fonts.noarch 0:1.1.70.1-5.el7 will be installed
---> Package python-django.noarch 0:1.8.14-1.el7 will be installed
--> Processing Dependency: python-django-bash-completion = 1.8.14-1.el7 for package: python-django-1.8.14-1.el7.noarch
---> Package python-pathlib.noarch 0:1.0.1-1.el7 will be installed
---> Package python2-rcssmin.x86_64 0:1.0.6-2.el7 will be installed
---> Package python2-rjsmin.x86_64 0:1.0.12-2.el7 will be installed
---> Package roboto-fontface-common.noarch 0:0.5.0.0-1.el7 will be installed
---> Package roboto-fontface-fonts.noarch 0:0.5.0.0-1.el7 will be installed
---> Package web-assets-filesystem.noarch 0:5-1.el7 will be installed
---> Package xstatic-angular-bootstrap-common.noarch 0:2.2.0.0-1.el7 will be installed
---> Package xstatic-angular-fileupload-common.noarch 0:12.0.4.0-1.el7 will be installed
---> Package xstatic-angular-gettext-common.noarch 0:2.3.8.0-1.el7 will be installed
---> Package xstatic-angular-schema-form-common.noarch 0:0.8.13.0-0.1.pre_review.el7 will be installed
---> Package xstatic-d3-common.noarch 0:3.5.17.0-1.el7 will be installed
---> Package xstatic-jsencrypt-common.noarch 0:2.3.1.1-1.el7 will be installed
---> Package xstatic-objectpath-common.noarch 0:1.2.1.0-0.1.pre_review.el7 will be installed
---> Package xstatic-tv4-common.noarch 0:1.2.7.0-0.1.pre_review.el7 will be installed
--> Running transaction check
---> Package python-django-bash-completion.noarch 0:1.8.14-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                    Arch   Version         Repository              Size
================================================================================
Installing:
 openstack-dashboard        noarch 1:11.0.1-2.el7  centos-openstack-ocata  11 M
Installing for dependencies:
 XStatic-Angular-common     noarch 1:1.5.8.0-1.el7 centos-openstack-ocata 455 k
 bootswatch-common          noarch 3.3.7.0-1.el7   centos-openstack-ocata 619 k
 bootswatch-fonts           noarch 3.3.7.0-1.el7   centos-openstack-ocata 112 k
 fontawesome-fonts          noarch 4.4.0-1.el7     centos-openstack-ocata 160 k
 fontawesome-fonts-web      noarch 4.4.0-1.el7     centos-openstack-ocata 274 k
 mdi-common                 noarch 1.1.70.1-5.el7  centos-openstack-ocata  30 k
 mdi-fonts                  noarch 1.1.70.1-5.el7  centos-openstack-ocata 384 k
 python-XStatic-Angular-Mock
                            noarch 1.2.1.1-2.el7   centos-openstack-ocata  23 k
 python-XStatic-Angular-lrdragndrop
                            noarch 1.0.2.2-2.el7   centos-openstack-ocata 9.7 k
 python-XStatic-Bootstrap-Datepicker
                            noarch 1.3.1.0-1.el7   centos-openstack-ocata  41 k
 python-XStatic-Bootstrap-SCSS
                            noarch 3.2.0.0-1.el7   centos-openstack-ocata 156 k
 python-XStatic-Hogan       noarch 2.0.0.2-2.el7   centos-openstack-ocata  12 k
 python-XStatic-JQuery-Migrate
                            noarch 1.2.1.1-2.el7   centos-openstack-ocata  16 k
 python-XStatic-JQuery-TableSorter
                            noarch 2.14.5.1-2.el7  centos-openstack-ocata  24 k
 python-XStatic-JQuery-quicksearch
                            noarch 2.0.3.1-2.el7   centos-openstack-ocata  12 k
 python-XStatic-Jasmine     noarch 1.3.1.1-2.el7   centos-openstack-ocata  28 k
 python-XStatic-Magic-Search
                            noarch 0.2.0.1-2.el7   centos-openstack-ocata  13 k
 python-XStatic-QUnit       noarch 1.14.0.2-2.el7  centos-openstack-ocata  26 k
 python-XStatic-Rickshaw    noarch 1.5.0.0-4.el7   centos-openstack-ocata  32 k
 python-XStatic-Spin        noarch 1.2.5.2-2.el7   centos-openstack-ocata  10 k
 python-XStatic-jQuery      noarch 1.10.2.1-1.el7  centos-openstack-ocata 112 k
 python-XStatic-jquery-ui   noarch 1.10.4.1-1.el7  centos-openstack-ocata 327 k
 python-XStatic-smart-table noarch 1.4.5.3-5.el7.1 centos-openstack-ocata  12 k
 python-XStatic-termjs      noarch 0.0.4.2-2.el7   centos-openstack-ocata  38 k
 python-django              noarch 1.8.14-1.el7    centos-openstack-ocata 3.5 M
 python-django-appconf      noarch 1.0.1-4.el7     centos-openstack-ocata  88 k
 python-django-bash-completion
                            noarch 1.8.14-1.el7    centos-openstack-ocata 8.4 k
 python-django-compressor   noarch 2.0-1.el7       centos-openstack-ocata 169 k
 python-django-horizon      noarch 1:11.0.1-2.el7  centos-openstack-ocata 684 k
 python-django-pyscss       noarch 2.0.2-1.el7     centos-openstack-ocata  16 k
 python-pathlib             noarch 1.0.1-1.el7     centos-openstack-ocata 109 k
 python-pint                noarch 0.6-2.el7       centos-openstack-ocata 258 k
 python2-XStatic            noarch 1.0.1-8.el7     centos-openstack-ocata 8.4 k
 python2-XStatic-Angular    noarch 1:1.5.8.0-1.el7 centos-openstack-ocata  13 k
 python2-XStatic-Angular-Bootstrap
                            noarch 2.2.0.0-1.el7   centos-openstack-ocata 8.6 k
 python2-XStatic-Angular-FileUpload
                            noarch 12.0.4.0-1.el7  centos-openstack-ocata 8.8 k
 python2-XStatic-Angular-Gettext
                            noarch 2.3.8.0-1.el7   centos-openstack-ocata 8.3 k
 python2-XStatic-Angular-Schema-Form
                            noarch 0.8.13.0-0.1.pre_review.el7
                                                   centos-openstack-ocata 8.8 k
 python2-XStatic-D3         noarch 3.5.17.0-1.el7  centos-openstack-ocata 8.3 k
 python2-XStatic-Font-Awesome
                            noarch 4.7.0.0-3.el7   centos-openstack-ocata  11 k
 python2-XStatic-JSEncrypt  noarch 2.3.1.1-1.el7   centos-openstack-ocata 8.4 k
 python2-XStatic-bootswatch noarch 3.3.7.0-1.el7   centos-openstack-ocata  11 k
 python2-XStatic-mdi        noarch 1.1.70.1-5.el7  centos-openstack-ocata  17 k
 python2-XStatic-objectpath noarch 1.2.1.0-0.1.pre_review.el7
                                                   centos-openstack-ocata 8.6 k
 python2-XStatic-roboto-fontface
                            noarch 0.5.0.0-1.el7   centos-openstack-ocata 9.7 k
 python2-XStatic-tv4        noarch 1.2.7.0-0.1.pre_review.el7
                                                   centos-openstack-ocata 8.2 k
 python2-django-openstack-auth
                            noarch 3.1.1-1.el7     centos-openstack-ocata  77 k
 python2-rcssmin            x86_64 1.0.6-2.el7     centos-openstack-ocata  25 k
 python2-rjsmin             x86_64 1.0.12-2.el7    centos-openstack-ocata  22 k
 python2-scss               x86_64 1.3.4-6.el7     centos-openstack-ocata 245 k
 roboto-fontface-common     noarch 0.5.0.0-1.el7   centos-openstack-ocata  15 k
 roboto-fontface-fonts      noarch 0.5.0.0-1.el7   centos-openstack-ocata 4.1 M
 web-assets-filesystem      noarch 5-1.el7         centos-openstack-ocata 4.1 k
 xstatic-angular-bootstrap-common
                            noarch 2.2.0.0-1.el7   centos-openstack-ocata  56 k
 xstatic-angular-fileupload-common
                            noarch 12.0.4.0-1.el7  centos-openstack-ocata 147 k
 xstatic-angular-gettext-common
                            noarch 2.3.8.0-1.el7   centos-openstack-ocata  12 k
 xstatic-angular-schema-form-common
                            noarch 0.8.13.0-0.1.pre_review.el7
                                                   centos-openstack-ocata  40 k
 xstatic-d3-common          noarch 3.5.17.0-1.el7  centos-openstack-ocata  73 k
 xstatic-jsencrypt-common   noarch 2.3.1.1-1.el7   centos-openstack-ocata  34 k
 xstatic-objectpath-common  noarch 1.2.1.0-0.1.pre_review.el7
                                                   centos-openstack-ocata 5.7 k
 xstatic-tv4-common         noarch 1.2.7.0-0.1.pre_review.el7
                                                   centos-openstack-ocata  23 k

Transaction Summary
================================================================================
Install  1 Package (+61 Dependent packages)

Total download size: 24 M
Installed size: 112 M
Downloading packages:
(1/62): XStatic-Angular-common-1.5.8.0-1.el7.noarch.rpm    | 455 kB   00:00     
(2/62): bootswatch-common-3.3.7.0-1.el7.noarch.rpm         | 619 kB   00:00     
(3/62): fontawesome-fonts-4.4.0-1.el7.noarch.rpm           | 160 kB   00:00     
(4/62): bootswatch-fonts-3.3.7.0-1.el7.noarch.rpm          | 112 kB   00:00     
(5/62): fontawesome-fonts-web-4.4.0-1.el7.noarch.rpm       | 274 kB   00:00     
(6/62): mdi-common-1.1.70.1-5.el7.noarch.rpm               |  30 kB   00:00     
(7/62): mdi-fonts-1.1.70.1-5.el7.noarch.rpm                | 384 kB   00:00     
(8/62): python-XStatic-Angular-Mock-1.2.1.1-2.el7.noarch.r |  23 kB   00:00     
(9/62): python-XStatic-Angular-lrdragndrop-1.0.2.2-2.el7.n | 9.7 kB   00:00     
(10/62): python-XStatic-Bootstrap-Datepicker-1.3.1.0-1.el7 |  41 kB   00:00     
(11/62): python-XStatic-Bootstrap-SCSS-3.2.0.0-1.el7.noarc | 156 kB   00:00     
(12/62): python-XStatic-Hogan-2.0.0.2-2.el7.noarch.rpm     |  12 kB   00:00     
(13/62): python-XStatic-JQuery-Migrate-1.2.1.1-2.el7.noarc |  16 kB   00:00     
(14/62): python-XStatic-JQuery-TableSorter-2.14.5.1-2.el7. |  24 kB   00:00     
(15/62): python-XStatic-JQuery-quicksearch-2.0.3.1-2.el7.n |  12 kB   00:00     
(16/62): python-XStatic-Jasmine-1.3.1.1-2.el7.noarch.rpm   |  28 kB   00:00     
(17/62): python-XStatic-Magic-Search-0.2.0.1-2.el7.noarch. |  13 kB   00:00     
(18/62): python-XStatic-QUnit-1.14.0.2-2.el7.noarch.rpm    |  26 kB   00:00     
(19/62): python-XStatic-Rickshaw-1.5.0.0-4.el7.noarch.rpm  |  32 kB   00:00     
(20/62): python-XStatic-Spin-1.2.5.2-2.el7.noarch.rpm      |  10 kB   00:00     
(21/62): openstack-dashboard-11.0.1-2.el7.noarch.rpm       |  11 MB   00:01     
(22/62): python-XStatic-jQuery-1.10.2.1-1.el7.noarch.rpm   | 112 kB   00:00     
(23/62): python-XStatic-jquery-ui-1.10.4.1-1.el7.noarch.rp | 327 kB   00:00     
(24/62): python-XStatic-smart-table-1.4.5.3-5.el7.1.noarch |  12 kB   00:00     
(25/62): python-XStatic-termjs-0.0.4.2-2.el7.noarch.rpm    |  38 kB   00:00     
(26/62): python-django-appconf-1.0.1-4.el7.noarch.rpm      |  88 kB   00:00     
(27/62): python-django-bash-completion-1.8.14-1.el7.noarch | 8.4 kB   00:00     
(28/62): python-django-compressor-2.0-1.el7.noarch.rpm     | 169 kB   00:00     
(29/62): python-django-1.8.14-1.el7.noarch.rpm             | 3.5 MB   00:00     
(30/62): python-django-horizon-11.0.1-2.el7.noarch.rpm     | 684 kB   00:00     
(31/62): python-django-pyscss-2.0.2-1.el7.noarch.rpm       |  16 kB   00:00     
(32/62): python-pathlib-1.0.1-1.el7.noarch.rpm             | 109 kB   00:00     
(33/62): python-pint-0.6-2.el7.noarch.rpm                  | 258 kB   00:00     
(34/62): python2-XStatic-1.0.1-8.el7.noarch.rpm            | 8.4 kB   00:00     
(35/62): python2-XStatic-Angular-1.5.8.0-1.el7.noarch.rpm  |  13 kB   00:00     
(36/62): python2-XStatic-Angular-Bootstrap-2.2.0.0-1.el7.n | 8.6 kB   00:00     
(37/62): python2-XStatic-Angular-FileUpload-12.0.4.0-1.el7 | 8.8 kB   00:00     
(38/62): python2-XStatic-Angular-Gettext-2.3.8.0-1.el7.noa | 8.3 kB   00:00     
(39/62): python2-XStatic-Angular-Schema-Form-0.8.13.0-0.1. | 8.8 kB   00:00     
(40/62): python2-XStatic-D3-3.5.17.0-1.el7.noarch.rpm      | 8.3 kB   00:00     
(41/62): python2-XStatic-Font-Awesome-4.7.0.0-3.el7.noarch |  11 kB   00:00     
(42/62): python2-XStatic-JSEncrypt-2.3.1.1-1.el7.noarch.rp | 8.4 kB   00:00     
(43/62): python2-XStatic-bootswatch-3.3.7.0-1.el7.noarch.r |  11 kB   00:00     
(44/62): python2-XStatic-mdi-1.1.70.1-5.el7.noarch.rpm     |  17 kB   00:00     
(45/62): python2-XStatic-objectpath-1.2.1.0-0.1.pre_review | 8.6 kB   00:00     
(46/62): python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noa | 9.7 kB   00:00     
(47/62): python2-XStatic-tv4-1.2.7.0-0.1.pre_review.el7.no | 8.2 kB   00:00     
(48/62): python2-django-openstack-auth-3.1.1-1.el7.noarch. |  77 kB   00:00     
(49/62): python2-rcssmin-1.0.6-2.el7.x86_64.rpm            |  25 kB   00:00     
(50/62): python2-rjsmin-1.0.12-2.el7.x86_64.rpm            |  22 kB   00:00     
(51/62): python2-scss-1.3.4-6.el7.x86_64.rpm               | 245 kB   00:00     
(52/62): roboto-fontface-common-0.5.0.0-1.el7.noarch.rpm   |  15 kB   00:00     
(53/62): web-assets-filesystem-5-1.el7.noarch.rpm          | 4.1 kB   00:00     
(54/62): xstatic-angular-bootstrap-common-2.2.0.0-1.el7.no |  56 kB   00:00     
(55/62): xstatic-angular-fileupload-common-12.0.4.0-1.el7. | 147 kB   00:00     
(56/62): xstatic-angular-gettext-common-2.3.8.0-1.el7.noar |  12 kB   00:00     
(57/62): roboto-fontface-fonts-0.5.0.0-1.el7.noarch.rpm    | 4.1 MB   00:00     
(58/62): xstatic-angular-schema-form-common-0.8.13.0-0.1.p |  40 kB   00:00     
(59/62): xstatic-d3-common-3.5.17.0-1.el7.noarch.rpm       |  73 kB   00:00     
(60/62): xstatic-jsencrypt-common-2.3.1.1-1.el7.noarch.rpm |  34 kB   00:00     
(61/62): xstatic-objectpath-common-1.2.1.0-0.1.pre_review. | 5.7 kB   00:00     
(62/62): xstatic-tv4-common-1.2.7.0-0.1.pre_review.el7.noa |  23 kB   00:00     
--------------------------------------------------------------------------------
Total                                              6.3 MB/s |  24 MB  00:03     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : python2-XStatic-1.0.1-8.el7.noarch                          1/62 
  Installing : web-assets-filesystem-5-1.el7.noarch                        2/62 
  Installing : python2-scss-1.3.4-6.el7.x86_64                             3/62 
  Installing : python-XStatic-Angular-lrdragndrop-1.0.2.2-2.el7.noarch     4/62 
  Installing : python-XStatic-Bootstrap-SCSS-3.2.0.0-1.el7.noarch          5/62 
  Installing : xstatic-angular-gettext-common-2.3.8.0-1.el7.noarch         6/62 
  Installing : python2-XStatic-Angular-Gettext-2.3.8.0-1.el7.noarch        7/62 
  Installing : python-XStatic-smart-table-1.4.5.3-5.el7.1.noarch           8/62 
  Installing : mdi-common-1.1.70.1-5.el7.noarch                            9/62 
  Installing : python-XStatic-termjs-0.0.4.2-2.el7.noarch                 10/62 
  Installing : python-XStatic-Hogan-2.0.0.2-2.el7.noarch                  11/62 
  Installing : xstatic-d3-common-3.5.17.0-1.el7.noarch                    12/62 
  Installing : python2-XStatic-D3-3.5.17.0-1.el7.noarch                   13/62 
  Installing : bootswatch-common-3.3.7.0-1.el7.noarch                     14/62 
  Installing : xstatic-tv4-common-1.2.7.0-0.1.pre_review.el7.noarch       15/62 
  Installing : python2-XStatic-tv4-1.2.7.0-0.1.pre_review.el7.noarch      16/62 
  Installing : python-XStatic-Rickshaw-1.5.0.0-4.el7.noarch               17/62 
  Installing : python-XStatic-Spin-1.2.5.2-2.el7.noarch                   18/62 
  Installing : python-XStatic-JQuery-Migrate-1.2.1.1-2.el7.noarch         19/62 
  Installing : 1:XStatic-Angular-common-1.5.8.0-1.el7.noarch              20/62 
  Installing : 1:python2-XStatic-Angular-1.5.8.0-1.el7.noarch             21/62 
  Installing : roboto-fontface-common-0.5.0.0-1.el7.noarch                22/62 
  Installing : python-XStatic-JQuery-TableSorter-2.14.5.1-2.el7.noarch    23/62 
  Installing : python-XStatic-JQuery-quicksearch-2.0.3.1-2.el7.noarch     24/62 
  Installing : python-XStatic-Magic-Search-0.2.0.1-2.el7.noarch           25/62 
  Installing : python-XStatic-Bootstrap-Datepicker-1.3.1.0-1.el7.noarch   26/62 
  Installing : python-XStatic-jquery-ui-1.10.4.1-1.el7.noarch             27/62 
  Installing : xstatic-angular-fileupload-common-12.0.4.0-1.el7.noarch    28/62 
  Installing : python2-XStatic-Angular-FileUpload-12.0.4.0-1.el7.noarch   29/62 
  Installing : xstatic-angular-bootstrap-common-2.2.0.0-1.el7.noarch      30/62 
  Installing : python2-XStatic-Angular-Bootstrap-2.2.0.0-1.el7.noarch     31/62 
  Installing : xstatic-angular-schema-form-common-0.8.13.0-0.1.pre_revi   32/62 
  Installing : python2-XStatic-Angular-Schema-Form-0.8.13.0-0.1.pre_rev   33/62 
  Installing : python-XStatic-Jasmine-1.3.1.1-2.el7.noarch                34/62 
  Installing : xstatic-objectpath-common-1.2.1.0-0.1.pre_review.el7.noa   35/62 
  Installing : python2-XStatic-objectpath-1.2.1.0-0.1.pre_review.el7.no   36/62 
  Installing : python-XStatic-Angular-Mock-1.2.1.1-2.el7.noarch           37/62 
  Installing : xstatic-jsencrypt-common-2.3.1.1-1.el7.noarch              38/62 
  Installing : python2-XStatic-JSEncrypt-2.3.1.1-1.el7.noarch             39/62 
  Installing : python-XStatic-QUnit-1.14.0.2-2.el7.noarch                 40/62 
  Installing : python2-XStatic-Font-Awesome-4.7.0.0-3.el7.noarch          41/62 
  Installing : python-XStatic-jQuery-1.10.2.1-1.el7.noarch                42/62 
  Installing : python2-rcssmin-1.0.6-2.el7.x86_64                         43/62 
  Installing : python-pathlib-1.0.1-1.el7.noarch                          44/62 
  Installing : fontawesome-fonts-4.4.0-1.el7.noarch                       45/62 
  Installing : fontawesome-fonts-web-4.4.0-1.el7.noarch                   46/62 
  Installing : python-pint-0.6-2.el7.noarch                               47/62 
  Installing : roboto-fontface-fonts-0.5.0.0-1.el7.noarch                 48/62 
  Installing : python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noarch       49/62 
  Installing : bootswatch-fonts-3.3.7.0-1.el7.noarch                      50/62 
  Installing : python2-XStatic-bootswatch-3.3.7.0-1.el7.noarch            51/62 
  Installing : python-django-bash-completion-1.8.14-1.el7.noarch          52/62 
  Installing : python-django-1.8.14-1.el7.noarch                          53/62 
  Installing : python-django-appconf-1.0.1-4.el7.noarch                   54/62 
  Installing : python-django-pyscss-2.0.2-1.el7.noarch                    55/62 
  Installing : python2-django-openstack-auth-3.1.1-1.el7.noarch           56/62 
  Installing : 1:python-django-horizon-11.0.1-2.el7.noarch                57/62 
  Installing : mdi-fonts-1.1.70.1-5.el7.noarch                            58/62 
  Installing : python2-XStatic-mdi-1.1.70.1-5.el7.noarch                  59/62 
  Installing : python2-rjsmin-1.0.12-2.el7.x86_64                         60/62 
  Installing : python-django-compressor-2.0-1.el7.noarch                  61/62 
  Installing : 1:openstack-dashboard-11.0.1-2.el7.noarch                  62/62 
  Verifying  : python2-scss-1.3.4-6.el7.x86_64                             1/62 
  Verifying  : python-XStatic-Angular-lrdragndrop-1.0.2.2-2.el7.noarch     2/62 
  Verifying  : python2-rjsmin-1.0.12-2.el7.x86_64                          3/62 
  Verifying  : python2-XStatic-1.0.1-8.el7.noarch                          4/62 
  Verifying  : python2-XStatic-Font-Awesome-4.7.0.0-3.el7.noarch           5/62 
  Verifying  : python2-XStatic-mdi-1.1.70.1-5.el7.noarch                   6/62 
  Verifying  : python-XStatic-Bootstrap-SCSS-3.2.0.0-1.el7.noarch          7/62 
  Verifying  : xstatic-angular-gettext-common-2.3.8.0-1.el7.noarch         8/62 
  Verifying  : python-XStatic-smart-table-1.4.5.3-5.el7.1.noarch           9/62 
  Verifying  : mdi-common-1.1.70.1-5.el7.noarch                           10/62 
  Verifying  : python-XStatic-termjs-0.0.4.2-2.el7.noarch                 11/62 
  Verifying  : python2-XStatic-Angular-Bootstrap-2.2.0.0-1.el7.noarch     12/62 
  Verifying  : python-django-compressor-2.0-1.el7.noarch                  13/62 
  Verifying  : python-XStatic-Hogan-2.0.0.2-2.el7.noarch                  14/62 
  Verifying  : python-django-1.8.14-1.el7.noarch                          15/62 
  Verifying  : mdi-fonts-1.1.70.1-5.el7.noarch                            16/62 
  Verifying  : xstatic-d3-common-3.5.17.0-1.el7.noarch                    17/62 
  Verifying  : python-django-bash-completion-1.8.14-1.el7.noarch          18/62 
  Verifying  : bootswatch-common-3.3.7.0-1.el7.noarch                     19/62 
  Verifying  : bootswatch-fonts-3.3.7.0-1.el7.noarch                      20/62 
  Verifying  : python2-XStatic-Angular-Schema-Form-0.8.13.0-0.1.pre_rev   21/62 
  Verifying  : xstatic-tv4-common-1.2.7.0-0.1.pre_review.el7.noarch       22/62 
  Verifying  : python-XStatic-Rickshaw-1.5.0.0-4.el7.noarch               23/62 
  Verifying  : python2-XStatic-Angular-FileUpload-12.0.4.0-1.el7.noarch   24/62 
  Verifying  : python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noarch       25/62 
  Verifying  : 1:python2-XStatic-Angular-1.5.8.0-1.el7.noarch             26/62 
  Verifying  : python-XStatic-Spin-1.2.5.2-2.el7.noarch                   27/62 
  Verifying  : python2-XStatic-D3-3.5.17.0-1.el7.noarch                   28/62 
  Verifying  : python-XStatic-JQuery-Migrate-1.2.1.1-2.el7.noarch         29/62 
  Verifying  : 1:XStatic-Angular-common-1.5.8.0-1.el7.noarch              30/62 
  Verifying  : roboto-fontface-fonts-0.5.0.0-1.el7.noarch                 31/62 
  Verifying  : roboto-fontface-common-0.5.0.0-1.el7.noarch                32/62 
  Verifying  : python-pint-0.6-2.el7.noarch                               33/62 
  Verifying  : python-XStatic-jQuery-1.10.2.1-1.el7.noarch                34/62 
  Verifying  : python-XStatic-JQuery-TableSorter-2.14.5.1-2.el7.noarch    35/62 
  Verifying  : 1:openstack-dashboard-11.0.1-2.el7.noarch                  36/62 
  Verifying  : python-XStatic-JQuery-quicksearch-2.0.3.1-2.el7.noarch     37/62 
  Verifying  : python-XStatic-Magic-Search-0.2.0.1-2.el7.noarch           38/62 
  Verifying  : python-django-pyscss-2.0.2-1.el7.noarch                    39/62 
  Verifying  : python2-django-openstack-auth-3.1.1-1.el7.noarch           40/62 
  Verifying  : python-XStatic-Bootstrap-Datepicker-1.3.1.0-1.el7.noarch   41/62 
  Verifying  : python-XStatic-jquery-ui-1.10.4.1-1.el7.noarch             42/62 
  Verifying  : fontawesome-fonts-4.4.0-1.el7.noarch                       43/62 
  Verifying  : xstatic-angular-fileupload-common-12.0.4.0-1.el7.noarch    44/62 
  Verifying  : python2-XStatic-tv4-1.2.7.0-0.1.pre_review.el7.noarch      45/62 
  Verifying  : python-pathlib-1.0.1-1.el7.noarch                          46/62 
  Verifying  : xstatic-angular-bootstrap-common-2.2.0.0-1.el7.noarch      47/62 
  Verifying  : xstatic-angular-schema-form-common-0.8.13.0-0.1.pre_revi   48/62 
  Verifying  : python2-XStatic-objectpath-1.2.1.0-0.1.pre_review.el7.no   49/62 
  Verifying  : python-django-appconf-1.0.1-4.el7.noarch                   50/62 
  Verifying  : 1:python-django-horizon-11.0.1-2.el7.noarch                51/62 
  Verifying  : python-XStatic-Jasmine-1.3.1.1-2.el7.noarch                52/62 
  Verifying  : python2-XStatic-JSEncrypt-2.3.1.1-1.el7.noarch             53/62 
  Verifying  : python2-XStatic-Angular-Gettext-2.3.8.0-1.el7.noarch       54/62 
  Verifying  : python2-rcssmin-1.0.6-2.el7.x86_64                         55/62 
  Verifying  : python2-XStatic-bootswatch-3.3.7.0-1.el7.noarch            56/62 
  Verifying  : web-assets-filesystem-5-1.el7.noarch                       57/62 
  Verifying  : xstatic-objectpath-common-1.2.1.0-0.1.pre_review.el7.noa   58/62 
  Verifying  : python-XStatic-Angular-Mock-1.2.1.1-2.el7.noarch           59/62 
  Verifying  : fontawesome-fonts-web-4.4.0-1.el7.noarch                   60/62 
  Verifying  : xstatic-jsencrypt-common-2.3.1.1-1.el7.noarch              61/62 
  Verifying  : python-XStatic-QUnit-1.14.0.2-2.el7.noarch                 62/62 

Installed:
  openstack-dashboard.noarch 1:11.0.1-2.el7                                     

Dependency Installed:
  XStatic-Angular-common.noarch 1:1.5.8.0-1.el7                                 
  bootswatch-common.noarch 0:3.3.7.0-1.el7                                      
  bootswatch-fonts.noarch 0:3.3.7.0-1.el7                                       
  fontawesome-fonts.noarch 0:4.4.0-1.el7                                        
  fontawesome-fonts-web.noarch 0:4.4.0-1.el7                                    
  mdi-common.noarch 0:1.1.70.1-5.el7                                            
  mdi-fonts.noarch 0:1.1.70.1-5.el7                                             
  python-XStatic-Angular-Mock.noarch 0:1.2.1.1-2.el7                            
  python-XStatic-Angular-lrdragndrop.noarch 0:1.0.2.2-2.el7                     
  python-XStatic-Bootstrap-Datepicker.noarch 0:1.3.1.0-1.el7                    
  python-XStatic-Bootstrap-SCSS.noarch 0:3.2.0.0-1.el7                          
  python-XStatic-Hogan.noarch 0:2.0.0.2-2.el7                                   
  python-XStatic-JQuery-Migrate.noarch 0:1.2.1.1-2.el7                          
  python-XStatic-JQuery-TableSorter.noarch 0:2.14.5.1-2.el7                     
  python-XStatic-JQuery-quicksearch.noarch 0:2.0.3.1-2.el7                      
  python-XStatic-Jasmine.noarch 0:1.3.1.1-2.el7                                 
  python-XStatic-Magic-Search.noarch 0:0.2.0.1-2.el7                            
  python-XStatic-QUnit.noarch 0:1.14.0.2-2.el7                                  
  python-XStatic-Rickshaw.noarch 0:1.5.0.0-4.el7                                
  python-XStatic-Spin.noarch 0:1.2.5.2-2.el7                                    
  python-XStatic-jQuery.noarch 0:1.10.2.1-1.el7                                 
  python-XStatic-jquery-ui.noarch 0:1.10.4.1-1.el7                              
  python-XStatic-smart-table.noarch 0:1.4.5.3-5.el7.1                           
  python-XStatic-termjs.noarch 0:0.0.4.2-2.el7                                  
  python-django.noarch 0:1.8.14-1.el7                                           
  python-django-appconf.noarch 0:1.0.1-4.el7                                    
  python-django-bash-completion.noarch 0:1.8.14-1.el7                           
  python-django-compressor.noarch 0:2.0-1.el7                                   
  python-django-horizon.noarch 1:11.0.1-2.el7                                   
  python-django-pyscss.noarch 0:2.0.2-1.el7                                     
  python-pathlib.noarch 0:1.0.1-1.el7                                           
  python-pint.noarch 0:0.6-2.el7                                                
  python2-XStatic.noarch 0:1.0.1-8.el7                                          
  python2-XStatic-Angular.noarch 1:1.5.8.0-1.el7                                
  python2-XStatic-Angular-Bootstrap.noarch 0:2.2.0.0-1.el7                      
  python2-XStatic-Angular-FileUpload.noarch 0:12.0.4.0-1.el7                    
  python2-XStatic-Angular-Gettext.noarch 0:2.3.8.0-1.el7                        
  python2-XStatic-Angular-Schema-Form.noarch 0:0.8.13.0-0.1.pre_review.el7      
  python2-XStatic-D3.noarch 0:3.5.17.0-1.el7                                    
  python2-XStatic-Font-Awesome.noarch 0:4.7.0.0-3.el7                           
  python2-XStatic-JSEncrypt.noarch 0:2.3.1.1-1.el7                              
  python2-XStatic-bootswatch.noarch 0:3.3.7.0-1.el7                             
  python2-XStatic-mdi.noarch 0:1.1.70.1-5.el7                                   
  python2-XStatic-objectpath.noarch 0:1.2.1.0-0.1.pre_review.el7                
  python2-XStatic-roboto-fontface.noarch 0:0.5.0.0-1.el7                        
  python2-XStatic-tv4.noarch 0:1.2.7.0-0.1.pre_review.el7                       
  python2-django-openstack-auth.noarch 0:3.1.1-1.el7                            
  python2-rcssmin.x86_64 0:1.0.6-2.el7                                          
  python2-rjsmin.x86_64 0:1.0.12-2.el7                                          
  python2-scss.x86_64 0:1.3.4-6.el7                                             
  roboto-fontface-common.noarch 0:0.5.0.0-1.el7                                 
  roboto-fontface-fonts.noarch 0:0.5.0.0-1.el7                                  
  web-assets-filesystem.noarch 0:5-1.el7                                        
  xstatic-angular-bootstrap-common.noarch 0:2.2.0.0-1.el7                       
  xstatic-angular-fileupload-common.noarch 0:12.0.4.0-1.el7                     
  xstatic-angular-gettext-common.noarch 0:2.3.8.0-1.el7                         
  xstatic-angular-schema-form-common.noarch 0:0.8.13.0-0.1.pre_review.el7       
  xstatic-d3-common.noarch 0:3.5.17.0-1.el7                                     
  xstatic-jsencrypt-common.noarch 0:2.3.1.1-1.el7                               
  xstatic-objectpath-common.noarch 0:1.2.1.0-0.1.pre_review.el7                 
  xstatic-tv4-common.noarch 0:1.2.7.0-0.1.pre_review.el7                        

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package openstack-sahara-ui.noarch 0:6.0.0-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package               Arch     Version          Repository                Size
================================================================================
Installing:
 openstack-sahara-ui   noarch   6.0.0-1.el7      centos-openstack-ocata   385 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 385 k
Installed size: 1.8 M
Downloading packages:
openstack-sahara-ui-6.0.0-1.el7.noarch.rpm                 | 385 kB   00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : openstack-sahara-ui-6.0.0-1.el7.noarch                       1/1 
  Verifying  : openstack-sahara-ui-6.0.0-1.el7.noarch                       1/1 

Installed:
  openstack-sahara-ui.noarch 0:6.0.0-1.el7                                      

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package openstack-manila-ui.noarch 0:2.7.1-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package               Arch     Version          Repository                Size
================================================================================
Installing:
 openstack-manila-ui   noarch   2.7.1-1.el7      centos-openstack-ocata   326 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 326 k
Installed size: 1.4 M
Downloading packages:
openstack-manila-ui-2.7.1-1.el7.noarch.rpm                 | 326 kB   00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : openstack-manila-ui-2.7.1-1.el7.noarch                       1/1 
  Verifying  : openstack-manila-ui-2.7.1-1.el7.noarch                       1/1 

Installed:
  openstack-manila-ui.noarch 0:2.7.1-1.el7                                      

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package openstack-magnum-ui.noarch 0:2.2.0-1.el7 will be installed
--> Processing Dependency: python-django-babel for package: openstack-magnum-ui-2.2.0-1.el7.noarch
--> Running transaction check
---> Package python2-django-babel.noarch 0:0.4.0-2.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                Arch     Version         Repository                Size
================================================================================
Installing:
 openstack-magnum-ui    noarch   2.2.0-1.el7     centos-openstack-ocata    95 k
Installing for dependencies:
 python2-django-babel   noarch   0.4.0-2.el7     centos-openstack-ocata    77 k

Transaction Summary
================================================================================
Install  1 Package (+1 Dependent package)

Total download size: 172 k
Installed size: 626 k
Downloading packages:
(1/2): openstack-magnum-ui-2.2.0-1.el7.noarch.rpm          |  95 kB   00:00     
(2/2): python2-django-babel-0.4.0-2.el7.noarch.rpm         |  77 kB   00:00     
--------------------------------------------------------------------------------
Total                                              761 kB/s | 172 kB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : python2-django-babel-0.4.0-2.el7.noarch                      1/2 
  Installing : openstack-magnum-ui-2.2.0-1.el7.noarch                       2/2 
  Verifying  : openstack-magnum-ui-2.2.0-1.el7.noarch                       1/2 
  Verifying  : python2-django-babel-0.4.0-2.el7.noarch                      2/2 

Installed:
  openstack-magnum-ui.noarch 0:2.2.0-1.el7                                      

Dependency Installed:
  python2-django-babel.noarch 0:0.4.0-2.el7                                     

Complete!
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package openstack-neutron-lbaas-ui.noarch 0:2.0.0-2.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                     Arch    Version      Repository               Size
================================================================================
Installing:
 openstack-neutron-lbaas-ui  noarch  2.0.0-2.el7  centos-openstack-ocata  189 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 189 k
Installed size: 937 k
Downloading packages:
openstack-neutron-lbaas-ui-2.0.0-2.el7.noarch.rpm          | 189 kB   00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : openstack-neutron-lbaas-ui-2.0.0-2.el7.noarch                1/1 
  Verifying  : openstack-neutron-lbaas-ui-2.0.0-2.el7.noarch                1/1 

Installed:
  openstack-neutron-lbaas-ui.noarch 0:2.0.0-2.el7                               

Complete!

Done

Configurig Horizon
# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals

from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup)
    permission = models.ForeignKey('AuthPermission')

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType')
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class OpenstackAuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    keystone_user_id = models.CharField(primary_key=True, max_length=255)

    class Meta:
        managed = False
        db_table = 'openstack_auth_user'


class OpenstackDbCache(models.Model):
    cache_key = models.CharField(primary_key=True, max_length=255)
    value = models.TextField()
    expires = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'openstack_db_cache'
Done

Applying SELINUX rules for apache. This could take some time. Please wait
setsebool:  SELinux is disabled.

Done

Applying IPTABLES rules

iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]
Ready

Starting Services
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Package python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noarch already installed and latest version
Package roboto-fontface-common-0.5.0.0-1.el7.noarch already installed and latest version
Package roboto-fontface-fonts-0.5.0.0-1.el7.noarch already installed and latest version
Package mdi-common-1.1.70.1-5.el7.noarch already installed and latest version
Package mdi-fonts-1.1.70.1-5.el7.noarch already installed and latest version
Package python2-XStatic-mdi-1.1.70.1-5.el7.noarch already installed and latest version
Nothing to do
Loaded plugins: changelog, fastestmirror, langpacks, priorities, versionlock
Loading mirror speeds from cached hostfile
 * base: anorien.csc.warwick.ac.uk
 * epel: anorien.csc.warwick.ac.uk
 * extras: anorien.csc.warwick.ac.uk
 * updates: anorien.csc.warwick.ac.uk
Resolving Dependencies
--> Running transaction check
---> Package mdi-common.noarch 0:1.1.70.1-5.el7 will be reinstalled
---> Package mdi-fonts.noarch 0:1.1.70.1-5.el7 will be reinstalled
---> Package python2-XStatic-mdi.noarch 0:1.1.70.1-5.el7 will be reinstalled
---> Package python2-XStatic-roboto-fontface.noarch 0:0.5.0.0-1.el7 will be reinstalled
---> Package roboto-fontface-common.noarch 0:0.5.0.0-1.el7 will be reinstalled
---> Package roboto-fontface-fonts.noarch 0:0.5.0.0-1.el7 will be reinstalled
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                     Arch   Version        Repository              Size
================================================================================
Reinstalling:
 mdi-common                  noarch 1.1.70.1-5.el7 centos-openstack-ocata  30 k
 mdi-fonts                   noarch 1.1.70.1-5.el7 centos-openstack-ocata 384 k
 python2-XStatic-mdi         noarch 1.1.70.1-5.el7 centos-openstack-ocata  17 k
 python2-XStatic-roboto-fontface
                             noarch 0.5.0.0-1.el7  centos-openstack-ocata 9.7 k
 roboto-fontface-common      noarch 0.5.0.0-1.el7  centos-openstack-ocata  15 k
 roboto-fontface-fonts       noarch 0.5.0.0-1.el7  centos-openstack-ocata 4.1 M

Transaction Summary
================================================================================
Reinstall  6 Packages

Total download size: 4.6 M
Installed size: 16 M
Downloading packages:
(1/6): mdi-common-1.1.70.1-5.el7.noarch.rpm                |  30 kB   00:00     
(2/6): python2-XStatic-mdi-1.1.70.1-5.el7.noarch.rpm       |  17 kB   00:00     
(3/6): python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noarc | 9.7 kB   00:00     
(4/6): mdi-fonts-1.1.70.1-5.el7.noarch.rpm                 | 384 kB   00:00     
(5/6): roboto-fontface-common-0.5.0.0-1.el7.noarch.rpm     |  15 kB   00:00     
(6/6): roboto-fontface-fonts-0.5.0.0-1.el7.noarch.rpm      | 4.1 MB   00:00     
--------------------------------------------------------------------------------
Total                                              6.6 MB/s | 4.6 MB  00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : roboto-fontface-fonts-0.5.0.0-1.el7.noarch                   1/6 
  Installing : mdi-common-1.1.70.1-5.el7.noarch                             2/6 
  Installing : roboto-fontface-common-0.5.0.0-1.el7.noarch                  3/6 
  Installing : mdi-fonts-1.1.70.1-5.el7.noarch                              4/6 
  Installing : python2-XStatic-mdi-1.1.70.1-5.el7.noarch                    5/6 
  Installing : python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noarch         6/6 
  Verifying  : mdi-fonts-1.1.70.1-5.el7.noarch                              1/6 
  Verifying  : roboto-fontface-common-0.5.0.0-1.el7.noarch                  2/6 
  Verifying  : python2-XStatic-mdi-1.1.70.1-5.el7.noarch                    3/6 
  Verifying  : python2-XStatic-roboto-fontface-0.5.0.0-1.el7.noarch         4/6 
  Verifying  : mdi-common-1.1.70.1-5.el7.noarch                             5/6 
  Verifying  : roboto-fontface-fonts-0.5.0.0-1.el7.noarch                   6/6 

Installed:
  mdi-common.noarch 0:1.1.70.1-5.el7                                            
  mdi-fonts.noarch 0:1.1.70.1-5.el7                                             
  python2-XStatic-mdi.noarch 0:1.1.70.1-5.el7                                   
  python2-XStatic-roboto-fontface.noarch 0:0.5.0.0-1.el7                        
  roboto-fontface-common.noarch 0:0.5.0.0-1.el7                                 
  roboto-fontface-fonts.noarch 0:0.5.0.0-1.el7                                  

Complete!
cp: omitting directory ‘/usr/share/fonts/roboto_fontface/roboto’
cp: omitting directory ‘/usr/share/fonts/roboto_fontface/roboto-condensed’
‘/usr/share/fonts/fontawesome/FontAwesome.otf’ -> ‘/usr/share/openstack-dashboard/openstack_dashboard/static/horizon/lib/font-awesome/fonts/FontAwesome.otf’
‘/usr/share/fonts/fontawesome/fontawesome-webfont.svg’ -> ‘/usr/share/openstack-dashboard/openstack_dashboard/static/horizon/lib/font-awesome/fonts/fontawesome-webfont.svg’
‘/usr/share/fonts/fontawesome/fontawesome-webfont.ttf’ -> ‘/usr/share/openstack-dashboard/openstack_dashboard/static/horizon/lib/font-awesome/fonts/fontawesome-webfont.ttf’
‘/usr/share/fonts/fontawesome/fontawesome-webfont.woff’ -> ‘/usr/share/openstack-dashboard/openstack_dashboard/static/horizon/lib/font-awesome/fonts/fontawesome-webfont.woff’
‘/usr/share/fonts/fontawesome/fontawesome-webfont.woff2’ -> ‘/usr/share/openstack-dashboard/openstack_dashboard/static/horizon/lib/font-awesome/fonts/fontawesome-webfont.woff2’
Note: Forwarding request to 'systemctl enable memcached.service'.
Done

Horizon Dashboard Installed

OPENSTACK HORIZON INSTALLED

Executing Post Install

DB Proccess OK. Let's continue


Keystone Proccess OK. Let's continue

‘./libs/openstack-control.sh’ -> ‘/usr/local/bin/openstack-control.sh’
‘./libs/openstack-log-cleaner.sh’ -> ‘/usr/local/bin/openstack-log-cleaner.sh’
‘./libs/openstack-vm-boot-start.sh’ -> ‘/usr/local/bin/openstack-vm-boot-start.sh’
‘./libs/compute-and-instances-full-report.sh’ -> ‘/usr/local/bin/compute-and-instances-full-report.sh’
‘./libs/instance-cpu-metrics-report.sh’ -> ‘/usr/local/bin/instance-cpu-metrics-report.sh’
‘./libs/keystone-rotate.crontab’ -> ‘/etc/cron.d/keystone-rotate.crontab’
‘./libs/nova-start-vms.conf’ -> ‘/etc/openstack-control-script-config/nova-start-vms.conf’

Restarting all OpenStack services and cleaning up all logs

Stopping Service: openstack-magnum-conductor
Stopping Service: openstack-magnum-api
Stopping Service: openstack-manila-share
Stopping Service: openstack-manila-scheduler
Stopping Service: openstack-manila-api
Stopping Service: openstack-sahara-all
Stopping Service: openstack-heat-engine
Stopping Service: openstack-heat-api-cfn
Stopping Service: openstack-heat-api
Stopping Service: openstack-aodh-listener
Stopping Service: openstack-aodh-notifier
Stopping Service: openstack-aodh-evaluator
Stopping Service: openstack-ceilometer-notification
Stopping Service: openstack-ceilometer-collector
Stopping Service: openstack-ceilometer-central
Stopping Service: openstack-gnocchi-metricd
Stopping Service: httpd
Stopping Service: openstack-nova-novncproxy
Stopping Service: openstack-nova-consoleauth
Stopping Service: openstack-nova-conductor
Stopping Service: openstack-nova-scheduler
Stopping Service: httpd
Stopping Service: openstack-nova-api
Stopping Service: neutron-server
Stopping Service: neutron-metering-agent
Stopping Service: neutron-vpn-agent
Stopping Service: neutron-lbaasv2-agent
Stopping Service: neutron-dhcp-agent
Stopping Service: neutron-metadata-agent
Stopping Service: neutron-openvswitch-agent
Stopping Service: neutron-ovs-cleanup
Stopping Service: openstack-cinder-scheduler
Stopping Service: openstack-cinder-api
Stopping Service: openstack-glance-api
Stopping Service: openstack-glance-registry
Stopping Service: httpd
Redirecting to /bin/systemctl stop  rabbitmq-server.service
Redirecting to /bin/systemctl start  rabbitmq-server.service

Automated cleanup activated

Cleaning logs into /var/log/glance
Cleaning log file: api.log
Cleaning log file: registry.log
Cleaning logs into /var/log/cinder
Cleaning log file: api.log
Cleaning log file: cinder-manage.log
Cleaning log file: scheduler.log
Cleaning logs into /var/log/neutron
Cleaning log file: dhcp-agent.log
Cleaning log file: lbaas-agent.log
Cleaning log file: metadata-agent.log
Cleaning log file: metering-agent.log
Cleaning log file: openvswitch-agent.log
Cleaning log file: server.log
Cleaning log file: vpn-agent.log
Cleaning logs into /var/log/nova
Cleaning log file: nova-api.log
Cleaning log file: nova-conductor.log
Cleaning log file: nova-consoleauth.log
Cleaning log file: nova-manage.log
Cleaning log file: nova-novncproxy.log
Cleaning log file: nova-scheduler.log
Cleaning logs into /var/log/ceilometer
Cleaning log file: agent-notification.log
Cleaning log file: ceilometer-upgrade.log
Cleaning log file: central.log
Cleaning log file: collector.log
Cleaning logs into /var/log/aodh
Cleaning log file: aodh-dbsync.log
Cleaning log file: evaluator.log
Cleaning log file: listener.log
Cleaning log file: notifier.log
Cleaning logs into /var/log/gnocchi
Cleaning log file: gnocchi.log
Cleaning log file: metricd.log
Cleaning logs into /var/log/horizon
Cleaning logs into /var/log/keystone
Cleaning log file: keystone.log
Cleaning logs into /var/log/heat
Cleaning log file: heat-api-cfn.log
Cleaning log file: heat-api.log
Cleaning log file: heat-engine.log
Cleaning logs into /var/log/sahara
Cleaning log file: sahara.log
Cleaning logs into /var/log/manila
Cleaning log file: api.log
Cleaning log file: scheduler.log
Cleaning log file: share.log
Cleaning logs into /var/log/magnum
Cleaning log file: magnum-api.log
Cleaning log file: magnum-conductor.log

Logs cleaned

Enabling Service: httpd
Enabling Service: openstack-glance-registry
Enabling Service: openstack-glance-api
Enabling Service: openstack-cinder-api
Enabling Service: openstack-cinder-scheduler
Enabling Service: neutron-ovs-cleanup
Enabling Service: neutron-openvswitch-agent
Enabling Service: neutron-metadata-agent
Enabling Service: neutron-dhcp-agent
Enabling Service: neutron-lbaasv2-agent
Enabling Service: neutron-vpn-agent
Enabling Service: neutron-metering-agent
Enabling Service: neutron-server
Enabling Service: openstack-nova-api
Enabling Service: httpd
Enabling Service: openstack-nova-scheduler
Enabling Service: openstack-nova-conductor
Enabling Service: openstack-nova-consoleauth
Enabling Service: openstack-nova-novncproxy
Enabling Service: httpd
Enabling Service: openstack-gnocchi-metricd
Enabling Service: openstack-ceilometer-central
Enabling Service: openstack-ceilometer-collector
Enabling Service: openstack-ceilometer-notification
Enabling Service: openstack-aodh-evaluator
Enabling Service: openstack-aodh-notifier
Enabling Service: openstack-aodh-listener
Enabling Service: openstack-heat-api
Enabling Service: openstack-heat-api-cfn
Enabling Service: openstack-heat-engine
Enabling Service: openstack-sahara-all
Enabling Service: openstack-manila-api
Enabling Service: openstack-manila-scheduler
Enabling Service: openstack-manila-share
Enabling Service: openstack-magnum-api
Enabling Service: openstack-magnum-conductor
Starting Service: httpd
Starting Service: openstack-glance-registry
Starting Service: openstack-glance-api
Starting Service: openstack-cinder-api
Starting Service: openstack-cinder-scheduler
Starting Service: neutron-ovs-cleanup
Starting Service: neutron-openvswitch-agent
Starting Service: neutron-metadata-agent
Starting Service: neutron-dhcp-agent
Starting Service: neutron-lbaasv2-agent
Starting Service: neutron-vpn-agent
Starting Service: neutron-metering-agent
Starting Service: neutron-server
Starting Service: openstack-nova-api
Starting Service: httpd
Starting Service: openstack-nova-scheduler
Starting Service: openstack-nova-conductor
Starting Service: openstack-nova-consoleauth
Starting Service: openstack-nova-novncproxy
Starting Service: httpd
Starting Service: openstack-gnocchi-metricd
Starting Service: openstack-ceilometer-central
Starting Service: openstack-ceilometer-collector
Starting Service: openstack-ceilometer-notification
Starting Service: openstack-aodh-evaluator
Starting Service: openstack-aodh-notifier
Starting Service: openstack-aodh-listener
Starting Service: openstack-heat-api
Starting Service: openstack-heat-api-cfn
Starting Service: openstack-heat-engine
Starting Service: openstack-sahara-all
Starting Service: openstack-manila-api
Starting Service: openstack-manila-scheduler
Starting Service: openstack-manila-share
Starting Service: openstack-magnum-api
Starting Service: openstack-magnum-conductor

Post Install Done

● httpd.service - The Apache HTTP Server
   Loaded: loaded (/usr/lib/systemd/system/httpd.service; enabled; vendor preset: disabled)
  Drop-In: /usr/lib/systemd/system/httpd.service.d
           └─openstack-dashboard.conf
   Active: active (running) since Mon 2017-06-05 13:01:01 BST; 45s ago
     Docs: man:httpd(8)
           man:apachectl(8)
  Process: 28128 ExecStartPre=/usr/bin/python /usr/share/openstack-dashboard/manage.py compress --force -v0 (code=exited, status=0/SUCCESS)
  Process: 28108 ExecStartPre=/usr/bin/python /usr/share/openstack-dashboard/manage.py collectstatic --noinput --clear -v0 (code=exited, status=0/SUCCESS)
 Main PID: 28174 (httpd)
   Status: "Total requests: 0; Current requests/sec: 0; Current traffic:   0 B/sec"
   CGroup: /system.slice/httpd.service
           ├─28174 /usr/sbin/httpd -DFOREGROUND
           ├─28187 (wsgi:nova-plac -DFOREGROUND
           ├─28188 (wsgi:nova-plac -DFOREGROUND
           ├─28189 (wsgi:nova-plac -DFOREGROUND
           ├─28190 (wsgi:nova-plac -DFOREGROUND
           ├─28191 (wsgi:nova-plac -DFOREGROUND
           ├─28192 /usr/sbin/httpd -DFOREGROUND
           ├─28193 (wsgi:aodh-api) -DFOREGROUND
           ├─28194 (wsgi:aodh-api) -DFOREGROUND
           ├─28195 (wsgi:gnocchi-a -DFOREGROUND
           ├─28196 (wsgi:gnocchi-a -DFOREGROUND
           ├─28197 (wsgi:keystone- -DFOREGROUND
           ├─28198 (wsgi:keystone- -DFOREGROUND
           ├─28199 (wsgi:keystone- -DFOREGROUND
           ├─28200 (wsgi:keystone- -DFOREGROUND
           ├─28201 (wsgi:keystone- -DFOREGROUND
           ├─28202 (wsgi:keystone- -DFOREGROUND
           ├─28203 (wsgi:keystone- -DFOREGROUND
           ├─28204 (wsgi:keystone- -DFOREGROUND
           ├─28205 (wsgi:keystone- -DFOREGROUND
           ├─28206 (wsgi:keystone- -DFOREGROUND
           ├─28207 /usr/sbin/httpd -DFOREGROUND
           ├─28208 /usr/sbin/httpd -DFOREGROUND
           ├─28209 /usr/sbin/httpd -DFOREGROUND
           ├─28213 /usr/sbin/httpd -DFOREGROUND
           └─28215 /usr/sbin/httpd -DFOREGROUND
● openstack-glance-registry.service - OpenStack Image Service (code-named Glance) Registry server
   Loaded: loaded (/usr/lib/systemd/system/openstack-glance-registry.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:01 BST; 45s ago
 Main PID: 28322 (glance-registry)
   CGroup: /system.slice/openstack-glance-registry.service
           ├─28322 /usr/bin/python2 /usr/bin/glance-registry
           ├─28509 /usr/bin/python2 /usr/bin/glance-registry
           ├─28510 /usr/bin/python2 /usr/bin/glance-registry
           ├─28511 /usr/bin/python2 /usr/bin/glance-registry
           ├─28512 /usr/bin/python2 /usr/bin/glance-registry
           ├─28514 /usr/bin/python2 /usr/bin/glance-registry
           ├─28515 /usr/bin/python2 /usr/bin/glance-registry
           ├─28517 /usr/bin/python2 /usr/bin/glance-registry
           └─28518 /usr/bin/python2 /usr/bin/glance-registry
● openstack-glance-api.service - OpenStack Image Service (code-named Glance) API server
   Loaded: loaded (/usr/lib/systemd/system/openstack-glance-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:01 BST; 45s ago
 Main PID: 28335 (glance-api)
   CGroup: /system.slice/openstack-glance-api.service
           ├─28335 /usr/bin/python2 /usr/bin/glance-api
           ├─28537 /usr/bin/python2 /usr/bin/glance-api
           ├─28538 /usr/bin/python2 /usr/bin/glance-api
           ├─28539 /usr/bin/python2 /usr/bin/glance-api
           ├─28540 /usr/bin/python2 /usr/bin/glance-api
           ├─28541 /usr/bin/python2 /usr/bin/glance-api
           ├─28542 /usr/bin/python2 /usr/bin/glance-api
           ├─28543 /usr/bin/python2 /usr/bin/glance-api
           └─28544 /usr/bin/python2 /usr/bin/glance-api
● openstack-cinder-api.service - OpenStack Cinder API Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-cinder-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:01 BST; 45s ago
 Main PID: 28342 (cinder-api)
   CGroup: /system.slice/openstack-cinder-api.service
           ├─28342 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
           ├─28552 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
           ├─28553 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
           ├─28554 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
           ├─28555 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
           ├─28556 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
           ├─28557 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
           ├─28558 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
           └─28559 /usr/bin/python2 /usr/bin/cinder-api --config-file /usr/sh...
● openstack-cinder-scheduler.service - OpenStack Cinder Scheduler Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-cinder-scheduler.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:01 BST; 45s ago
 Main PID: 28349 (cinder-schedule)
   CGroup: /system.slice/openstack-cinder-scheduler.service
           └─28349 /usr/bin/python2 /usr/bin/cinder-scheduler --config-file /...
● neutron-ovs-cleanup.service - OpenStack Neutron Open vSwitch Cleanup Utility
   Loaded: loaded (/usr/lib/systemd/system/neutron-ovs-cleanup.service; enabled; vendor preset: disabled)
   Active: active (exited) since Mon 2017-06-05 13:01:04 BST; 43s ago
  Process: 28356 ExecStart=/usr/bin/neutron-ovs-cleanup --config-file /usr/share/neutron/neutron-dist.conf --config-file /etc/neutron/neutron.conf --config-file /etc/neutron/plugins/ml2/openvswitch_agent.ini --config-dir /etc/neutron/conf.d/common --config-dir /etc/neutron/conf.d/neutron-ovs-cleanup --log-file /var/log/neutron/ovs-cleanup.log (code=exited, status=0/SUCCESS)
 Main PID: 28356 (code=exited, status=0/SUCCESS)
   CGroup: /system.slice/neutron-ovs-cleanup.service
● neutron-openvswitch-agent.service - OpenStack Neutron Open vSwitch Agent
   Loaded: loaded (/usr/lib/systemd/system/neutron-openvswitch-agent.service; enabled; vendor preset: disabled)
   Active: inactive (dead) since Mon 2017-06-05 13:01:09 BST; 37s ago
  Process: 28423 ExecStart=/usr/bin/neutron-openvswitch-agent --config-file /usr/share/neutron/neutron-dist.conf --config-file /etc/neutron/neutron.conf --config-file /etc/neutron/plugin.ini --config-dir /etc/neutron/conf.d/common --config-dir /etc/neutron/conf.d/neutron-openvswitch-agent --log-file /var/log/neutron/openvswitch-agent.log (code=exited, status=0/SUCCESS)
  Process: 28416 ExecStartPre=/usr/bin/neutron-enable-bridge-firewall.sh (code=exited, status=0/SUCCESS)
 Main PID: 28423 (code=exited, status=0/SUCCESS)
● neutron-metadata-agent.service - OpenStack Neutron Metadata Agent
   Loaded: loaded (/usr/lib/systemd/system/neutron-metadata-agent.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:04 BST; 43s ago
 Main PID: 28431 (neutron-metadat)
   CGroup: /system.slice/neutron-metadata-agent.service
           ├─28431 /usr/bin/python2 /usr/bin/neutron-metadata-agent --config-...
           ├─28560 /usr/bin/python2 /usr/bin/neutron-metadata-agent --config-...
           ├─28561 /usr/bin/python2 /usr/bin/neutron-metadata-agent --config-...
           ├─28562 /usr/bin/python2 /usr/bin/neutron-metadata-agent --config-...
           └─28563 /usr/bin/python2 /usr/bin/neutron-metadata-agent --config-...
● neutron-dhcp-agent.service - OpenStack Neutron DHCP Agent
   Loaded: loaded (/usr/lib/systemd/system/neutron-dhcp-agent.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:04 BST; 43s ago
 Main PID: 28438 (neutron-dhcp-ag)
   CGroup: /system.slice/neutron-dhcp-agent.service
           └─28438 /usr/bin/python2 /usr/bin/neutron-dhcp-agent --config-file...
● neutron-lbaasv2-agent.service - OpenStack Neutron Load Balancing as a Service (API v2.x) Agent
   Loaded: loaded (/usr/lib/systemd/system/neutron-lbaasv2-agent.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:04 BST; 43s ago
 Main PID: 28445 (neutron-lbaasv2)
   CGroup: /system.slice/neutron-lbaasv2-agent.service
           └─28445 /usr/bin/python2 /usr/bin/neutron-lbaasv2-agent --config-f...
● neutron-vpn-agent.service - OpenStack Neutron VPN as a Service Agent
   Loaded: loaded (/usr/lib/systemd/system/neutron-vpn-agent.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:04 BST; 43s ago
 Main PID: 28452 (neutron-vpn-age)
   CGroup: /system.slice/neutron-vpn-agent.service
           └─28452 /usr/bin/python2 /usr/bin/neutron-vpn-agent --config-file ...
● neutron-metering-agent.service - OpenStack Neutron Metering Agent
   Loaded: loaded (/usr/lib/systemd/system/neutron-metering-agent.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:04 BST; 42s ago
 Main PID: 28459 (neutron-meterin)
   CGroup: /system.slice/neutron-metering-agent.service
           └─28459 /usr/bin/python2 /usr/bin/neutron-metering-agent --config-...
● neutron-server.service - OpenStack Neutron Server
   Loaded: loaded (/usr/lib/systemd/system/neutron-server.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:12 BST; 35s ago
 Main PID: 28470 (neutron-server)
   CGroup: /system.slice/neutron-server.service
           ├─28470 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28569 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28570 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28571 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28572 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28573 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28574 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28575 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28576 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28577 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           ├─28578 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
           └─28579 /usr/bin/python2 /usr/bin/neutron-server --config-file /us...
● openstack-nova-api.service - OpenStack Nova API Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-nova-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:22 BST; 24s ago
 Main PID: 28586 (nova-api)
   CGroup: /system.slice/openstack-nova-api.service
           ├─28586 /usr/bin/python2 /usr/bin/nova-api
           ├─28598 /usr/bin/python2 /usr/bin/nova-api
           ├─28599 /usr/bin/python2 /usr/bin/nova-api
           ├─28600 /usr/bin/python2 /usr/bin/nova-api
           ├─28601 /usr/bin/python2 /usr/bin/nova-api
           ├─28602 /usr/bin/python2 /usr/bin/nova-api
           ├─28603 /usr/bin/python2 /usr/bin/nova-api
           ├─28605 /usr/bin/python2 /usr/bin/nova-api
           ├─28607 /usr/bin/python2 /usr/bin/nova-api
           ├─28620 /usr/bin/python2 /usr/bin/nova-api
           ├─28621 /usr/bin/python2 /usr/bin/nova-api
           ├─28622 /usr/bin/python2 /usr/bin/nova-api
           ├─28623 /usr/bin/python2 /usr/bin/nova-api
           ├─28624 /usr/bin/python2 /usr/bin/nova-api
           ├─28626 /usr/bin/python2 /usr/bin/nova-api
           ├─28628 /usr/bin/python2 /usr/bin/nova-api
           └─28630 /usr/bin/python2 /usr/bin/nova-api
● httpd.service - The Apache HTTP Server
   Loaded: loaded (/usr/lib/systemd/system/httpd.service; enabled; vendor preset: disabled)
  Drop-In: /usr/lib/systemd/system/httpd.service.d
           └─openstack-dashboard.conf
   Active: active (running) since Mon 2017-06-05 13:01:01 BST; 46s ago
     Docs: man:httpd(8)
           man:apachectl(8)
  Process: 28128 ExecStartPre=/usr/bin/python /usr/share/openstack-dashboard/manage.py compress --force -v0 (code=exited, status=0/SUCCESS)
  Process: 28108 ExecStartPre=/usr/bin/python /usr/share/openstack-dashboard/manage.py collectstatic --noinput --clear -v0 (code=exited, status=0/SUCCESS)
 Main PID: 28174 (httpd)
   Status: "Total requests: 0; Current requests/sec: 0; Current traffic:   0 B/sec"
   CGroup: /system.slice/httpd.service
           ├─28174 /usr/sbin/httpd -DFOREGROUND
           ├─28187 (wsgi:nova-plac -DFOREGROUND
           ├─28188 (wsgi:nova-plac -DFOREGROUND
           ├─28189 (wsgi:nova-plac -DFOREGROUND
           ├─28190 (wsgi:nova-plac -DFOREGROUND
           ├─28191 (wsgi:nova-plac -DFOREGROUND
           ├─28192 /usr/sbin/httpd -DFOREGROUND
           ├─28193 (wsgi:aodh-api) -DFOREGROUND
           ├─28194 (wsgi:aodh-api) -DFOREGROUND
           ├─28195 (wsgi:gnocchi-a -DFOREGROUND
           ├─28196 (wsgi:gnocchi-a -DFOREGROUND
           ├─28197 (wsgi:keystone- -DFOREGROUND
           ├─28198 (wsgi:keystone- -DFOREGROUND
           ├─28199 (wsgi:keystone- -DFOREGROUND
           ├─28200 (wsgi:keystone- -DFOREGROUND
           ├─28201 (wsgi:keystone- -DFOREGROUND
           ├─28202 (wsgi:keystone- -DFOREGROUND
           ├─28203 (wsgi:keystone- -DFOREGROUND
           ├─28204 (wsgi:keystone- -DFOREGROUND
           ├─28205 (wsgi:keystone- -DFOREGROUND
           ├─28206 (wsgi:keystone- -DFOREGROUND
           ├─28207 /usr/sbin/httpd -DFOREGROUND
           ├─28208 /usr/sbin/httpd -DFOREGROUND
           ├─28209 /usr/sbin/httpd -DFOREGROUND
           ├─28213 /usr/sbin/httpd -DFOREGROUND
           └─28215 /usr/sbin/httpd -DFOREGROUND
● openstack-nova-scheduler.service - OpenStack Nova Scheduler Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-nova-scheduler.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:30 BST; 17s ago
 Main PID: 28648 (nova-scheduler)
   CGroup: /system.slice/openstack-nova-scheduler.service
           └─28648 /usr/bin/python2 /usr/bin/nova-scheduler
● openstack-nova-conductor.service - OpenStack Nova Conductor Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-nova-conductor.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:37 BST; 10s ago
 Main PID: 28675 (nova-conductor)
   CGroup: /system.slice/openstack-nova-conductor.service
           ├─28675 /usr/bin/python2 /usr/bin/nova-conductor
           ├─28687 /usr/bin/python2 /usr/bin/nova-conductor
           ├─28688 /usr/bin/python2 /usr/bin/nova-conductor
           ├─28689 /usr/bin/python2 /usr/bin/nova-conductor
           ├─28690 /usr/bin/python2 /usr/bin/nova-conductor
           ├─28691 /usr/bin/python2 /usr/bin/nova-conductor
           ├─28692 /usr/bin/python2 /usr/bin/nova-conductor
           ├─28693 /usr/bin/python2 /usr/bin/nova-conductor
           └─28694 /usr/bin/python2 /usr/bin/nova-conductor
● openstack-nova-consoleauth.service - OpenStack Nova VNC console auth Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-nova-consoleauth.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:43 BST; 3s ago
 Main PID: 28709 (nova-consoleaut)
   CGroup: /system.slice/openstack-nova-consoleauth.service
           └─28709 /usr/bin/python2 /usr/bin/nova-consoleauth
● openstack-nova-novncproxy.service - OpenStack Nova NoVNC Proxy Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-nova-novncproxy.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:43 BST; 3s ago
 Main PID: 28727 (nova-novncproxy)
   CGroup: /system.slice/openstack-nova-novncproxy.service
           └─28727 /usr/bin/python2 /usr/bin/nova-novncproxy --web /usr/share...
● httpd.service - The Apache HTTP Server
   Loaded: loaded (/usr/lib/systemd/system/httpd.service; enabled; vendor preset: disabled)
  Drop-In: /usr/lib/systemd/system/httpd.service.d
           └─openstack-dashboard.conf
   Active: active (running) since Mon 2017-06-05 13:01:01 BST; 46s ago
     Docs: man:httpd(8)
           man:apachectl(8)
  Process: 28128 ExecStartPre=/usr/bin/python /usr/share/openstack-dashboard/manage.py compress --force -v0 (code=exited, status=0/SUCCESS)
  Process: 28108 ExecStartPre=/usr/bin/python /usr/share/openstack-dashboard/manage.py collectstatic --noinput --clear -v0 (code=exited, status=0/SUCCESS)
 Main PID: 28174 (httpd)
   Status: "Total requests: 0; Current requests/sec: 0; Current traffic:   0 B/sec"
   CGroup: /system.slice/httpd.service
           ├─28174 /usr/sbin/httpd -DFOREGROUND
           ├─28187 (wsgi:nova-plac -DFOREGROUND
           ├─28188 (wsgi:nova-plac -DFOREGROUND
           ├─28189 (wsgi:nova-plac -DFOREGROUND
           ├─28190 (wsgi:nova-plac -DFOREGROUND
           ├─28191 (wsgi:nova-plac -DFOREGROUND
           ├─28192 /usr/sbin/httpd -DFOREGROUND
           ├─28193 (wsgi:aodh-api) -DFOREGROUND
           ├─28194 (wsgi:aodh-api) -DFOREGROUND
           ├─28195 (wsgi:gnocchi-a -DFOREGROUND
           ├─28196 (wsgi:gnocchi-a -DFOREGROUND
           ├─28197 (wsgi:keystone- -DFOREGROUND
           ├─28198 (wsgi:keystone- -DFOREGROUND
           ├─28199 (wsgi:keystone- -DFOREGROUND
           ├─28200 (wsgi:keystone- -DFOREGROUND
           ├─28201 (wsgi:keystone- -DFOREGROUND
           ├─28202 (wsgi:keystone- -DFOREGROUND
           ├─28203 (wsgi:keystone- -DFOREGROUND
           ├─28204 (wsgi:keystone- -DFOREGROUND
           ├─28205 (wsgi:keystone- -DFOREGROUND
           ├─28206 (wsgi:keystone- -DFOREGROUND
           ├─28207 /usr/sbin/httpd -DFOREGROUND
           ├─28208 /usr/sbin/httpd -DFOREGROUND
           ├─28209 /usr/sbin/httpd -DFOREGROUND
           ├─28213 /usr/sbin/httpd -DFOREGROUND
           └─28215 /usr/sbin/httpd -DFOREGROUND
● openstack-gnocchi-metricd.service - OpenStack gnocchi metricd service
   Loaded: loaded (/usr/lib/systemd/system/openstack-gnocchi-metricd.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 3s ago
 Main PID: 28740 (/usr/bin/python)
   CGroup: /system.slice/openstack-gnocchi-metricd.service
           └─28740 /usr/bin/python2 /usr/bin/gnocchi-metricd --logfile /var/l...
● openstack-ceilometer-central.service - OpenStack ceilometer central agent
   Loaded: loaded (/usr/lib/systemd/system/openstack-ceilometer-central.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 3s ago
 Main PID: 28747 (/usr/bin/python)
   CGroup: /system.slice/openstack-ceilometer-central.service
           └─28747 /usr/bin/python2 /usr/bin/ceilometer-polling --polling-nam...
● openstack-ceilometer-collector.service - OpenStack ceilometer collection service
   Loaded: loaded (/usr/lib/systemd/system/openstack-ceilometer-collector.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 4s ago
 Main PID: 28755 (/usr/bin/python)
   CGroup: /system.slice/openstack-ceilometer-collector.service
           └─28755 /usr/bin/python2 /usr/bin/ceilometer-collector --logfile /...
● openstack-ceilometer-notification.service - OpenStack ceilometer notification agent
   Loaded: loaded (/usr/lib/systemd/system/openstack-ceilometer-notification.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 4s ago
 Main PID: 28762 (/usr/bin/python)
   CGroup: /system.slice/openstack-ceilometer-notification.service
           └─28762 /usr/bin/python2 /usr/bin/ceilometer-agent-notification --...
● openstack-aodh-evaluator.service - OpenStack Alarm evaluator service
   Loaded: loaded (/usr/lib/systemd/system/openstack-aodh-evaluator.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 4s ago
 Main PID: 28785 (/usr/bin/python)
   CGroup: /system.slice/openstack-aodh-evaluator.service
           └─28785 /usr/bin/python2 /usr/bin/aodh-evaluator --logfile /var/lo...
● openstack-aodh-notifier.service - OpenStack Alarm notifier service
   Loaded: loaded (/usr/lib/systemd/system/openstack-aodh-notifier.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 3s ago
 Main PID: 28796 (/usr/bin/python)
   CGroup: /system.slice/openstack-aodh-notifier.service
           └─28796 /usr/bin/python2 /usr/bin/aodh-notifier --logfile /var/log...
● openstack-aodh-listener.service - OpenStack Alarm listener service
   Loaded: loaded (/usr/lib/systemd/system/openstack-aodh-listener.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 3s ago
 Main PID: 28811 (/usr/bin/python)
   CGroup: /system.slice/openstack-aodh-listener.service
           └─28811 /usr/bin/python2 /usr/bin/aodh-listener --logfile /var/log...
● openstack-heat-api.service - OpenStack Heat API Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-heat-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 3s ago
 Main PID: 28821 (heat-api)
   CGroup: /system.slice/openstack-heat-api.service
           └─28821 /usr/bin/python /usr/bin/heat-api --config-file /usr/share...
● openstack-heat-api-cfn.service - Openstack Heat CFN-compatible API Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-heat-api-cfn.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 3s ago
 Main PID: 28831 (heat-api-cfn)
   CGroup: /system.slice/openstack-heat-api-cfn.service
           └─28831 /usr/bin/python /usr/bin/heat-api-cfn --config-file /usr/s...
● openstack-heat-engine.service - Openstack Heat Engine Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-heat-engine.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 3s ago
 Main PID: 28844 (heat-engine)
   CGroup: /system.slice/openstack-heat-engine.service
           └─28844 /usr/bin/python /usr/bin/heat-engine --config-file /usr/sh...
● openstack-sahara-all.service - Sahara API Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-sahara-all.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:44 BST; 3s ago
 Main PID: 28859 (sahara-all)
   CGroup: /system.slice/openstack-sahara-all.service
           └─28859 /usr/bin/python2 /usr/bin/sahara-all --config-file /etc/sa...
● openstack-manila-api.service - OpenStack Manila API Server
   Loaded: loaded (/usr/lib/systemd/system/openstack-manila-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:45 BST; 3s ago
 Main PID: 28866 (manila-api)
   CGroup: /system.slice/openstack-manila-api.service
           └─28866 /usr/bin/python2 /usr/bin/manila-api --config-file /usr/sh...
● openstack-manila-scheduler.service - OpenStack Manila Scheduler
   Loaded: loaded (/usr/lib/systemd/system/openstack-manila-scheduler.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:45 BST; 3s ago
 Main PID: 28875 (manila-schedule)
   CGroup: /system.slice/openstack-manila-scheduler.service
           └─28875 /usr/bin/python2 /usr/bin/manila-scheduler --config-file /...
● openstack-manila-share.service - OpenStack Manila Share Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-manila-share.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:45 BST; 3s ago
 Main PID: 28893 (manila-share)
   CGroup: /system.slice/openstack-manila-share.service
           └─28893 /usr/bin/python2 /usr/bin/manila-share --config-file /usr/...
● openstack-magnum-api.service - OpenStack Magnum API Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-magnum-api.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:45 BST; 3s ago
 Main PID: 28905 (magnum-api)
   CGroup: /system.slice/openstack-magnum-api.service
           └─28905 /usr/bin/python2 /usr/bin/magnum-api
● openstack-magnum-conductor.service - Openstack Magnum Conductor Service
   Loaded: loaded (/usr/lib/systemd/system/openstack-magnum-conductor.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-06-05 13:01:45 BST; 2s ago
 Main PID: 28916 (magnum-conducto)
   CGroup: /system.slice/openstack-magnum-conductor.service
           └─28916 /usr/bin/python2 /usr/bin/magnum-conductor


REMEMBER !!!
For any additional COMPUTE NODE you add in your OpenStack deployment, please
run the following command IN YOUR NOVA CONTROLLER NODE:
su -s /bin/sh -c "nova-manage cell_v2 discover_hosts --verbose" nova

You can use the script /usr/local/bin/openstack-control.sh for administration tasks
Your administrative userid is: admin, password: toor
Use your web-based dashboard at: http://192.168.1.100

Thanks you very much for using this automated tool


OPENSTACK INSTALLATION FINISHED

[root@richmond openstack]# 

