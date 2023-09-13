#!/bin/bash
echo "Este script cria a arvore de diretorios do Ansible no projeto"
#mkdir meu_projeto_ansible
#cd meu_projeto_ansible
#Dentro do diretório principal, crie os subdiretórios:
mkdir inventario roles playbooks arquivos group_vars
#Dentro do diretório roles, crie subdiretórios para cada role que você planeja usar no projeto Ansible
mkdir -p roles/configurar_aplicacao_python/{tasks,templates,meta}
mkdir -p roles/configurar_web_nginx/{tasks,templates,meta}
mkdir -p roles/configurar_mysql/{tasks,templates,meta}
mkdir -p roles/configurar_git/{tasks,templates,meta}
mkdir -p roles/configurar_jenkins/{tasks,templates,meta}
mkdir -p roles/configurar_ssl/{tasks,templates,meta}
mkdir -p roles/configurar_firewall/{tasks,templates,meta}

# /*

# Para organizar seus arquivos e playbooks do Ansible relacionados ao AS-Built do ambiente virtual LAMPS-NG com SSL, você pode criar uma estrutura de diretórios organizada para facilitar a manutenção e a execução de tarefas. Aqui está uma sugestão de árvore de diretórios e como criá-la:

# plaintext
# Copy code
# meu_projeto_ansible/
# │
# ├── inventario/
# │   └── hosts               # Arquivo de inventário para gerenciar hosts
# │
# ├── roles/                  # Diretório para suas roles Ansible
# │   ├── configurar_aplicacao_python/
# │   │   ├── tasks/
# │   │   │   └── main.yml    # Tarefas para configurar a aplicação Python
# │   │   ├── templates/      # Arquivos de modelo para configuração
# │   │   │   └── nginx_site.conf.j2
# │   │   └── meta/
# │   │       └── main.yml    # Meta-informações da role
# │   │
# │   ├── configurar_firewall/
# │   │   ├── tasks/
# │   │   │   └── main.yml    # Tarefas para configurar o firewall
# │   │   └── meta/
# │   │       └── main.yml    # Meta-informações da role
# │   │
# │   └── ...                 # Outras roles
# │
# ├── playbooks/
# │   ├── configurar_aplicacao.yml
# │   ├── configurar_firewall.yml
# │   └── ...                 # Outros playbooks
# │
# ├── arquivos/
# │   ├── seu_dominio.crt     # Seu certificado SSL
# │   └── seu_dominio.key     # Sua chave privada SSL
# │
# └── group_vars/
#     └── all.yml            # Variáveis globais para todos os hosts
# Aqui está como criar essa estrutura de diretórios:

# Crie um diretório principal para o seu projeto Ansible. Isso pode ser feito com o comando:
# bash
# Copy code
# mkdir meu_projeto_ansible
# cd meu_projeto_ansible
# Dentro do diretório principal, crie subdiretórios conforme a estrutura acima:
# bash
# Copy code
# mkdir inventario roles playbooks arquivos group_vars
# Dentro do diretório roles, crie subdiretórios para cada role que você planeja usar no projeto Ansible. Por exemplo, para a role configurar_aplicacao_python:
# bash
# Copy code
# mkdir -p roles/configurar_aplicacao_python/{tasks,templates,meta}
# Dentro dos diretórios de role, adicione os arquivos relevantes. Por exemplo, nas tarefas da role configurar_aplicacao_python, você teria um arquivo main.yml que contém as tarefas dessa role.

# No diretório arquivos, coloque seus certificados SSL, como seu_dominio.crt e seu_dominio.key.

# No diretório inventario, você pode criar um arquivo hosts para gerenciar os hosts em que deseja executar as tarefas do Ansible.

# No diretório playbooks, você pode criar playbooks Ansible, como configurar_aplicacao.yml e configurar_firewall.yml, que chamam as tarefas de suas roles.

# No diretório group_vars, você pode criar um arquivo all.yml para definir variáveis globais que serão usadas em todo o projeto.
# */