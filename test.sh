iverilog -o m_design top.sv test.sv 
vvp m_design > result.csv
pipreqs ./
pip install -r requirements/requirements.txt
python3 test.py