# NODESAFE: Bounded and Uniform Energy-based Node-level Out-of-distribution Detection on Graphs

## Dependence

- Ubuntu 20.04
- Cuda 12.1
- Pytorch 1.12.0
- Pytorch Geometric 2.1.0.post1

More information about required packages is listed in `requirements.txt`.



 
We provide the commands with hyper-parameters for all datasets in `NODESAFE/run.sh`. 
For example, for Cora with structure manipulation as OOD, one can run the following scripts for training and evaluation of baseline ***MSP*** and our models.
```shell 
### Cora with structure ood

python main.py --method msp --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --use_prop --use_UB --device 0 --lamda2 12
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --use_prop --use_UB --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0 --lamda2 12
```
