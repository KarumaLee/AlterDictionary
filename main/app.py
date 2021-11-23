# 部署运行环境 引用外部库
import pymysql  # python与MySQL数据库交互
from flask import Flask, request  # flask库：flask框架本身
from flask_cors import CORS  # flask库：前后端分离时，用于跨域请求
from route_lib.dictionary import dictionary  # 自定义库：辞藻数据库查询搜索
from route_lib.login import login  # 自定义库：用户管理系统

# 链接MySQL数据库

db = pymysql.connect(host='127.0.0.1', user='root', password='Lee020411', database='substitute')
cursor = db.cursor()

# 启动后端服务器

app = Flask(__name__)
CORS(app, resources=r'/*')


@app.route('/test', methods=['GET'])
def hello_world():
    """
    测试函数
    """
    if request.method == 'GET':
        return 'Hello World!\n The app has normal operate ~ ~ ~'


# 路由配置
app.register_blueprint(dictionary)  # 辞藻数据查询
app.register_blueprint(login)  # 用户管理系统

if __name__ == '__main__':
    app.run()
