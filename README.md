# ReScript Project Template

- [Installation](../../README.md)

Official ReScript starter template.

## Installation

```sh
pnpm install
```

## Issue

`rescript format -all` freezes when running on too many .res files. To test run the below:

```
mkdir src
```

```
./create-files.sh <num-files> src
```

select a large number of files (70+) and then run:

```
rescript format -all
```
