import pytest
from unittest.mock import AsyncMock

from kb import reply
from handlers.user import skills, start, about, links
from data import  personal, mylinks, myskills

@pytest.mark.asyncio
async def test_start():
    message = AsyncMock()
    await start(message)
    message.answer.assert_called_with("Hello, I'm CV bot", reply_markup=reply.start_kb)
    
@pytest.mark.asyncio
async def test_links():
    message = AsyncMock()
    await links(message)
    message.answer.assert_called_with(text=mylinks)

@pytest.mark.asyncio
async def test_about():
    message = AsyncMock()
    await about(message)

    message.answer.assert_called_with(text=personal)
    
@pytest.mark.asyncio
async def test_skills():
    message = AsyncMock()
    await skills(message)
    message.answer.assert_called_with(text=myskills)
    
