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
 sudo sudo docker run --runtime=nvidia --rm docker_img  /bin/bash -c "	
	kipoi get-example DeepSEA/predict -o example && \
	kipoi predict DeepSEA/predict \
 	--dataloader_args='{\"intervals_file\": \"example/intervals_file\", \"fasta_file\": \"example/fasta_file\"}' \
 	-o '/tmp/DeepSEA|predict.example_pred.tsv' && \
	head '/tmp/DeepSEA|predict.example_pred.tsv'"
```
