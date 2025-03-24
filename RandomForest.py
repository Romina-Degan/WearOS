#Random forest can be used for classification and regression tasks predicting values over a series of models and create an aggregated prediction
#After bootstrap sampling is complete, feature sampling needs to be selected where a random subset of relevant features are used to build the tree
# Ensuring that the trees are diverse in their descsion/prediction making process 

def getSplit(dataset, n_features):
    