uv run predict.py \
    --checkpoint_path=checkpoints/scifact.ckpt \
    --input_file=datasets/scifact/data/claims_dev.jsonl \
    --corpus_file=datasets/scifact/data/corpus.jsonl \
    --output_file=prediction/scifact.jsonl