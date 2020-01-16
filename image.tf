module "f5_vnf_image" {
  source               = "git::https://github.com/sakthishanmugam02/vnf-on-vpc-modules.git"
  ibmcloud_endpoint    = "${var.ibmcloud_endpoint}"
  ibmcloud_svc_api_key = "6ob7CwRoZBHnrz3JKZkF5wJ_JRsHaF2F1dxIV72-SMdq"
  vnf_cos_image_url    = "cos://us-south/vnf-checkpoint-test-bucket/checkpointR80.30-12232019.qcow2"
  vnf_cos_instance_id  = "3fae3104-d6cc-4c15-94db-2635e2cc50b9"
  vnf_vpc_image_name   = "checkpoint-sakthi-test1"
  vpc_crn              = "${data.ibm_is_vpc.f5_vpc.resource_crn}"
  region               = "${data.ibm_is_region.region.name}"
  resource_group_id    = "${data.ibm_resource_group.rg.id}"
}
