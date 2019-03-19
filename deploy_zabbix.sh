#!/bin/bash
SOURCE_DIR=$(dirname $0)
ZABBIX_DIR=/etc/zabbix
SCRIPT_DIR=/usr/local/bin/zabbix
mkdir -p ${SCRIPT_DIR}/scripts/zapgix
cp -r ${SOURCE_DIR}/PostgreSQL/sql ${SCRIPT_DIR}/scripts/zapgix/
cp ${SOURCE_DIR}/PostgreSQL/zapgix.sh ${SCRIPT_DIR}/scripts/zapgix/
cp ${SOURCE_DIR}/PostgreSQL/zabbix_agentd.conf ${ZABBIX_DIR}/zabbix_agentd.d/userparameter_postgresql.conf
