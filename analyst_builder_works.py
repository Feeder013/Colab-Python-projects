# -*- coding: utf-8 -*-
"""Analyst builder works.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1E-vcOXmLactIR4Or8xOcXm6b_1dK6R7L
"""

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

2 + 4

df = pd.read_csv(r'/all_stocks_5yr.csv', encoding ='ISO-8859-1')
df

df.plot(x='date', y='close',xlabel='date of price',ylabel='closing price',title='Daily Stock Closing Price')

company_df = df[df['Name'] == 'AAL']
company_df.plot(x='date', y='close',xlabel='date of price',ylabel='closing price',title='Daily AAL Stock Closing Price')

Grouped_df = df.groupby('Name')['volume'].sum().reset_index()
Grouped_df

Grouped_df.plot(x='Name', y= 'volume',kind='bar')

Some_df = Grouped_df[Grouped_df['Name'].isin(['AAL','AAPL','MSFT'])]
Some_df.plot(x='Name', y= 'volume',kind='bar')

company_df.plot(x='open',y='close', kind='scatter')

hist_plot = company_df['high'].plot(kind='hist',bins=15)
hist_plot

pie_df = df[df['Name'].isin(['AAL','GOOG','AAPL'])]
pie_df.groupby('Name')['volume'].sum().plot(kind='pie')

company_df[['open','high','low','close']].plot(kind='box')

x =[1,2,3,4,5]
y =[5,10,20,30,40]
plt.figure(figsize=(20,10))
plt.plot(x,y, label='Showers',color='green',marker='^',linestyle='--')
z =np.arange(0,10,2)
plt.plot(x,z, label='Baths',color='red',marker='o',linestyle='dotted')
plt.xlabel('X axis')
plt.ylabel('Y axis')

plt.title('Matplotlib Viz')
plt.xticks([1,2,3])
plt.yticks([0,5,10,15,20])
plt.legend()

plt.savefig(r"C:\Users\DELL\Documents\5 year stock.png")
plt.show()