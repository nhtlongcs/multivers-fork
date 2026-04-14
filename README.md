The original MultiVerS repository is broken with the latest version of dependencies. This fork contains fixes to get the code running again, and also adds some features such as support for GPU inference. The README below is updated to reflect these changes. For the original README, see [the original README.md](https://github.com/dwadden/multivers/).

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