module "lambda_builder" {
  source                    = "../../../modules/lambda/blue-account"
  function_name             = "Paysafe-upf-dataops-Publishers-Blue"
  main_consumer_function_name = "Paysafe-upf-dataops-PersistDetails-DynamoDb"   
  region                    = "ca-central-1"
  python_file               = "../../../modules/lambda/blue-account/lambda_function.py"
  main_consumer_python_file = "../../../modules/lambda/blue-account/persist_to_dynamodb_lambda.py"
  handler                   = "lambda_function.lambda_handler"
  runtime                   = "python3.8"
  output_path               = "../../../modules/lambda/blue-account/lambda_function.zip"
  main_consumer_output_py   = "../../../modules/lambda/blue-account/persist_to_dynamodb_lambda.zip"
  dynamodb_name             = "Paysafe-upf-dataops-EMR-Details-logs"
  kinesis_stream_name       = "Paysafe-upf-dataops-Emr_Kinesis_details_Stream"
  iam_policy_name           = "Paysafe-upf-dataops-AWS-Cw-dynamic-policy-blue"
  iam_policy_main_consumer  = "Paysafe-upf-dataops-Lambda_policy"
  iam_role_name             = "Paysafe-upf-dataops-EMR-Detail-Iam-role-blue"
  iam_role_main_consumer    = "Paysafe-upf-dataops-Consumer_role"
  iam_role_name_for_yellow  = "Paysafe-upf-dataops-access-for-yellow"
  iam_role_name_for_grey    = "Paysafe-upf-dataops-access-for-grey"
  event_rule_name           = "Paysafe-upf-dataops-EMR-Details-rule-Blue"
  lambda_timeout            = "300"
  account_id                = "452253236614"
  yellow_account_id         = "195255969266"
  grey_account_id           = "245535966659"
  blue_account_id           = "452253236614"
  cross_account_id          = "452253236614"
  config_file_key           = "paysafe-upf-dataops-lambda-emr-details-audit-trail/prod/blue/flag-execute-lambda.json"  
}