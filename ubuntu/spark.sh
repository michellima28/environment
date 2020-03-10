# spark
# to install Spark the downloaded file must be at home folder
sudo tar -zxvf spark-2.4.5-bin-hadoop2.7.tgz

export SPARK_HOME='home/michel/spark-2.4.5-bin-hadoop2.7'
export PATH=$SPARK_HOME:$PATH
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON="jupyter notebook"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3

cd spark-2.4.5-bin-hadoop2.7/
cd python/
python3
import pyspark
quit()
cd ..
sudo chmod 777 python
cd python
sudo chmod 777 pyspark

# setting up pyspark
cd 
pip3 install findspark
python3
import findspark
findspark.init('/home/michel/spark-2.4.5-bin-hadoop2.7')
quit()