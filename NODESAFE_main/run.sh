### Cora with structure ood

python main.py --method msp --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --use_prop --use_UB --device 0 --lamda2 12
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type structure --mode detect --use_bn --use_prop --use_UB --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0 --lamda2 12

### Cora with feature ood

python main.py --method msp --backbone gcn --dataset cora --ood_type feature --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type feature --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type feature --mode detect --use_bn --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type feature --mode detect --use_bn --use_prop --use_UB --device 0 --lamda2 12
python main.py --method nodesafe --backbone gcn --dataset cora --ood_type feature --mode detect --use_bn --use_prop --use_UB --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0 --lamda2 10


### Citeseer with structure ood

python main.py --method msp --backbone gcn --dataset citeseer --ood_type structure --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset citeseer --ood_type structure --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset citeseer --ood_type structure --mode detect --use_bn --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0
python main.py --method nodesafe --backbone gcn --dataset citeseer --ood_type structure --mode detect --use_bn --use_prop --use_UB --device 0 --lamda2 5.0
python main.py --method nodesafe --backbone gcn --dataset citeseer --ood_type structure --mode detect --use_bn --use_prop --use_reg --use_UB --m_in -5 --m_out -1 --alpha 0.01 --device 0 --lamda2 5.0

### Citeseer with feature ood

python main.py --method msp --backbone gcn --dataset citeseer --ood_type feature --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset citeseer --ood_type feature --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset citeseer --ood_type feature --mode detect --use_bn --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0
python main.py --method nodesafe --backbone gcn --dataset citeseer --ood_type feature --mode detect --use_bn --use_prop --use_UB --device 0 --lamda2 5.0
python main.py --method nodesafe --backbone gcn --dataset citeseer --ood_type feature --mode detect --use_bn --use_prop --use_reg --use_UB --m_in -5 --m_out -1 --alpha 0.01 --device 0 --lamda2 1.0


### Pubmed with structure ood

python main.py --method msp --backbone gcn --dataset pubmed --ood_type structure --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset pubmed --ood_type structure --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset pubmed --ood_type structure --mode detect --use_bn --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0
python main.py --method nodesafe --backbone gcn --dataset pubmed --ood_type structure --mode detect --use_bn --use_prop --use_UB --device 0 --lamda2 0.8
python main.py --method nodesafe --backbone gcn --dataset pubmed --ood_type structure --mode detect --use_bn --use_prop --use_reg --use_UB --m_in -5 --m_out -1 --alpha 0.01 --device 0 --lamda2 2

### Pubmed with feature ood

python main.py --method msp --backbone gcn --dataset pubmed --ood_type feature --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset pubmed --ood_type feature --mode detect --use_bn --device 0
python main.py --method nodesafe --backbone gcn --dataset pubmed --ood_type feature --mode detect --use_bn --use_reg --m_in -5 --m_out -1 --alpha 0.01 --device 0
python main.py --method nodesafe --backbone gcn --dataset pubmed --ood_type feature --mode detect --use_bn --use_prop --use_UB --device 0 --lamda2 1.0
python main.py --method nodesafe --backbone gcn --dataset pubmed --ood_type feature --mode detect --use_bn --use_prop --use_reg --use_UB --m_in -5 --m_out -1 --alpha 0.01 --device 0 --lamda2 1.0

