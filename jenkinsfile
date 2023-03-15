pipeline{
    agent any
    stages{
        stage("TF Init"){
            steps{
                echo "terraform init"
            }
        }
        stage("TF Validate"){
            steps{
                echo "terraform validate"
            }
        }
        stage("TF Plan"){
            steps{
                echo "terraform plan"
            }
        }
        stage("TF Apply"){
            steps{
//                echo "terraform apply"
            }
        }
        stage("Invoke Lambda"){
            steps{
//                echo "Invoking your AWS Lambda"
            }
        }
    }
}
