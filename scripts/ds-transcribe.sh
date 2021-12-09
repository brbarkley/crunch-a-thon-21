# Transcribe an audio file
deepspeech --model src/deepspeech-0.9.3-models.pbmm \
    --scorer src/deepspeech-0.9.3-models.scorer \
    --audio data/processed/wav/key211021_1000_archive.wav