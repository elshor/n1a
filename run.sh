git config --global user.email "elshor@gmail.com"
git config --global user.name "Elchanan Shor"
git clone https://github.com/elshor/n1a.git
git clone https://github.com/OpenAccess-AI-Collective/axolotl

# set python env
cd /root/n1a
python -m venv env
source env/bin/activate
cd ../axolotl
pip3 install -e .
pip3 install -U git+https://github.com/huggingface/peft.git

# install nvitop so we can view state of gpu and memory
pip3 install --upgrade nvitop

#install b2 for file sync
pip3 install --upgrade b2

# actual training
cd /root/n1a
python finetune.py config2.yml

# if everything is ok then first delete the checkpoints
git lfs install
git lfs track "*.bin"
git add .
git commit -m "training"
git push origin master
