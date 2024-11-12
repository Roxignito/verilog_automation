import pandas as pd
import numpy as np
import pandas as pd
import plotly.graph_objects as go
import plotly.express as px
import datetime
from plotly.subplots import make_subplots
import plotly.graph_objects as go
from plotly.colors import n_colors
import matplotlib.pyplot as plt



df= pd.read_csv("result.csv");
df.set_index(['Time'], inplace = True)
df.plot(subplots=True,figsize=(100,20),kind='area')
plt.savefig('my_plot.png')
plt.show()

#fig.show()