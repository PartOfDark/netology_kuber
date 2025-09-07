 
Проблема: Отсутствовали ns web, data.  
Решение: Добавил необходимые ns.  

![alt text](image.png)

![alt text](image-1.png)

Проблема:Под падает при ошибке скачивания образа.

![alt text](image-2.png)

![alt text](image-3.png)

Cмотрим ивенты в поде, вывод: используется старая схема.  
Можно либо заменить на более новый имедж, либо установить переменную 
`CONTAINERD_ENABLE_DEPRECATED_PULL_SCHEMA_1_IMAGE=1.

![alt text](image-4.png)

Заменил старый образ на новый, ноды успешно запустились.  

![alt text](image-5.png)