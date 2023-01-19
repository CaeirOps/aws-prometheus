# Note: You might encounter an error if the `EKS-AMP-ServiceAccount-Role`
# does not exists in the target accounts.

CENTRAL_ROLE_NAME=$(aws iam create-role \
  --role-name amp-central-ingest-role \
  --assume-role-policy-document file://central-policy.json --query 'Role.RoleName' --output text)

aws iam attach-role-policy \
  --role-name $CENTRAL_ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/AmazonPrometheusRemoteWriteAccess
  
 
echo "export CENTRAL_ROLE_NAME=$CENTRAL_ROLE_NAME" >> delete.env