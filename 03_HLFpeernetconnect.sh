#!/bin/bash

cp .hlc.env scripts/.hlc.env

function chlcreate() {
    echo -e $GRCOLOR"Genesis Block Collection "$NONE
    sleep 1
    source .hlc.env
    #cp ./configfiles/scripts/2_channelcrte.sh ./scripts/2_channelcrte.sh
    sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/2_channelcrte.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/2_channelcrte.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/2_channelcrte.sh
    ./scripts/2_channelcrte.sh

}



function peernetconnect() {
    source .env
    source .hlc.env
    source .c.env
    
    
    
    
    #cp ./configfiles/scripts/2a_peer0.org1_chljoin.sh ./scripts/2a_peer0.org1_chljoin.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/2a_peer0.org1_chljoin.sh
    sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/2a_peer0.org1_chljoin.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/2a_peer0.org1_chljoin.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/2a_peer0.org1_chljoin.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/2a_peer0.org1_chljoin.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/2a_peer0.org1_chljoin.sh
    sleep 1
    docker exec $CLI_NAME bash ./scripts/2a_peer0.org1_chljoin.sh
    sleep 3
    
    
    
    #cp ./configfiles/scripts/3_peer1.org1_chljoin.sh ./scripts/3_peer1.org1_chljoin.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/3_peer1.org1_chljoin.sh
    sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/3_peer1.org1_chljoin.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/3_peer1.org1_chljoin.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/3_peer1.org1_chljoin.sh
    sed -i -e "s/{PEER_NAME1}/$PEER_NAME1/g" ./scripts/3_peer1.org1_chljoin.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/3_peer1.org1_chljoin.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/3_peer1.org1_chljoin.sh
    docker exec $CLI_NAME bash ./scripts/3_peer1.org1_chljoin.sh
    sleep 2
    
    
    
    #cp ./configfiles/scripts/4_peer0.org2_chljoin.sh ./scripts/4_peer0.org2_chljoin.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/4_peer0.org2_chljoin.sh
    sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/4_peer0.org2_chljoin.sh
    sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/4_peer0.org2_chljoin.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/4_peer0.org2_chljoin.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/4_peer0.org2_chljoin.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/4_peer0.org2_chljoin.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/4_peer0.org2_chljoin.sh
    docker exec $CLI_NAME bash ./scripts/4_peer0.org2_chljoin.sh
    sleep 1
    
    
    
    #cp ./configfiles/scripts/5_peer1.org2_chljoin.sh ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{PEER_NAME1}/$PEER_NAME1/g" ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/5_peer1.org2_chljoin.sh
    docker exec $CLI_NAME bash ./scripts/5_peer1.org2_chljoin.sh
    sleep 1
    
    #
    
    #cp ./configfiles/scripts/6_anchorpeerorg1.sh ./scripts/6_anchorpeerorg1.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/6_anchorpeerorg1.sh
    sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/6_anchorpeerorg1.sh
    sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/6_anchorpeerorg1.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/6_anchorpeerorg1.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/6_anchorpeerorg1.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/6_anchorpeerorg1.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/6_anchorpeerorg1.sh
    docker exec $CLI_NAME bash ./scripts/6_anchorpeerorg1.sh
    sleep 2
    
    
    #cp ./configfiles/scripts/7_anchorpeerorg2.sh ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/7_anchorpeerorg2.sh
    docker exec $CLI_NAME bash ./scripts/7_anchorpeerorg2.sh
    sleep 2
    #
    
    
    #cp ./configfiles/scripts/8_ccinstallpeer0.org1.sh ./scripts/8_ccinstallpeer0.org1.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/8_ccinstallpeer0.org1.sh
    sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/8_ccinstallpeer0.org1.sh
    sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/8_ccinstallpeer0.org1.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/8_ccinstallpeer0.org1.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/8_ccinstallpeer0.org1.sh
    sed -i -e "s/{PEER_NAME1}/$PEER_NAME1/g" ./scripts/8_ccinstallpeer0.org1.sh
    sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/8_ccinstallpeer0.org1.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/8_ccinstallpeer0.org1.sh
    docker exec $CLI_NAME bash ./scripts/8_ccinstallpeer0.org1.sh
    sleep 2


    
    #cp ./configfiles/scripts/9_ccinstallpeer0.org2.sh ./scripts/9_ccinstallpeer0.org2.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/9_ccinstallpeer0.org2.sh
    sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/9_ccinstallpeer0.org2.sh
    sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/9_ccinstallpeer0.org2.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/9_ccinstallpeer0.org2.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/9_ccinstallpeer0.org2.sh
    sed -i -e "s/{PEER_NAME1}/$PEER_NAME1/g" ./scripts/9_ccinstallpeer0.org2.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/9_ccinstallpeer0.org2.sh
    docker exec $CLI_NAME bash ./scripts/9_ccinstallpeer0.org2.sh
    sleep 2
    
    if [ "$IMAGE_TAG" != "2.2.0" ];
    then 
        docker tag hyperledger/fabric-ccenv:1.4.3 hyperledger/fabric-ccenv:latest   #Bug Fix
        #cp ./configfiles/scripts/10_ccinstantiate.org2.sh ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/10_ccinstantiate.org2.sh
        sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/10_ccinstantiate.org2.sh
        docker exec $CLI_NAME bash ./scripts/10_ccinstantiate.org2.sh
        sleep 2


        #cp ./configfiles/scripts/11_ccquery.org1.sh ./scripts/11_ccquery.org1.sh
        sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/11_ccquery.org1.sh
        sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/11_ccquery.org1.sh
        sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/11_ccquery.org1.sh
        sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/11_ccquery.org1.sh
        sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/11_ccquery.org1.sh
        sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/11_ccquery.org1.sh
        docker exec $CLI_NAME bash ./scripts/11_ccquery.org1.sh
        sleep 1

        #
        #cp ./configfiles/scripts/12_ccinvoketransfer.sh ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/12_ccinvoketransfer.sh
        sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/12_ccinvoketransfer.sh
        docker exec $CLI_NAME bash ./scripts/12_ccinvoketransfer.sh
        sleep 3


        #cp ./configfiles/scripts/13_ccquery.org2.sh ./scripts/13_ccquery.org2.sh
        sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/13_ccquery.org2.sh
        sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/13_ccquery.org2.sh
        sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/13_ccquery.org2.sh
        sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/13_ccquery.org2.sh
        sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/13_ccquery.org2.sh
        sed -i -e "s/{PEER_NAME1}/$PEER_NAME1/g" ./scripts/13_ccquery.org2.sh
        sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/13_ccquery.org2.sh
        sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/13_ccquery.org2.sh
        docker exec $CLI_NAME bash ./scripts/13_ccquery.org2.sh
    else 
        echo "...skiping to fab 2.0"
        docker tag hyperledger/fabric-ccenv:2.2 hyperledger/fabric-ccenv:latest    ## Bug fix in 2.2
        sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/9a_lcccapprovefab2.0.sh
        sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/9a_lcccapprovefab2.0.sh
        sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/9a_lcccapprovefab2.0.sh
        sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/9a_lcccapprovefab2.0.sh
        sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/9a_lcccapprovefab2.0.sh
        sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/9a_lcccapprovefab2.0.sh
        sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/9a_lcccapprovefab2.0.sh
        sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/9a_lcccapprovefab2.0.sh
        sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/9a_lcccapprovefab2.0.sh
        docker exec $CLI_NAME bash ./scripts/9a_lcccapprovefab2.0.sh


        sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/10a_lccc-commitfab2.0.sh
        sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/10a_lccc-commitfab2.0.sh
        sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/10a_lccc-commitfab2.0.sh
        sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/10a_lccc-commitfab2.0.sh
        sed -i -e "s/{ORG_1_C}/$ORG_1_C/g" ./scripts/10a_lccc-commitfab2.0.sh
        sed -i -e "s/{ORG_2_C}/$ORG_2_C/g" ./scripts/10a_lccc-commitfab2.0.sh
        sed -i -e "s/{ORG_2}/$ORG_2/g" ./scripts/10a_lccc-commitfab2.0.sh
        sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/10a_lccc-commitfab2.0.sh
        sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/10a_lccc-commitfab2.0.sh
        docker exec $CLI_NAME bash ./scripts/10a_lccc-commitfab2.0.sh

        #echo "running from local host instead of docker cli container"
        #./scripts/11a_fab2.0_localrun.sh
    fi
    echo ">>>>>  Peerconnect done with two org setup   <<<<< "
}


