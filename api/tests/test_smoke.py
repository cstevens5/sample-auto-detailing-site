from app.main import app


def test_app_initializes() -> None:
    assert app is not None
