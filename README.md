
# devopscourses_infra
# ansible-1
- создана ветка и необходимые папки с файлами
- установлен pip pip install -r requirements.txt
- создана инфраструктуру stage:
    app_external_ip = 
    db_external_ip = 
- создан файл inventory, проверка доступности хостов командами:
    ansible appserver -i ./inventory -m ping
    ansible dbserver -i ./inventory -m ping

- cоздана конфигурация ansible, проверка хостов: 
    ansible dbserver -m command -a uptime
    appserver -m command -a uptime

- cозданы группы хостов
- созданы inventory.yml и inventory.json,  проверка доступности хостов: 
    ansible all -i inventory.yml -m ping
    ansible all -i inventory.json -m ping
    
- cоздан плейбук и осуществлен запуск: ansible-playbook clone.yml
- удаление клона ansible app -i inventory.yml -m shell -a "rm -dfr ~/reddit"
- повторный запуск плейбук. Изменение состояние -  репозитория не было.
