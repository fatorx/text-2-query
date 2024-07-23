from app.services.start import Start
from app.services.language_model import LanguageModelService
from app.vendors.factory import VendorFactory

class ServiceFactory:

    async def create_language_model(self) -> LanguageModelService:
        factory_vendor = VendorFactory()
        model_process = factory_vendor.create_vanna_ia()

        return LanguageModelService(model_process)

    async def create_start(self) -> Start:
        return Start('start service')

