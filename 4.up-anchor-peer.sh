export FABRIC_CFG_PATH=${PWD}/config/
configtxgen -outputAnchorPeersUpdate ./artifacts/Org1Anchor.tx -profile BasicChannel -channelID mychannel -asOrg Org1MSP
configtxgen -outputAnchorPeersUpdate ./artifacts/Org2Anchor.tx -profile BasicChannel -channelID mychannel -asOrg Org2MSP