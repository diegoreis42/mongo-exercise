# NoSQL - MongoDB

![project demonstration](./assets/demonstration.gif)

That's the delivery of the first NoSQL class's homework, nothing too fancy, just basic documents manipulation with queries, updates, deletions and inserts. Each exercise
is written in his `js` file in `queries/` and the results are in the `output/` directory. 
For instance, the answer for the exercise `a` is in `queries/a.js` and the result in `output/a-result.json` ~~but only after running the docker command :)~~.
All the data used was from [northwind's](https://github.com/jasny/mongodb-northwind) repository.

# How to run

Clone the repo, go to the root directory and run: 

```sh
docker-compose up
```

And we are done 😄

You may have some issues with the 'output' directory permissions, if that's the case run: 

```sh
sudo chmod -R 777 output
```

before running the docker command.

