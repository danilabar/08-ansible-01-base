# Самоконтроль выполненения задания

1. Где расположен файл с `some_fact` из второго пункта задания?
   1. [group_vars/all/examp.yml](group_vars/all/examp.yml)
2. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?
   1. 
      ```bash
      ansible-playbook site.yml -i inventory/test.yml
      ```
3. Какой командой можно зашифровать файл?
   1. 
      ```bash
      ansible-vault encrypt group_vars/deb/examp.yml
      ```
4. Какой командой можно расшифровать файл?
   1. 
      ```bash
      ansible-vault decrypt group_vars/deb/examp.yml
      ```
5. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?
   1. Можно
      ```bash
      ansible-vault view group_vars/deb/examp.yml
      ```
6. Как выглядит команда запуска `playbook`, если переменные зашифрованы?
   1. 
      ```bash
      ansible-playbook site.yml -i inventory/prod.yml --ask-vault-pass
      ```
7. Как называется модуль подключения к host на windows?
   1. `psrp` или `winrm`  
   ```bash
   ansible-doc -t connection -l
   ```
8. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh
   1. 
      ```bash
      ansible-doc -t connection ssh
      ```
9. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?
   1. Параметр `remote_user`

## Дополнительное задание
1. Отдельное значение можно зашифровать с помощью команды
   ```bash
   ansible-vault encrypt_string
   ```
2. Написан скрипт [docble.sh](docble.sh), перед запуском необходимо экспортировать переменную с паролем `export VAULT_PASSWORD=''`, для
расшифровки секретов ansible-vault