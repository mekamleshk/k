@echo off

:: Create folders and markdown files for Analytics
mkdir "analytics-and-ml"
echo. > "analytics-and-ml\athena.md"
echo. > "analytics-and-ml\data-exchange.md"
echo. > "analytics-and-ml\data-pipeline.md"
echo. > "analytics-and-ml\emr.md"
echo. > "analytics-and-ml\glue.md"
echo. > "analytics-and-ml\kinesis.md"
echo. > "analytics-and-ml\lake-formation.md"
echo. > "analytics-and-ml\msk.md"
echo. > "analytics-and-ml\opensearch.md"
echo. > "analytics-and-ml\quicksight.md"
echo. > "analytics-and-ml\redshift.md"

:: Create folders and markdown files for Application Integration
mkdir "application-integration"
echo. > "application-integration\appflow.md"
echo. > "application-integration\appsync.md"
echo. > "application-integration\eventbridge.md"
echo. > "application-integration\mq.md"
echo. > "application-integration\sns.md"
echo. > "application-integration\sqs.md"
echo. > "application-integration\step-functions.md"

:: Create folders and markdown files for AWS Cost Management
mkdir "cost-management"
echo. > "cost-management\budgets.md"
echo. > "cost-management\cost-usage-report.md"
echo. > "cost-management\cost-explorer.md"
echo. > "cost-management\savings-plans.md"

:: Create folders and markdown files for Compute
mkdir "compute"
echo. > "compute\batch.md"
echo. > "compute\ec2.md"
echo. > "compute\ec2-auto-scaling.md"
echo. > "compute\elastic-beanstalk.md"
echo. > "compute\outposts.md"
echo. > "compute\serverless-application-repository.md"
echo. > "compute\vmware-cloud-on-aws.md"
echo. > "compute\wavelength.md"

:: Create folders and markdown files for Containers
mkdir "containers"
echo. > "containers\ecs-anywhere.md"
echo. > "containers\eks-anywhere.md"
echo. > "containers\eks-distro.md"
echo. > "containers\ecr.md"
echo. > "containers\ecs.md"
echo. > "containers\eks.md"

:: Create folders and markdown files for Database
mkdir "database"
echo. > "database\aurora.md"
echo. > "database\aurora-serverless.md"
echo. > "database\documentdb.md"
echo. > "database\dynamodb.md"
echo. > "database\elasticache.md"
echo. > "database\keyspaces.md"
echo. > "database\neptune.md"
echo. > "database\qldb.md"
echo. > "database\rds.md"
echo. > "database\redshift.md"

:: Create folders and markdown files for Developer Tools
mkdir "developer-tools"
echo. > "developer-tools\x-ray.md"

:: Create folders and markdown files for Front-End Web and Mobile
mkdir "front-end-web-and-mobile"
echo. > "front-end-web-and-mobile\amplify.md"
echo. > "front-end-web-and-mobile\api-gateway.md"
echo. > "front-end-web-and-mobile\device-farm.md"
echo. > "front-end-web-and-mobile\pinpoint.md"

:: Create folders and markdown files for Machine Learning
mkdir "machine-learning"
echo. > "machine-learning\comprehend.md"
echo. > "machine-learning\forecast.md"
echo. > "machine-learning\fraud-detector.md"
echo. > "machine-learning\kendra.md"
echo. > "machine-learning\lex.md"
echo. > "machine-learning\polly.md"
echo. > "machine-learning\rekognition.md"
echo. > "machine-learning\sagemaker.md"
echo. > "machine-learning\textract.md"
echo. > "machine-learning\transcribe.md"
echo. > "machine-learning\translate.md"

