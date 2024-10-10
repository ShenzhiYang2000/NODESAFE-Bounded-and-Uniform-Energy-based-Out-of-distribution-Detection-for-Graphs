
from __future__ import print_function

import torch
import torch.nn as nn
import torch.nn.functional as F


class UB_loss(nn.Module):
    def __init__(self, lamda1=0.999):
        super(UB_loss, self).__init__()
        self.lamda1 = lamda1

    def forward(self, _features, labels=None, _features_out=None, epoch=None):

        if _features_out is not None:
            features = torch.cat((_features, _features_out), 0)
        else: features = _features

        modulus = features.norm(dim=1, p=2)
        modulus_mean = torch.abs(torch.mean(modulus)).detach_()
        modulus_var = torch.var(modulus)


        Sum = _features.sum(dim=1)
        Sum_mean = torch.mean(Sum).detach_()
        Sum_var = torch.var(Sum)


        if _features_out is not None:
            Sum_out = _features_out.sum(dim=1)
            Sum_mean_out = torch.abs(torch.mean(Sum_out)).detach_()
            Sum_var_out = torch.var(Sum_out)


        if _features_out is not None:
            if epoch > 120:
                modulus_loss = self.lamda1 * modulus_var / modulus_mean  + (1-self.lamda1) * Sum_var / Sum_mean + (1-self.lamda1) * Sum_var_out / Sum_mean_out
            else:
                modulus_loss = self.lamda1 * modulus_var / modulus_mean  

        else:
            if epoch > 20:
                modulus_loss = self.lamda1 * modulus_var / modulus_mean + (1-self.lamda1) * Sum_var / Sum_mean 

            else:
                modulus_loss = 0


        return modulus_loss, modulus_mean 








