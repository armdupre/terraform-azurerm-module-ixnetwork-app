variable "AdminPassword" {
	sensitive = true
	type = string
}

variable "AdminUserName" {
	default = "azure"
	type = string
}

variable "EnableAcceleratedNetworking" {
	default = false
	type = bool
}

variable "EnableIpForwarding" {
	default = false
	type = bool
}

variable "Eth0SubnetId" {
	description = "Id of the subnet associated with the first network interface"
	type = string
}

variable "ImageSku" {
	default = "keysight-ixnetwork-virtual-edition-client"
	description = "An instance of an offer, such as a major release of a distribution."
	type = string
}

variable "ImageVersion" {
	default = "9.36.0"
	description = "The version number of an image SKU."
	type = string
}

variable "InstanceId" {
	default = "app"
	description = "Id of the instance of this module that ensures uniqueness"
	type = string
}

variable "MarketplaceImageOfferId" {
	default = "keysight-ixnetwork-virtual-edition"
	description = "The name of a group of related images created by a publisher."
	type = string
}

variable "MarketplaceImagePublisherId" {
	default = "keysight-technologies-ixvm"
	description = "The organization that created the image."
	type = string
}

variable "ResourceGroupLocation" {
	default = "East US"
	type = string
}

variable "ResourceGroupName" {
	type = string
}

variable "SshKeyName" {
	type = string
}

variable "Tag" {
	default = "ixnetwork"
	description = "App ID tag of application using the deployment"
	type = string
}

variable "UserEmailTag" {
	default = "terraform@example.com"
	description = "Email address tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserEmailTag) >= 14
		error_message = "UserEmailTag minimum length must be >= 14."
	}
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserLoginTag) >= 4
		error_message = "UserLoginTag minimum length must be >= 4."
	}
}

variable "UserProjectTag" {
	default = "module"
	description = "Project tag of user creating the deployment"
	type = string
}

variable "Version" {
	default = "9-36"
	description = "Versioning of the application using the deployment"
	type = string
}

variable "VmSize" {
	default = "Standard_F4s_v2"
	type = string
	validation {
		condition = contains([	"Standard_F4s_v2",	"Standard_F8s_v2"
							], var.VmSize)
		error_message = <<EOF
VmSize must be one of the following sizes:
	Standard_F4s_v2, Standard_F8s_v2
		EOF
	}
}