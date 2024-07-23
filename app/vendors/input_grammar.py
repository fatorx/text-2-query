import spacy


class MessageGrammar:
    EN_CORE: str = "en_core_web_sm"

    def __init__(self):
        self.nlp = spacy.load(self.EN_CORE)

    def check_syntax(self, text) -> bool:
        doc = self.nlp(text)
        grammar_tags = {"VERB", "AUX", "ADP", "ADV"}
        items = [token.text for token in doc if token.pos_ in grammar_tags]

        return len(items) > 0
