 sudo sudo docker run --runtime=nvidia --rm fresh  /bin/bash -c "	
	kipoi get-example DeepSEA/predict -o example && \
	kipoi predict DeepSEA/predict \
 	--dataloader_args='{\"intervals_file\": \"example/intervals_file\", \"fasta_file\": \"example/fasta_file\"}' \
 	-o '/tmp/DeepSEA|predict.example_pred.tsv' && \
	head '/tmp/DeepSEA|predict.example_pred.tsv'"