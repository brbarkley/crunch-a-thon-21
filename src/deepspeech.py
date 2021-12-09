import os
from pathlib import Path
from pydub import AudioSegment

pwd = Path(".")

sound = AudioSegment.from_mp3(pwd / "data" / "raw" / "key210720_1000_archive.mp3")
sound.export(
    pwd / "data" / "processed" / "wav" / "key210720_1000_archive.wav", 
    format="wav"
    )