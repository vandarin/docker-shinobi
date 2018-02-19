# Shinobi CCTV on Docker

This image was inspired by MiGoller. Since forking mrproper's previous image has been merged to make an ultimate docker image with `docker-compose`

Due to MiGoller's valiant efforts Shinobi now supports Docker. I hope I speak for everyone when I say thank you MiGoller!

Find MiGoller's original image here : https://hub.docker.com/r/migoller/shinobi/

### How to Dock Shinobi

>  `docker-compose` should already be installed.

1. Clone the Repo and enter the directory.
    ```
    git clone https://github.com/moeiscool/docker-shinobi.git docker-shinobi && cd docker-shinobi/alpine
    ```

2. Run docker.
    ```
    docker-compose up -d --build
    ```
    
3. Open your computer's IP address in your web browser on port `8080`.
    ```
    http://xxx.xxx.xxx.xxx:8080/
    ```    
4. Enjoy!