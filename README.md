# AI-Spaghetti_Server

1. clone the repo in your directory:
```
    git clone https://github.com/tanmoy-sabir/AI-Spaghetti_Server
```

2. Copy the MAR file in the directory:
```
    cd AI-Spaghetti_Server/AI_Model/
    wget -c http://bashupload.com/4E4zc/3sBxF.mar -O mech_solutions_model.mar
    cd ../../
```

3. build the dockerfile using following command:
```
    docker build --file Dockerfile -t torchserveAI:mechSolutions
```


4. run the built image using following command:
```
    docker run --rm -it --gpus all -p 8080:8080 -p 8081:8081 -p 8082:8082 -p 7070:7070 -p 7071:7071 retina:gpu
```
