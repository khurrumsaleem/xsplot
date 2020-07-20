
import streamlit as st
# import json
import pandas as pd
# import plotly.graph_objects as go


@st.cache
def load_data():
        df = pd.read_json('FENDL-3.1d_index.json')
        return df

df=load_data()

st.title('Xsplot')
st.markdown('Plot neutron cross sections for different istopes')

df2 = df

# select_box_values=[]
# for col in df2:
#     select_box_value = st.selectbox(
#                                     label=col,
#                                     options=df2[col].unique())
#     # st.sidebar.selectbox(label=col, options=df2[col].unique())
#     select_box_values.append(select_box_value)
#     if select_box_value:
#         if select_box_value !='':
#             filter_v[col]= select_box_value

opts = df2['Proton number / element'].unique()


filter_v = {}
select_box_value = st.selectbox(key=1,
                                label='Proton number / element',
                                options=opts)

# print(df_['Proton number / element'].unique())
if select_box_value!='':
    filter_v['Proton number / element']= select_box_value

df2 = df2.loc[(df2[list(filter_v)] == pd.Series(filter_v)).all(axis=1)]


filter_v = {}
select_box_value = st.selectbox(key=2,
                                label='Mass number',
                                options=df2['Mass number'].unique())

# print(df_['Mass number'].unique())
if select_box_value!='':
    filter_v['Mass number']= select_box_value

df2 = df2.loc[(df2[list(filter_v)] == pd.Series(filter_v)).all(axis=1)]


opts = df2['Proton number / element'].unique()



# filter_v = make_select_boxes(df2)

print(len(df2))

# print(columns)
print(filter_v)
# df2.set_index(inplace=True)
# st.dataframe()
st.dataframe(df2)

# filter_v = make_select_boxes(df2)
