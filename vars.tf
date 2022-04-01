variable "subscription-id" {
    description = "subscription id of azure"
    default = "9a3be5f3-425d-4d42-9c0d-afe376698206"
}

variable "tenant-id" {
    description  = "tenant id of azure"
    default = "96ece526-9c7d-48b0-8daf-8b93c90a5d18"
  
}



variable "resource-group-name" {
    description = "name of resource group" 
    default =  "hashicorp-vault"
}

variable "location" {
    description = "location of azure cloud"
    default = "EAST US"
}

variable "psql-server-name" {
    description = "name of psql server"
    default = "hcv-postgresql-server"
}

variable "username" {
    description = "psql database admin username"
    default = "psqladmin"
}

variable "password" {
    description = "psql database admin password"
    default = "Siva@123$"
}

variable "engine-version" {
    description = "psql database engine version"
    default = 10
    type = number
}

variable "psql-db-name" {
    description = "name of psql database"
    default = "hcv-psql-database"
}












