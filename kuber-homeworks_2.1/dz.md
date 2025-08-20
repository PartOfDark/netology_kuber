# 1
![alt text](image.png)
![alt text](image-1.png)
[volume-deployment](volume-deployment.yml)
# 2
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)
т.к. persistentVolume Retain, то файлы должны сохраниться, а указание осталось на старое PVC
![alt text](image-5.png)
файл после удаления сущности pv остался, т.к. походу мы удалили только сущность и видимо, она за собой не чистит сторедж при удалении, верно?
[pvc-volume-deployment.yml](pvc-volume-deployment.yml)

# 3
![alt text](image-6.png)
[sc-pvc-volume-deployment](sc-pvc-volume-deployment.yml)