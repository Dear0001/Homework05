configtxgen -outputBlock ./artifacts/genesis.block \
            -channelID genesis -profile OrdererGenesis \
            -configPath  ${PWD}/config/