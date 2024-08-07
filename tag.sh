## Cost-center

 #aws ec2 create-tags  --resources i-0b4bd2e73ec97b6c6 i-09739c0362d31d84b i-0414ed85bebdc3579 i-0db79be6f02768e1e i-09ac0e9925233ba54 i-0d9c446b171df3ff4 i-02317797f3e1eba78 i-0912e8bb1b51cf59c i-061ea4dd1acd9cfbe i-023de82991f9d0cb8 i-0d74314d22899b981 i-01ae0891eca09996f i-0d734a8845e01c2d3 i-02b8e891d3cb9442e i-00b6f03bde80e1270 i-0113971e776acb260 i-06eb7735e73b7701c i-066760e699fe1b807 i-05391e3d670167c52 i-0cbb6dd92dd8c9f8d i-020064d581dcb7780 i-06b0c87ca4d114533 i-0f175aed4df24af27 i-032942f8e77108c61 i-019e0ad79a8160c3b i-0249baeccf7ae1669 i-00c8c2aa65b2e49fe i-0323a5efd167b7bb8 i-01303aa06788416ef i-0bd8376e9fa229143 i-021961a85ac5f63d2 i-08863bfc98270b82b i-0ac0017cfca1e7cc9 i-057830c5860c4adf9 i-04975c6df36378433 i-00a773ad9be7d6b98 i-0b744e8b1331b79f9 i-070e8f956b01abd1d i-0df69ed8c655575a3 i-0aabd6cc0258d597d i-0c77945cac4878dc7 i-08939c2466f17f73b i-07a341e7678314ef2 i-04e681c6e74f1352c i-0bbc1dea9c613201d i-002d50f4fe063238e i-029cf4fbee16d5041 i-04e5e7087d215b95b i-08bc38aa906223938 i-0b9f1d9be4a4c0868 i-0485e4256ce664732 i-07631701ea1d0fc0b i-0043359815fdeaab3 --tags Key=Cost-Center,Value="Insurance-Auto Insurance-Shared-Shared"
 #aws ec2 describe-instances     --output text     --filters Name=instance-state-name,Values=running     --query 'Reservations[].Instances[?!not_null(Tags[?Key == `Cost-Center`].Value)] | [].[InstanceId]'



## Backup

# aws ec2 create-tags --resources i-0f2e4a0c4dbf81eec i-07d6fdecdca65a8af i-032979b9f58b5c7cc i-0e6b1dced6cc1d686 i-06b267e2dcc135fca i-0151ab4c2476e52c2 i-00909c016abaabd38 i-0239f21fa082304b9 i-0650f5eb60427e908 i-0f6f8213d51ae3410 i-0209be0fafe18bef3 i-0cf3daf546200f12f i-0779a6e22584f3d38 i-0d8b4f8ae93065a9e i-0f4bb644b0565332b i-0a343155c145f3908 i-0f23cfba6e49d95f3 i-0fe60368f3981c29f i-065d81d67024737f7 i-002bda96be8119616 i-0c39edc6b93b4e9bf i-05be24f293161080d i-05afcc323d411810c i-032b7fd812048de4d i-07cb6db13df05743f i-049866a4475d02169 i-0f40054d1846d6f73 i-0c3bb3029ec89e401 i-027b3f89bf4bc1c2f i-075fe5272bb8c0c5f i-0f61c113f669e70ec i-0ba534385015b10d3 i-064b35a70e8df9b4f i-02d66ebb68da1f4e8 i-00645c3d0fab2c130 i-0349bcec640ed53f2 i-064315b6819ace124 i-05856a8fd69930733 --tags Key=Backup,Value="no"




#!/bin/bash
 
if [ "$Monitoring" = "true" ]; then
         rm -rf ansible
         rm -rf .git
          git init
          git remote add origin -f  git@bitbucket.org:girnarsoftware/girnarsoft-insurancedekho-infrastructure.git
        git config core.sparseCheckout true
          echo "ansible/api-alerts" >> .git/info/sparse-checkout
          git pull origin master
          cd ansible/api-alerts && ansible-playbook server.yml -i hosts --extra-vars api_name=$api_name  --extra-vars api_url_healthcheck=$api_url_healthcheck

else
echo "Monitoring is not checked"
fi





api_log:"requestUrl","postRequestParams.policyCaseId","getRequestParams.policyCaseId","postRequestParams.source","postRequestParams.subSource","corelationid","postRequestCorelationId","requestTime","postRequestParams.guid","postRequestParams.quoteGuid","apiName","postRequestParams.leadId"
third_party_api_log:insurerId,policyCaseId,apiName,createdAt,leadId
tw_third_party_api_log:insurerId,policyCaseId,apiName,createdAt,leadId
cfw_third_party_api_log:insurerId,policyCaseId,apiName,createdAt,leadId








