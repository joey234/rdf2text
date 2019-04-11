python generate_train_dataset.py \
  -path ./challenge_data_train_dev/dev \
  -src_mode  flat \
  -src ./dataset/dev.src \
  -tgt ./dataset/dev.tgt



python OpenNMT-py/preprocess.py -train_src dataset/train.src -train_tgt dataset/train.tgt -valid_src dataset/dev.src -valid_tgt dataset/dev.tgt -save_data dataset/webnlg


python OpenNMT-py/train.py -data dataset/webnlg -save_model baseline-model --train_steps 20000
