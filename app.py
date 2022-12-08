from flask import Flask, render_template, request
import numpy as np
import pickle

from joblib import load
model = load('Model/Model.pkl')

from sklearn import preprocessing

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        Country  = request.form['Country']
        Sub_Category= request.form['Sub_Category']
        Segment = request.form['Segment']
        Order_Priority = request.form['Order_Priority']
        Region = request.form['Region']
        Market = request.form['Market']
        Category = request.form['Category']
        Per_Unit_Selling_price = request.form['Per_Unit_Selling_price']
        Quantity = request.form['Quantity']
        Ship_Mode = request.form['Ship_Mode']
        Shipping_Cost = request.form['Shipping_Cost']
        
        X1=[int(Per_Unit_Selling_price),int(Quantity),int(Shipping_Cost)]
        X2=[str(Country), str(Sub_Category), str(Segment),str(Order_Priority),str(Region),str(Market),str(Category),str(Ship_Mode)]
        
       
        le = preprocessing.LabelEncoder()
        X2_encoded = le.fit_transform(X2)
        
        X4_encoded = np.array(X2_encoded)
        X3=np.array(X1)

        full_X = np.concatenate((X3, X4_encoded))

        full_X = full_X.reshape(1, -1)
    
        
        pred = model.predict(full_X) / 100
        print(pred)
        return render_template('index.html', pred=str(pred))
    
    return render_template('index.html')

if __name__ == '__main__':
    app.run( )
