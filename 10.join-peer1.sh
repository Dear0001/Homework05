export FABRIC_CFG_PATH=${PWD}/config

export CORE_PEER_ID="Org1MSP"
export CORE_PEER_LOCALMSPID="Org1MSP"

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051

# Set gossip-related environment variables
export CORE_PEER_GOSSIP_PULLINTERVAL=2s
export CORE_PEER_GOSSIP_RECONNECTINTERVAL=15s
export CORE_PEER_GOSSIP_RECVBUFFSIZE=40
export CORE_PEER_GOSSIP_SENDBUFFSIZE=400

peer channel join -b ./artifacts/mychannel.block

peer channel list