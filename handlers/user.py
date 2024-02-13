from aiogram import F, Router, types
from aiogram.filters import Command, CommandStart, or_f

from kb import reply
from data import  personal, mylinks, myskills

user_router = Router()


@user_router.message(CommandStart())
async def start(message: types.Message):
    await message.answer("Hello, I'm CV bot", reply_markup=reply.start_kb)


@user_router.message(or_f(Command("about_me"), (F.text.lower() == "about me")))
async def about(message: types.Message):
    await message.answer(text=personal)


@user_router.message(or_f(Command("links"), (F.text.lower() == "links")))
async def links(message: types.Message):
    await message.answer(text=mylinks)


@user_router.message(or_f(Command("skills"), (F.text.lower() == "skills")))
async def skills(message: types.Message):
    await message.answer(text=myskills)


@user_router.message(F.text)
async def other(message: types.Message):
    await message.answer("I don't have this option")
