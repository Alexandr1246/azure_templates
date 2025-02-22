#!/bin/bash

# Name of resource group
RESOURCE_GROUP="Student"
# Region for resource group
LOCATION="eastus"
# The path to the template file
TEMPLATE_FILE_NETWORK="network.json"
TEMPLATE_FILE_BALANCER="load_balancer.json"
# Creating a resource group
echo "Creating a resource group $RESOURCE_GROUP in the region $LOCATION..."
az group create --name "$RESOURCE_GROUP" --location "$LOCATION"

# Deploy the template to the created resource group
echo "Deploying a template from a file $TEMPLATE_FILE_NETWORK resource group $RESOURCE_GROUP..."
az deployment group create --resource-group "$RESOURCE_GROUP" --template-file "$TEMPLATE_FILE_NETWORK"

echo "Deploying a template from a file $TEMPLATE_FILE_BALANCER resource group $RESOURCE_GROUP..."
az deployment group create --resource-group "$RESOURCE_GROUP" --template-file "$TEMPLATE_FILE_BALANCER"

