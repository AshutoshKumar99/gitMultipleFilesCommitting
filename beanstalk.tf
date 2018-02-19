# Benastalk Environment

resource "aws_elastic_beanstalk_environment" "tfenvtest" {
  name                = "tf-brms-devenv"
  application         = "${aws_elastic_beanstalk_application.tftest.name}"
  solution_stack_name = "64bit Amazon Linux 2016.09 v2.5.2 running Tomcat 8 Java 8"
      
}

# Beanstalk Application

resource "aws_elastic_beanstalk_application" "tftest" {
  name        = "tf-brms-devapp"
  description = "tf-brms-devapp"
  
}