:: Create folders and markdown files for Management and Governance
mkdir "management-and-governance"
echo. > "management-and-governance\auto-scaling.md"
echo. > "management-and-governance\cloudformation.md"
echo. > "management-and-governance\cloudtrail.md"
echo. > "management-and-governance\cloudwatch.md"
echo. > "management-and-governance\cli.md"
echo. > "management-and-governance\compute-optimizer.md"
echo. > "management-and-governance\config.md"
echo. > "management-and-governance\control-tower.md"
echo. > "management-and-governance\health-dashboard.md"
echo. > "management-and-governance\license-manager.md"
echo. > "management-and-governance\managed-grafana.md"
echo. > "management-and-governance\managed-prometheus.md"
echo. > "management-and-governance\management-console.md"
echo. > "management-and-governance\organizations.md"
echo. > "management-and-governance\proton.md"
echo. > "management-and-governance\service-catalog.md"
echo. > "management-and-governance\systems-manager.md"
echo. > "management-and-governance\trusted-advisor.md"
echo. > "management-and-governance\well-architected-tool.md"

:: Create folders and markdown files for Media Services
mkdir "media-services"
echo. > "media-services\elastic-transcoder.md"
echo. > "media-services\kinesis-video-streams.md"

:: Create folders and markdown files for Migration and Transfer
mkdir "migration-and-transfer"
echo. > "migration-and-transfer\application-discovery-service.md"
echo. > "migration-and-transfer\application-migration-service.md"
echo. > "migration-and-transfer\dms.md"
echo. > "migration-and-transfer\datasync.md"
echo. > "migration-and-transfer\migration-hub.md"
echo. > "migration-and-transfer\snow-family.md"
echo. > "migration-and-transfer\transfer-family.md"

:: Create folders and markdown files for Networking and Content Delivery
mkdir "networking-and-content-delivery"
echo. > "networking-and-content-delivery\client-vpn.md"
echo. > "networking-and-content-delivery\cloudfront.md"
echo. > "networking-and-content-delivery\direct-connect.md"
echo. > "networking-and-content-delivery\elastic-load-balancing.md"
echo. > "networking-and-content-delivery\global-accelerator.md"
echo. > "networking-and-content-delivery\private-link.md"
echo. > "networking-and-content-delivery\route53.md"
echo. > "networking-and-content-delivery\site-to-site-vpn.md"
echo. > "networking-and-content-delivery\transit-gateway.md"
echo. > "networking-and-content-delivery\vpc.md"

:: Create folders and markdown files for Security, Identity, and Compliance
mkdir "security-identity-and-compliance"
echo. > "security-identity-and-compliance\artifact.md"
echo. > "security-identity-and-compliance\audit-manager.md"
echo. > "security-identity-and-compliance\acm.md"
echo. > "security-identity-and-compliance\cloudhsm.md"
echo. > "security-identity-and-compliance\cognito.md"
echo. > "security-identity-and-compliance\detective.md"
echo. > "security-identity-and-compliance\directory-service.md"
echo. > "security-identity-and-compliance\firewall-manager.md"
echo. > "security-identity-and-compliance\guardduty.md"
echo. > "security-identity-and-compliance\iam-identity-center.md"
echo. > "security-identity-and-compliance\iam.md"
echo. > "security-identity-and-compliance\inspector.md"
echo. > "security-identity-and-compliance\kms.md"
echo. > "security-identity-and-compliance\macie.md"
echo. > "security-identity-and-compliance\network-firewall.md"
echo. > "security-identity-and-compliance\resource-access-manager.md"
echo. > "security-identity-and-compliance\secrets-manager.md"
echo. > "security-identity-and-compliance\security-hub.md"
echo. > "security-identity-and-compliance\shield.md"
echo. > "security-identity-and-compliance\waf.md"

:: Create folders and markdown files for Serverless
mkdir "serverless"
echo. > "serverless\appsync.md"
echo. > "serverless\fargate.md"
echo. > "serverless\lambda.md"

:: Create folders and markdown files for Storage
mkdir "storage"
echo. > "storage\backup.md"
echo. > "storage\ebs.md"
echo. > "storage\efs.md"
echo. > "storage\fsx.md"
echo. > "storage\s3.md"
echo. > "storage\s3-glacier.md"
echo. > "storage\storage-gateway.md"

echo Folders and markdown files created successfully!
pause
