from aiogram.types import KeyboardButton, ReplyKeyboardMarkup

start_kb = ReplyKeyboardMarkup(
    keyboard=[
        [
            KeyboardButton(text="About me"),
            KeyboardButton(text="Links"),
            KeyboardButton(text="Skills"),
        ],
    ],
    resize_keyboard=True,
)
