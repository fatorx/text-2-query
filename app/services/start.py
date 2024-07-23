class Start:
    def __init__(self, message: str):
        self.message = message

    async def get_message(self) -> dict:
        content = "Go to kernel."
        if self.message == 'Where?':
            content = "Go to root."

        data = {
            "content": content,
        }

        return data
