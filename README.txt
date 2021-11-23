后端软件介绍

项目名称：辞藻替换
项目版本：（测试版）0.1   最后更新时间：2021-5-22
项目概述：
    利用flask框架以及MySQL数据库，通过前端的关键词可以完成简单的数据搜索并以数组的形式反馈给前端，同时通过前端登录功能进行简单的用户鉴权，

项目环境部署：
    Python 3+
    flask pymysql flask_cors openpyxl

项目功能概述：
    1、检索功能：
        1.1 成语关键词搜索
            路由地址：/dictionary/dictionary_vocabulary_search
            路由函数：dictionary_vocabulary_search()
            输入数据：(char) kwd -> 搜索用关键字
            输出数据：[json](char_array) data -> 搜索结果
            eg:
                INPUT:  kwd =
                OUTPUT: data =
        1.2 名言关键词搜索
        1.2 诗歌关键词搜索
    2、登录功能：
        1.1 用户注册
        1.2 用户登录
        1.3 用户名修改
        1.4 密码修改
        1.5 添加到收藏夹
        1.6 查看收藏夹