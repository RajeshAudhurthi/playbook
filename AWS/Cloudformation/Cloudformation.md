# CLOUDFORMATION
[https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html](Clickhere)

> **_AWS CloudFormation is a service that helps you model and set up your Amazon Web Services resources so that you can spend less time managing those resources and more time focusing on your applications that run in AWS._**

## Building blocks of CF
   ```
   {
  "AWSTemplateFormatVersion" : "version date",
  "Description" : "JSON string",
  "Metadata" : {
    template metadata
  },
  "Parameters" : {
    set of parameters
  },
  "Mappings" : {
    set of mappings
  },
  "Conditions" : {
    set of conditions
  },
  "Transform" : {
    set of transforms
  },
  "Resources" : {
    set of resources
  },
  "Outputs" : {
    set of outputs
  }
}
   ```
`Note: resource is required building block`
## using cloudformation create vpc  
   1. resource
   2. parameters 
   3. outputs 
   4. mappings 

## pending
   1. drift
   2. change set
   3. nested cf template  
