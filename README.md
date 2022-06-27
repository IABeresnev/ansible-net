# Домашнее задание к занятию "08.01 Введение в Ansible"

## Подготовка к выполнению  
Выполненно.  
![task1](images/main_task1.png)   

## Основная часть  
1. Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте какое значение имеет факт `some_fact` для указанного хоста при выполнении playbook'a.  
*Ответ*: Готово, демонстрация на скриншоте ниже.  
![task21](images/main_task2.1.png)    
2. Найдите файл с переменными (group_vars) в котором задаётся найденное в первом пункте значение и поменяйте его на 'all default fact'.  
*Ответ*: Готово, демонстрация на скриншоте ниже.  
![task22](images/main_task2.2.png)   
3. Воспользуйтесь подготовленным (используется `docker`) или создайте собственное окружение для проведения дальнейших испытаний.
4. Проведите запуск playbook на окружении из `prod.yml`. Зафиксируйте полученные значения `some_fact` для каждого из `managed host`.
*Ответ*: Готово, демонстрация на скриншоте ниже.
![task234](images/main_task2.3-4.png) 
5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились следующие значения: для `deb` - 'deb default fact', для `el` - 'el default fact'.
6.  Повторите запуск playbook на окружении `prod.yml`. Убедитесь, что выдаются корректные значения для всех хостов.
*Ответ*: Готово, демонстрация на скриншоте ниже.
![task256](images/main_task2.5-6.png) 
7. При помощи `ansible-vault` зашифруйте факты в `group_vars/deb` и `group_vars/el` с паролем `netology`.
8. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь в работоспособности.
*Ответ*: Готово, демонстрация на скриншоте ниже.
![task278](images/main_task2.7-8.png) 
9. Посмотрите при помощи `ansible-doc` список плагинов для подключения. Выберите подходящий для работы на `control node`.
Ниже представлены команды с помощью которых можно получить ответ.
```
ansible-doc -t connection -l
ansible-doc -t connection local
```
10. В `prod.yml` добавьте новую группу хостов с именем  `local`, в ней разместите localhost с необходимым типом подключения.
11. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь что факты `some_fact` для каждого из хостов определены из верных `group_vars`.
*Ответ*: Готово, демонстрация на скриншоте ниже.
![task211](images/main_task2.11.png) 
12. Заполните `README.md` ответами на вопросы. Сделайте `git push` в ветку `master`. В ответе отправьте ссылку на ваш открытый репозиторий с изменённым `playbook` и заполненным `README.md`.

## Необязательная часть

1. При помощи `ansible-vault` расшифруйте все зашифрованные файлы с переменными.
2. Зашифруйте отдельное значение `PaSSw0rd` для переменной `some_fact` паролем `netology`. Добавьте полученное значение в `group_vars/all/exmp.yml`.
3. Запустите `playbook`, убедитесь, что для нужных хостов применился новый `fact`.
*Ответ*: Готово, демонстрация на скриншоте ниже.
![task323](images/main_task3.2-3.png) 
4. Добавьте новую группу хостов `fedora`, самостоятельно придумайте для неё переменную. В качестве образа можно использовать [этот](https://hub.docker.com/r/pycontribs/fedora).
*Ответ*: Готово, демонстрация на скриншоте ниже.
![task34](images/main_task3.4.png) 
5. Напишите скрипт на bash: автоматизируйте поднятие необходимых контейнеров, запуск ansible-playbook и остановку контейнеров.
*Ответ*: Готово, демонстрация на скриншотах ниже и файл автоматизации во вложении. В файле предусмотрено 2 варианта запуска ансибла. Через запрос пароля и через файл с паролем.
![task51](images/3_allImages.png)
Ситуация когда нет всех необходимых образов и надо скачать.
![task52](images/3_dnwldImages.png)  


---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---
ls
