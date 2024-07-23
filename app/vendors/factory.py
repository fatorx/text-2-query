from app.vendors.vanna_ai import VannaAI
from app.vendors.huggingface_translate import HuggingFaceTranslator
from app.vendors.input_grammar import MessageGrammar


class VendorFactory:
    def create_vanna_ia(self) -> VannaAI:
        translator = HuggingFaceTranslator()
        message_verbs = MessageGrammar()
        return VannaAI(translator, message_verbs)

