# Global Configurations
export FABRIC_CFG_PATH=${PWD}/config
export ORDERER_GENERAL_LOGLEVEL=DEBUG

# Peer0 Org2 Setup
export CORE_PEER_ID="peer0.org2.example.com"
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_LISTENADDRESS=0.0.0.0:8061
export CORE_PEER_ADDRESS=localhost:8051
export CORE_PEER_GOSSIP_BOOTSTRAP=localhost:8061
export CORE_PEER_GOSSIP_EXTERNALENDPOINT=localhost:8051
export CORE_OPERATIONS_LISTENADDRESS=localhost:9444
export CORE_PEER_CHAINCODEADDRESS=localhost:8053
export CORE_PEER_CHAINCODELISTENADDRESS=0.0.0.0:8053

# CouchDB for Peer0 Org2
export CORE_LEDGER_STATE_STATEDATABASE=CouchDB
export CORE_LEDGER_STATE_COUCHDBCONFIG_COUCHDBADDRESS=localhost:7984
export CORE_LEDGER_STATE_COUCHDBCONFIG_USERNAME=admin
export CORE_LEDGER_STATE_COUCHDBCONFIG_PASSWORD=123

export CORE_PEER_FILESYSTEMPATH=${PWD}/ledger/peer0-org2

# TLS Configuration for Peer0 Org2
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_TLS_KEY_FILE=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/server.key
export CORE_PEER_TLS_CERT_FILE=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/server.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp

# Set gossip-related environment variables for Peer0 Org2
export CORE_PEER_GOSSIP_PULLINTERVAL=2s
export CORE_PEER_GOSSIP_RECONNECTINTERVAL=15s
export CORE_PEER_GOSSIP_RECVBUFFSIZE=40
export CORE_PEER_GOSSIP_SENDBUFFSIZE=400

# Launch the Peer0 Org2 in background
peer node start
