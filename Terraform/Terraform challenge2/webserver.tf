resource "docker_container" "php-httpd" {
    name = "webserver"
    image = docker_image.php-httpd-image.name
    hostname = "php-httpd"
    network_advanced {
        name = docker_network.private-network.id
    }
    ports {
        external = 80
        internal = 80
        ip = "0.0.0.0"
    }
    labels {
        label = "challenge"
        value = "second"
    }  
    volumes {
    container_path = "/var/www/html"
    host_path      = "/root/code/terraform-challenges/challenge2/lamp_stack/website_content/"
    }
}