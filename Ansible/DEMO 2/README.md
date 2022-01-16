#Install Ansible( BASH Script in the REPO)

* Establish connectivity between ansible controller and node machine *

 $ ssh-keygen -t rsa (input : null)
 
 $ cat .ssh/id_rsa.pub >> .ssh/authorized_keys
 
 $ ssh localhost -p 42006

* Edit/Add LocalHost in the Ansible Host file *

 $ sudo vi /etc/ansible/hosts
 
 ****************
 [webservers]
 localhost:42006
 ****************

 *Validation of host inventory file *
 
  $ ansible -m ping webservers

