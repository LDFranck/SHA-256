# Custom ASIC Design for SHA-256

**Abstract:** The growth of digital communications has driven the development of numerous cryptographic methods for secure data transfer and storage. The SHA-256 algorithm is a cryptographic hash function widely used for validating data authenticity, identity, and integrity. The inherent SHA-256 computational overhead has motivated the search for more efficient hardware solutions, like application-specific integrated circuits (ASICs). This work presents a custom ASIC hardware accelerator for the SHA-256 algorithm entirely created using open-source electronic design automation tools. The integrated circuit was synthesized in SkyWater Foundries’ SKY130 130nm process technology through OpenLANE automated RTL to GDSII flow. The proposed final design is compatible with 32-bit microcontrollers, has a total area of 104,585µm², and operates at a maximum clock frequency of 97.89MHz. Several optimization configurations were tested and analyzed during the synthesis phase to enhance the performance of the final design.

<p align="center">
<img src="https://github.com/LDFranck/SHA-256/blob/main/exploratory/final_run/layout.png?raw=true"/>
</p>

## Publication
SOON

## TODO
server setup + openlane commands

```
ssh root@<server_ip>
```
``` 
curl -s https://raw.githubusercontent.com/LDFranck/SHA-256/main/scripts/setupUser.sh | bash
```
```
ssh openlane@<server_ip>
```
```
curl -s https://raw.githubusercontent.com/LDFranck/SHA-256/main/scripts/setupDocker.sh | sudo bash
```
```
sudo su - openlane
```
```
cd $HOME
git clone https://github.com/The-OpenROAD-Project/OpenLane
cd OpenLane/
make
make test
```


