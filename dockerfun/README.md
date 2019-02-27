README:
=======
The dockerfile is based on [fast-ai docker files](\https://github.com/Paperspace/fastai-docker/tree/master/fastai-v3
)


[Install nvidia docker]( https://github.com/NVIDIA/nvidia-docker)


```bash
cd dockerfun
sudo docker build dockerdir -t  docker_img

```

run smth in container 

```bash
sudo docker run --runtime=nvidia --rm nvidia/cuda:9.0-base  'nvidia-smi'
```