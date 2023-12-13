# Doubts asked during the session:

**1. Why class values are encoded to numbers though KNN supports string values as target?**

It's always better to encode the target to numbers so that the data preprocessed can be used as such when checking out the performance of  different algorithms with this data without changing or modifying it again and again.

**2. Is there any specific way of choosing the K value?**

No, K value, the hyper parameter of this algorithm, is chosen based on trial and error method, though in the session we looked at a method of choosing an optimum K value where we iteratively trained the model with different K values (from 1 to 40) and found the error rate in each iteration and plotted them against the K values. From the plot, we were able to find the K value that yielded the least error rate and hence we chose that K value for the data we're using.

**3. Can random state be only 42?**

Not necessarily, it can be any number other than 0. A non-zero number will make sure that the data shuffled for training and testing remains the same how many ever times we rerun the codes. When it's 0, a different set of training and testing data will be created every time we rerun it and thus making it difficult to comment or optimize the performance of the model.
