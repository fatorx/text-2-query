from app.services.start import Start


class ServiceFactory:

    def __init__(self):
        pass

    async def create_start(self) -> Start:
        return Start('start service')

