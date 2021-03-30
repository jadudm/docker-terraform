# In a word...

```
make all
```

This builds two containers: `18f/terraform` and `18f/kitchen-terraform`

Use as

```
docker run -it -v ${PWD}:/src 18f/terraform
```

to get just terraform, and 

```
docker run -it -v ${PWD}:/src 18f/kitchen
```

or 

```
docker run -it -v ${PWD}:/src 18f/kitchen converge
```

as a first step.

