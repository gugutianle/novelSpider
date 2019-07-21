### 小说采集器

#### python 环境
+ python 2.7
+ mysql 5.7.9

#### 项目安装
``` bash
pip install novelSpider
```

#### MySQL 配置
```
# 加入 mysqld.cnf
# * Encode
init_connect='SET collation_connection = utf8_unicode_ci'
init_connect='SET NAMES utf8'
character-set-server=utf8
collation-server=utf8_unicode_ci
skip-character-set-client-handshake
```


#### 项目运行
``` python
from novelSpider.task import Task

class Config(object):
    '''
    @desc：数据库配置
    @param：username 数据库用户名
    @param：password 数据库密码
    '''
    def __init__(self):
        self.username = 'root'
        self.password = 'root'
        self.database = 'novel'

# 创建任务实例
task = Task()

# 创建爬虫实例
spider = task.createDownloader(Config)

# 下载小说书目信息、章节列表
spider.getCharptList(novelNum=1)

# 下载小说书目信息、章节列表
spider.getCharptContent(novelId=0, charptNum=1)
```

#### 版本日志
##### 0.0.13 版本
``` bash
# 支持下载小说书目信息、章节列表、章节内容
```
