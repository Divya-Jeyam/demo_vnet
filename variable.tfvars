name = "demoRG"
location = "East Us"

vnetname = "demovnet"
address = ["10.0.0.0/16"]
 subnetdetails= {
    A = {
      address_prefix      = "10.0.1.0/24"
      subnet_name     = "subnet-A"
    },
    B = {
      address_prefix   = "10.0.2.0/24"
      subnet_name     = "subnet-B"
    },
    C = {
      address_prefix      = "10.0.3.0/24"
      subnet_name     = "subnet-C"
    },
    D = {
      address_prefix      = "10.0.4.0/24"
      subnet_name     = "subnet-D"
    }
 }
 nsg = {
   nsg-a = {
       nsgname = "nsg-subnetA"
   },
   nsg-b = {
       nsgname = "nsg-subnetB"
   },
   nsg-c = {
       nsgname = "nsg-subnetC"
   },
   nsg-d = {
     nsgname = "nsg-subnetD"
   }
 }
 /*
 subnet_name = ["subnet-A", "subnet-B", "subnet-C", "subnet-D"]
 address_prefix = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
#nsg variable
nsgname            = ["nsg-subnetC", "nsg-subnetD"]*/
nsgrulename1        = "ssh"
//nsgrulename2        = "rdp"
//nsgrulename3        = "http"
priority1           = 100
//priority2           = 101
//priority3           = 103
direction          = "Outbound"
access             = "Allow"
protocol           = "Tcp"
sourceport         = "*"
destinationport1    = "22"
//destinationport2   = "3389"
//destinationport3    = "80"
sourceaddress      = "*"
destinationaddress = "*"
