# PASSOS

- Acessar a conta via aws cli
- Mudar o contexto do kubectl para o cluster desejado
- Criar namespace "aws-prometheus" (kubectl create ns aws-prometheus)
- Executar script de acordo com o ambiente "(DEV/HML/PRD)-createIRSA-AMPIngest.sh"
- Adiona na role central (conta legado) o arn no trusted para assume role
- Garantir um storage class GP3 (arquivo storageclass.yml) [Add-on de EBS]
- Executar Helm (helm install aws-prometheus prometheus-community/prometheus -n aws-prometheus -f values/arquivo-do-ambiente.yml)