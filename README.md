# Linearization of Modelica Models 

## Deployment with Linux 

### Install OpenModelica

Added the source
```
for deb in deb deb-src; do echo "$deb http://build.openmodelica.org/apt `lsb_release -cs` release"; done | sudo tee /etc/apt/sources.list.d/openmodelica.list
```

Import the GPG key used to sign the releases
```
wget -q http://build.openmodelica.org/apt/openmodelica.asc -O- | sudo apt-key add - 
# To verify that your key is installed correctly
apt-key fingerprint
# Gives output:
# pub   2048R/64970947 2010-06-22
#      Key fingerprint = D229 AF1C E5AE D74E 5F59  DF30 3A59 B536 6497 0947
# uid                  OpenModelica Build System 
```

Then update and install OpenModelica
```
sudo apt-get update
sudo apt-get install openmodelica
```

### Install conda

### Install jupyter lab

### reference
```
https://www.openmodelica.org/forum/default-topic/1584-ubuntu-installiation
```