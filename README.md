The original MultiVerS repository is broken with the latest version of dependencies. This fork contains fixes to get the code running again, and also adds some features such as support for GPU inference. The README below is updated to reflect these changes. For the original README, see [the original README.md](https://github.com/dwadden/multivers/).

> Disclaimer: The patches implemented in this fork are quick fixes to get the code running again, and may not be the best way to implement the features. Such as multiple GPU support, etc. If you have any suggestions on how to improve the code, please feel free to open a PR.

---

```bash
# Tested on 
Python 3.10
torch 2.8.0
lightning 2.5
transformers 4.2.2 
```

*Checkpoint loading changed in the new version of Hugging Face Transformers, so the version of Transformers is pinned to the original version. It may be possible to update the code to work with the latest version of Transformers, but it may require some modifications, which is not the focus of this fork.*


## Usage

Currently, this fork only supports inference on the SciFact dataset. 

### Download the pretrained model

```bash
uv run get_checkpoint.py longformer_large_science
uv run get_checkpoint.py scifact
cd checkpoints/
bash longformer.sh
```

### Download the dataset

```bash
bash data.sh
```

### Run inference

```bash
sh run.sh
```