
Install dependencies
===================
In the terminal execute:

    sudo apt update
    
    sudo apt install -y git build-essential byobu 


Install MongoDB
===============
In the terminal, add the repository:

    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

    echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

To install:

    sudo apt update

    sudo apt install -y mongodb-org

In `/etc/mongod.conf` change:

    bindIp: 0.0.0.0 

Start MongoDB service:

    mongod --replSet <repl-name> --dbpath /path/to/db --bind_ip 0.0.0.0

Install Neo4J
=============
Install Java 8 to run Neo4J (this may take some time):

    sudo add-apt-repository ppa:webupd8team/java

    sudo apt-get update

    sudo apt-get install oracle-java8-installer

Install Neo4J:

    sudo wget -O - http://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add -

    sudo echo 'deb http://debian.neo4j.org/repo stable/' | sudo tee /etc/apt/sources.list.d/neo4j.list

    sudo apt update

    sudo apt install neo4j

Uncomment this lines in `/etc/neo4j/neo4j.conf`:

    dbms.security.auth_enabled=false

    dbms.connectors.default_listen_address=0.0.0.0

Restart the service:

    sudo service neo4j restart

You can visit the Neo4J Panel in a browser:

    <ip-server>:7474

- NOTE: 7474 as default port.


Install Ruby on Rails
=====================
In the terminal execute:

    sudo apt install zlib1g-dev ruby-full sqlite3 nodejs

    sudo gem install rails

Install Mongo-Connector
=======================

    python3 -m pip install mongo-connector

Initiate Neo4J
==============

    mongo-connector -m localhost:27017 -t http://localhost:7474/db/data -d neo4j_doc_manager

    mongo-connector -m localhost:27017 -t http://localhost:7474/db/data -d neo4j_doc_manager -n test.talks



