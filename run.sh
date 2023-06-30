pip3 install --upgrade nvitop &
git clone https://github.com/elshor/n1a.git
git clone https://github.com/OpenAccess-AI-Collective/axolotl
cd /root/n1a
python -m venv env
source env/bin/activate
cd ../axolotl
pip3 install -e .
pip3 install -U git+https://github.com/huggingface/peft.git
cd /root/n1a
python finetune.py config2.yml