if [ ! -e '/check' ]; then
    touch /check
    # 初回起動時に実行させたいコマンド
    echo export PYTHONPATH="/usr/src/app/src/py:$PYTHONPATH" >> ~/.bashrc
    source ~/.bashrc
    pip config set global.trusted-host "pypi.org files.pythonhosted.org pypi.python.org"
    echo "セットアップ"
else
    # 2回目以降
    echo "セットアップ済"
fi
pip install --upgrade  pip setuptools
pip install -r requirements.txt