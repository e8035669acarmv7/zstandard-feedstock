
:: Existing egg_info directory causes failure in windows.
rd /s /q zstandard.egg-info

%PYTHON% setup.py install --with-system-zstd --single-version-externally-managed --record=record.txt
if errorlevel 1 exit 1
