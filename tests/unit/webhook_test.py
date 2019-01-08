import pytest
import ouroboros.webhook as webhook


def test_webook_schema_error():
    with pytest.raises(Exception):
        assert webhook.post(urls=['http:/my-false-url'], container_name='test_name', old_sha='1', new_sha='2')