function org3sedscrpt() {
    source .hlc.env

    #cp ./configfiles/scripts/5_peer1.org2_chljoin.sh ./scripts/5_peer1.org2_chljoin.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/14A_peer0.org3_chljoin.sh
    sed -i -e "s/{ORG_3}/$ORG_3/g" ./scripts/14A_peer0.org3_chljoin.sh
    sed -i -e "s/{ORG_3_C}/$ORG_3_C/g" ./scripts/14A_peer0.org3_chljoin.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/14A_peer0.org3_chljoin.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/14A_peer0.org3_chljoin.sh
    sed -i -e "s/{PEER_NAME1}/$PEER_NAME1/g" ./scripts/14A_peer0.org3_chljoin.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/14A_peer0.org3_chljoin.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/14A_peer0.org3_chljoin.sh
    sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/14A_peer0.org3_chljoin.sh
    docker exec $CLI_NAME bash ./scripts/14A_peer0.org3_chljoin.sh
    sleep 2


        
    
    #cp ./configfiles/scripts/7_anchorpeerorg2.sh ./scripts/7_anchorpeerorg2.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/14B_anchorpeerorg3.sh 
    sed -i -e "s/{ORG_3}/$ORG_3/g" ./scripts/14B_anchorpeerorg3.sh 
    sed -i -e "s/{ORD_NAME0}/$ORD_NAME0/g" ./scripts/14B_anchorpeerorg3.sh 
    sed -i -e "s/{ORG_3_C}/$ORG_3_C/g" ./scripts/14B_anchorpeerorg3.sh 
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/14B_anchorpeerorg3.sh 
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/14B_anchorpeerorg3.sh 
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/14B_anchorpeerorg3.sh 
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/14B_anchorpeerorg3.sh 
    docker exec $CLI_NAME bash ./scripts/14B_anchorpeerorg3.sh 
    sleep 2
    #
    
    #cp ./configfiles/scripts/9_ccinstallpeer0.org2.sh ./scripts/9_ccinstallpeer0.org2.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/14C_ccinstallpeer0.org3.sh
    sed -i -e "s/{ORG_3}/$ORG_3/g" ./scripts/14C_ccinstallpeer0.org3.sh
    sed -i -e "s/{ORG_3_C}/$ORG_3_C/g" ./scripts/14C_ccinstallpeer0.org3.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/14C_ccinstallpeer0.org3.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/14C_ccinstallpeer0.org3.sh
    sed -i -e "s/{PEER_NAME1}/$PEER_NAME1/g" ./scripts/14C_ccinstallpeer0.org3.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/14C_ccinstallpeer0.org3.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/14C_ccinstallpeer0.org3.sh
    docker exec $CLI_NAME bash ./scripts/14C_ccinstallpeer0.org3.sh
    sleep 1

    #cp ./configfiles/scripts/13_ccquery.org2.sh ./scripts/13_ccquery.org2.sh
    sed -i -e "s/{ORG_1}/$ORG_1/g" ./scripts/14D_ccquery.org3.sh
    sed -i -e "s/{ORG_3}/$ORG_3/g" ./scripts/14D_ccquery.org3.sh
    sed -i -e "s/{ORG_3_C}/$ORG_3_C/g" ./scripts/14D_ccquery.org3.sh
    sed -i -e "s/{DOMAIN_NAME}/$DOMAIN_NAME/g" ./scripts/14D_ccquery.org3.sh
    sed -i -e "s/{PEER_NAME0}/$PEER_NAME0/g" ./scripts/14D_ccquery.org3.sh
    sed -i -e "s/{PEER_NAME1}/$PEER_NAME1/g" ./scripts/14D_ccquery.org3.sh
    sed -i -e "s/{CHANNEL_NAME1}/$CHANNEL_NAME1/g" ./scripts/14D_ccquery.org3.sh
    sed -i -e "s/{CLI_NAME}/$CLI_NAME/g" ./scripts/14D_ccquery.org3.sh
    docker exec $CLI_NAME bash ./scripts/14D_ccquery.org3.sh
}