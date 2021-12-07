# API access
api_key      = "59af0e11f11aa10001678016/59af0ceef11aa100016748f0/5fad6f147564612d3348b2cb"
api_key_file = "../../..SecretKey.txt"
api_endpoint = "https://www.intersight.com"

# Hyperflex Cluster
intersight_organization_name = "default"
cluster_name                 = "HXAF-M5"
disk_cleanup                 = "true"
vdi_opt                      = "false"
laz_config                   = "false"
#cluster_action = "Validate"
#cluster_action = "Deploy"

# Management Platform - for standard clusters enter false, for HX Edge clusters enter true
edge_cluster = "false"

# Network Policies
jumbo_frame = "true"

# Uplink speed, only needed for HX Edge clusters. Valid options are 1G or 10G.
uplink_speed = "10G"

# Replication Factor
replication = "3"

# HX Management IP
mgmt_vlan_name = "hx-mgmt-133"
mgmt_vlan_id   = "133"
hx_mgmt_ip     = "10.29.133.237"
hx_ip_start    = "10.29.133.238"
hx_ip_end      = "10.29.133.241"
hx_netmask     = "255.255.255.0"
hx_gateway     = "10.29.133.1"

# MAC prefix
mac_prefix = "00:25:B5:7F"

# Storage VLAN
storage_vlan_name = "hx-storage-51"
storage_vlan_id   = "51"

# HXDP Version
hxdp_version = "5.0(1a)"

# UCSM Firmware Version
firmware_version = "4.1(2b)"

# HX password
hx_password = "CIsco123!!"

# ESXi admin account
esx_admin = "root"

# ESXi admin password
esx_password = "CIsco123!!"

# ESXi Management IP
node_prefix   = "hx220m5"
mgmt_ip_start = "10.29.133.246"
mgmt_ip_end   = "10.29.133.249"
mgmt_netmask  = "255.255.255.0"
mgmt_gateway  = "10.29.133.1"

# Time
timezone = "America/New_York"
ntp      = ["10.101.128.15", "10.101.128.16"]

# DNS
dns_domain = "rich.ciscolabs.cisco.com"
dns        = ["10.101.128.15", "10.101.128.16"]

# UCSM KVM IP
kvm_ip_start = "10.29.133.242"
kvm_ip_end   = "10.29.133.245"
kvm_netmask  = "255.255.255.0"
kvm_gateway  = "10.29.133.1"

# VCenter
vcenter_hostname   = "vcenter.rich.ciscolabs.com"
vcenter_username   = "administrator@vsphere.local"
vcenter_password   = "!Q2w3e4r"
vcenter_datacenter = "Datacenter"

# VMotion
vmotion_vlan_name = "vmotion-200"
vmotion_vlan_id   = "200"

# Guest VM networks
vm_vlans = [
  {
    name                  = "vm-network-2100",
    vlan_id               = "2100"
    additional_properties = null
    class_id              = "hyperflex.NamedVlan"
    object_type           = "hyperflex.NamedVlan"
  },
  {
    name                  = "vm-network-2101",
    vlan_id               = "2101"
    additional_properties = null
    class_id              = "hyperflex.NamedVlan"
    object_type           = "hyperflex.NamedVlan"
  }
]

# FC Additional vHBAs
additional_vHBAs    = "true"
fc_vsan_a_name      = "vsan-10"
fc_vsan_a_id        = "10"
fc_vsan_b_name      = "vsan-20"
fc_vsan_b_id        = "20"
wwxn_prefix         = "20:00:00:25:B5:7F"
fc_wwxn_range_start = "20:00:00:25:B5:7F"
fc_wwxn_range_end   = "20:00:00:25:B5:7F"

# iSCSI Additional vNICs
additional_vNICs  = "true"
iscsi_vlan_a_name = "iscsi-110"
iscsi_vlan_a_id   = "110"
iscsi_vlan_b_name = "iscsi-111"
iscsi_vlan_b_id   = "111"

# Auto Support
auto_support_enable    = "true"
auto_support_recipient = "support@cisco.com"

# Proxy Server
proxy_enable   = "true"
proxy_hostname = "proxy.company.com"
proxy_port     = "80"
proxy_username = "proxy"
proxy_password = "password"


server_names = {
  "UCSPE-172-22-96-140-1" = { hostname = "hx-01", esx_ip = "10.29.133.246", hx_ip = "10.29.133.238" },
  "UCSPE-172-22-96-140-2" = { hostname = "hx-02", esx_ip = "10.29.133.247", hx_ip = "10.29.133.239" },
  "UCSPE-172-22-96-140-3" = { hostname = "hx-03", esx_ip = "10.29.133.248", hx_ip = "10.29.133.240" },
  "UCSPE-172-22-96-140-4" = { hostname = "hx-04", esx_ip = "10.29.133.249", hx_ip = "10.29.133.241" }
}