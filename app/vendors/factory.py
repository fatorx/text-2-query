from app.vendors.vanna_ai import VannaAI
from app.vendors.translate import Translate

class VendorFactory:
    def create_vanna_ia(self) -> VannaAI:
        translator = Translate()
        return VannaAI(translator)
