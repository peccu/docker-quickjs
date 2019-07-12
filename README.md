# Docker QuickJS

This container image includes Fabrice Bellard's [QuickJS Javascript Engine](https://bellard.org/quickjs/).

QuickJS's documentation is [here](https://bellard.org/quickjs/quickjs.html).

# Usage

## run qjs

```
$ docker run -it --rm --name qjs peccu/qjs qjs
QuickJS - Type "\h" for help
qjs > console.log("Hello World");
Hello World
undefined
qjs >
```

## run sh in container

WORKDIR is `/work`.

```
$ docker run -it -v $PWD:/work --rm --name qjs peccu/qjs
/work # qjs -m /quickjs/examples/hello_module.js
Hello World
fib(10)= 55
/work # 
```

`doc/` and `examples/` are in `/quickjs`.

`qjs`, `qjsc`, `run-test262`, `qjsbn`, `qjsbnc`, `run-test262-bn` are in `$PATH`.
