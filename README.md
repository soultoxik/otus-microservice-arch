# otus-microservices pt.1

## deploy
`kubectl apply -f .`

## delete
`./delete.sh`

## tests
### liveness
`curl http://arch.homework/health`
should be: 200
```
{"Status":"OK"}
```
### readiness

`curl http://arch.homework/ready` 
maybe one of: 200, 500
```
{"Status":"OK"}
{"Status":"Error"}

```
### rewriting
`curl -I -k http://arch.homework/otusapp/soultoxik/ready` 
should be:
```
HTTP/1.1 302 Moved Temporarily
Content-Type: text/html
Content-Length: 138
Connection: keep-alive
Location: http://arch.homework/ready
```

### echo
`curl http://arch.homework/something`
should be:
```
something
```