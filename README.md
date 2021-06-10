# Linearization of Modelica Models 

## Deployment with Linux 

Environment: Ubuntu 18.04 LTS

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
In the current release of OpenModelica(e.g. v1.17.0), you use apt to install libraries:
```
for PKG in `apt-cache search "omlib-.*" | cut -d" " -f1`; do sudo apt-get install -y "$PKG"; done # Installs optional Modelica libraries (most have not been tested with OpenModelica)
```

### Install and start conda
Download using wget
```
wget -c https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
```
Install the software
```
chmod 777 Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```
Start conda
```
cd ~/miniconda3/bin
chmod 777 activate 
. ./activate
```

### Install and start jupyter lab

Install jupyter-lab with conda
```
conda install -c conda-forge jupyterlab
```
Set-up jupyter-lab
```
jupyter notebook --generate-config
nano /root/.jupyter/jupyter_notebook_config.py
```
1. c.NotebookApp.allow_remote_access = True
2. c.NotebookApp.allow_root = True
3. c.NotebookApp.ip = '*'
4. c.NotebookApp.open_browser = False
5. c.NotebookApp.password = "XXX" (jupyter lab password)
6. c.NotebookApp.port = 5976/8997
   
Start jupyter lab without hang up ('ps -aux | grep jupyter' and 'kill -9')
```
nohup jupyter lab > jupyter.log 2>&1 &
```

### Install and set-up git
Install git
```
apt-get install git
```
Config name and email
```
git config --global user.name "XXX"
git config --global user.email "XXX"
```
Add ssh key
```
ssh-keygen
```

### Others
Install OMPython
```
python -m pip install -U https://github.com/OpenModelica/OMPython/archive/master.zip
```
Install matplotlib
```
python -m pip install matplotlib
```
### reference
```
https://www.openmodelica.org/forum/default-topic/1584-ubuntu-installiation
```