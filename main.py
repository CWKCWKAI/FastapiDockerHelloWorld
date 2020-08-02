# -*- coding: utf-8 -*-
"""
Created on Sun Aug  2 02:13:55 2020

@author: Christoph
"""

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}