# spring-petclinic-practice

An attempt to deploy this practice example (from: [`spring-projects`](https://github.com/spring-projects/spring-petclinic)) in a runable Docker image. 

STATUS: WIP

Pull image from: [Docker Hub](https://hub.docker.com/r/valarier/spring-petclinic/tags)

```
docker build valarier/spring-petclinic:testing
```
```
docker run -p 8082:8080 valarier/spring-petclinic
```
