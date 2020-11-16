#!/bin/bash
if [ -d "spark-env" ]
then 
    echo "deleting old environemnt"
	rm -rf spark-env
    echo "creating a fresh environemnt"
else
    echo "creating a fresh environemnt"
fi

python3 -m venv spark-env
source spark-env/bin/activate
pip install --upgrade pip
pip3 install -r requirements.txt
echo "adding environmnet to jupyter notebook"
python3 -m ipykernel install --user --name spark-env
deactivate
echo "spark-env kernel created. Please change the kernel to use the latest spark-env kernel"


