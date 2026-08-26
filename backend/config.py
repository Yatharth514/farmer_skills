from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    database_url:str
    redis_url:str
    jwt_algorithm:str="HS256"
    jwt_secret:str
    jwt_expiry_time:int=60*24*7
    otp_expiry_seconds:int=120
    otp_max_attempts:int=4

    class Config:
        env_file=".env"

settings=Settings()