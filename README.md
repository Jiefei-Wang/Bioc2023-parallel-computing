# Outline
High level concept
1. What is Parallel computing
2. Giraff example
3. How to do parallel computing in general
3.1 Start a main process
3.2 Start worker process
3.3 send tasks to workers
3.4 receive and combine results from workers

Diagram

Job(cake)
task1, task2, task3,...
worker1, worker2, worker3 ...kids
kiss


4. How parallel package can help us

5. How BiocParallel comes to play
5.1 SnowParam
5.2 MulticoreParam
5.3 RedisParam: Server centered framework

6. SharedObject


7. performance tips

8. All together 

docker build -t parallel .
docker run -p 6379:6379 -p 8787:8787 -e PASSWORD=bioc -d parallel
 