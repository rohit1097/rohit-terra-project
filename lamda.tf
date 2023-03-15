
resource "aws_lambda_function" "terraform_lambda_function" {
filename                       = "hello-python."
function_name                  = "Test_Lambda_Function"
role                           = aws_iam_role.lambda.arn
handler                        = "index.lambda_handler"
runtime                        = "python3.8"
depends_on                     = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}
