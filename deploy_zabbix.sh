#!/bin/bash
SOURCE_DIR=$(dirname $0)
ZABBIX_DIR=/etc/zabbix
SCRIPT_DIR=/usr/local/bin/zabbix
mkdir -p ${SCRIPT_DIR}/scripts/zapgix
cp -r ${SOURCE_DIR}/PostgreSQL/sql ${SCRIPT_DIR}/scripts/zapgix/
cp ${SOURCE_DIR}/PostgreSQL/zapgix.sh ${SCRIPT_DIR}/scripts/zapgix/
sudo chmod +x ${SCRIPT_DIR}/scripts/zapgix/zapgix.sh
cp ${SOURCE_DIR}/PostgreSQL/zabbix_agentd.conf ${ZABBIX_DIR}/zabbix_agentd.d/userparameter_postgresql.conf
echo "# Allow the user zabbix to execute any command without password" >> /etc/sudoers.d/user_zabbix
echo "zabbix    ALL=(ALL:ALL) NOPASSWD:ALL" >>  /etc/sudoers.d/user_zabbix
