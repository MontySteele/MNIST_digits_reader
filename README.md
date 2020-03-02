# MNIST_digits_reader

This repo contains my code for running a Naive Bayes classifier on the MNIST dataset.

'MNIST_SQL_exploration.R' contains my code for downloading the MNIST train and test datasets.
'MNIST_exploration.R' contains my code for examining and cleaning the data.

'mnist_train.csv' contains the MNIST training dataset. The test dataset is excluded as the filesize is too large to store on a free Git repo.

'MNIST_NB_final.ipynb' contains my Python code for running the Naive Bayes model.
'MNIST_NB_final PDF.pdf' is a PDF copy of this code.

Summary:

MNIST Dataset – Naïve Bayes Classifier

Business problem: Save taxpayers time and money by checking handwritten tax forms for numerical mistakes. Last year, the IRS reports that 12% of  individual taxpayers filed handwritten tax returns, and 20% of those returns contained mistakes, vs. 0.5% for electronic returns. By using machine learning, I propose to scan handwritten tax returns to check for numerical errors.

For this problem, I used a Naïve Bayes Classifier trained on the MNIST data set (10k training examples, 60k test examples). Using an R script containing SQL commands, I pulled the train and test databases from a remote server, and dropped three columns which contained repeats of the column index. The data was otherwise clean.

The Naïve Bayes Classifier was coded in Python in a Jupyter notebook. I found that after tuning hyperparameters, I achieved a maximum of 95.1% accuracy on the test dataset. Measures for human performance vary between 97.5% and 99.8%, so my model is between somewhat to much worse than a human on this task.
