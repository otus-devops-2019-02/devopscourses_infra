
# devopscourses_infra
# ansible-2
•	Создан плейбук reddit_app.
•	Создан шаблон mongod.conf.j2 в папке templates.
•	Определена переменная mongo_bind_ip: 0.0.0.0
•	Сделана проверка командой. ansible-playbook reddit_app.yml --check --limit db
•	Добавлен handler для перезапуска moglod.
•	Настройка инстанса приложения
•	Добавлен unit file для сервиса puma.
•	Добавлен handler для перезапуска сервиса puma.
•	Добавлен шаблон и переменную для сервиса puma.
•	Добавлен внутренний адрес бд инстанса в output Terraform
•	Сделана проверка и применен плейбук: ansible-playbook
•	Deploy
•	Добавлен таск для деплоя приложения
•	Сделана проверка и применнытаски с тегом деплоя: ansible-playbook 
•	Один плейбук, несколько сценариев.
•	Созданы сценарии отдельно для приложения и бд
•	Пересоздан окружение stage командами: terraform destroy terraform apply -auto-approve=false
•	Актуализированы ip адреса хостов.
•	Проверлен и раскатан плей для дб: ansible-playbook reddit_app2.yml --tags db-tag
•	То же для приложения: ansible-playbook reddit_app2.yml --tags app-ta
•	То же для деплоя.
•	Несколько плейбуков
•	Разделено приложение, бд и деплой по разным файлам.
•	Создан общий файл site.yml.
•	Пересоздано окружение stage командами: terraform destroy terraform apply -auto-approve=false
•	Актуализированы ip адреса хостов.
•	Проверены плейбуки: ansible-playbook site.yml
•	Провижн в Packer
•	Создан packer_app.yml для установки окружения ruby.
•	Создан packer_db.yml для установки окружения mongod.
•	Create images by: packer build -var-file packer/variables.json packer/app.json packer build -var-file packer/variables.json packer/db.json
•	Recreate stage by: terraform destroy terraform apply -auto-approve
•	
# ansible-1
•	- создана ветка и необходимые папки с файлами
-	установлен pip pip install -r requirements.txt
•	- создана инфраструктуру stage:
•	app_external_ip = 
•	db_external_ip = 
•	- создан файл inventory, проверка доступности хостов командами:
•	ansible appserver -i ./inventory -m ping
•	ansible dbserver -i ./inventory -m ping

•	- cоздана конфигурация ansible, проверка хостов: 
•	ansible dbserver -m command -a uptime
•	appserver -m command -a uptime

-	cозданы группы хостов
•	- созданы inventory.yml и inventory.json,  проверка доступности хостов: 
•	ansible all -i inventory.yml -m ping
•	ansible all -i inventory.json -m ping

-	cоздан плейбук и осуществлен запуск: ansible-playbook clone.yml
-	удаление клона ansible app -i inventory.yml -m shell -a "rm -dfr ~/reddit"
•	- повторный запуск плейбук. Изменение состояние -  репозитория не было.

