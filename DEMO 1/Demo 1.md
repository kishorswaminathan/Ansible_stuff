 #YAML Scripting


/*

1.  Create a playbook
2.  Add YAML script to the playbook to install node
3.  Run Ansible YAML script

*/

*Playbook Creation(here in this case,node.yml): vi node.yml
 
    *Establishing SSH key pair in linux system to have SSH connectivity with the localhost8
   
   $ ssh-keygen -t rsa
   $ cat .ssh/id_rsa.pub >> .ssh/authorized_keys
   $ ssh localhost -p 42006
     
    * Adding LocalHost value to ansible host file *
   
   $ sudo vi /etc/ansible/hosts
   
     [webservers]
     localhost:42006  //add the below two lines of the code at the end of the file//


******************************************************************************************************************************************************    
     * YAML Script(Find within the REPO(Incase it's umavailable, ctrl+c from here *
     ****************************************************************************
          
          - hosts: webservers

  become: true

  tasks:

 - name: add apt key for nodesource

   become: true

   apt_key: url=https://deb.nodesource.com/gpgkey/nodesource.gpg.key

 - name: add repo for nodesource

   become: true

   apt_repository:

                 repo: 'deb https://deb.nodesource.com/node_0.10 {{ ansible_distribution_release }} main'

                 update_cache: yes

   - name: install nodejs

     become: true

     apt: name=nodejs

*****************************************************************************************************************************************************

 save it(shift + esc + ; (type wq)
 
 ***************************************************************
 
 
 #  ansible-playbook node.yml //Execution of Ansible YAML script//










   
