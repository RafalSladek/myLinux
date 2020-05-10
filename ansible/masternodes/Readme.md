ansible project to setup nodes
---

# Basics

- official documentation - https://docs.ansible.com/ansible/latest/installation_guide/index.html
- ansible on mac - https://hvops.com/articles/ansible-mac-osx/
- project structure - https://www.howtoforge.com/ansible-guide-create-ansible-playbook-for-lemp-stack/
- ssh - https://mwl.io/archives/1819


# Commands

- create ansible role
    ```bash
    ansible-galaxy init common
    ```
- run ansbile playbook
    ```bash
    ansible-playbook -i hosts site.yaml
    ```