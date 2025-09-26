resource "time_sleep" "wait_10s" {
  create_duration  = "10s"
  destroy_duration = "10s"
}

resource "random_uuid" "vpc_id" {
  depends_on = [time_sleep.wait_10s]
}

resource "random_uuid" "public_subnet_id" {
  depends_on = [time_sleep.wait_10s]
}

resource "random_uuid" "private_subnet_id" {
  depends_on = [time_sleep.wait_10s]
}
