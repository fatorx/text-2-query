import subprocess

from transformers import AutoTokenizer, AutoModelForSeq2SeqLM


class HuggingFaceTranslator:
    PT_EN_T5: str = "unicamp-dl/translation-pt-en-t5"
    response_string: str = ""

    def __init__(self):
        self.tokenizer = AutoTokenizer.from_pretrained(self.PT_EN_T5)
        self.model = AutoModelForSeq2SeqLM.from_pretrained(self.PT_EN_T5)

    def translate_pt_to_en(self, text):
        input_text = "translate Portuguese to English: " + text
        input_ids = self.tokenizer(input_text, return_tensors="pt").input_ids

        outputs = self.model.generate(
            input_ids,
            max_length=128,
            num_beams=5,
            early_stopping=True
        )

        return self.tokenizer.decode(outputs[0], skip_special_tokens=True)

