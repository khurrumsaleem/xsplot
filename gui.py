
import streamlit as st
# import json
# import pandas as pd
# import plotly.graph_objects as go


# @st.cache
# def load_data():
#         path_to_json = "outputs"
#         list_files = [pos_json for pos_json in os.listdir(path_to_json) if pos_json.endswith('.json')]
#         resultdict = []
#         for filename in tqdm(list_files):
#                 try:
#                         with open(os.path.join(path_to_json, filename), "r") as inputjson:
#                                 resultdict.append(json.load(inputjson))
#                 except:
#                         print(filename)

#         results_df = pd.DataFrame(resultdict)
#         print(results_df)
#         return results_df


st.title('Xsplot')
st.text('Plot neutron cross sections for different istopes')
