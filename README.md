# Script de Automação para Configuração de Servidor Web

Este script em **Bash** tem como objetivo configurar um servidor **Apache2** em um sistema **Linux** baseado em Debian (como Ubuntu). Ele realiza a atualização do sistema, instala os pacotes necessários e copia os arquivos do site para o diretório padrão do Apache.

## 📌 Pré-requisitos

- Usuário com permissões de **sudo** ou execução como **root**.
- Conexão com a Internet para baixar pacotes e arquivos.
- Sistema operacional baseado em **Debian**.

## 📜 Código do Script

```bash
#!/bin/bash

echo "Atualizando o servidor..."

apt update
apt upgrade -y

echo "Instalando o Apache2..."

apt install apache2 -y

echo "Instalando o unzip..."

apt install unzip -y

echo "Acessando pasta, baixando main.zip, descompactando e copiando para /var/www/html"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim!"
```

## 🔍 Explicação do Script

1. **Atualização do Servidor**  
   O script inicia com a atualização da lista de pacotes (`apt update`) e a instalação de atualizações disponíveis (`apt upgrade -y`).

2. **Instalação do Apache2**  
   O Apache2 é instalado para servir os arquivos do site.

3. **Instalação do Unzip**  
   O utilitário `unzip` é instalado para descompactar arquivos `.zip`.

4. **Download e Configuração do Site**  
   - O diretório `/tmp` é acessado para armazenar os arquivos temporários.
   - O arquivo `main.zip` é baixado do repositório do GitHub.
   - O arquivo ZIP é extraído.
   - O conteúdo do site é copiado para o diretório padrão do Apache (`/var/www/html/`).

5. **Finalização**  
   - O script exibe a mensagem `"Fim!"` indicando a conclusão do processo.

## 🚀 Como Executar

Para executar o script, salve-o como `script.sh`, dê permissão de execução e execute como **root** ou com `sudo`:

```bash
chmod +x script.sh
sudo ./script.sh
```

## 🛠 Possíveis Melhorias

- Verificar se os pacotes já estão instalados antes de tentar instalá-los.
- Criar backups do diretório `/var/www/html/` antes da cópia.
- Adicionar logs detalhados da execução.

## 📢 Conclusão

Este script automatiza a configuração de um servidor web básico de forma rápida e eficiente. Ele pode ser adaptado conforme as necessidades específicas do projeto.

---

Se precisar de ajustes ou explicações adicionais, me avise! 🚀