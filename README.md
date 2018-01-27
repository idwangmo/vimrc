# Vim配置

一个简单的vim配置

## 键位配置

键位 | 含义
--- | ---
\<F3> | 开启NerdTree
\<F4> | 开启tagbar
\<Leader>l | 重新绘制
\<Leader>y | 使用yapf
\<Leader>s | 使用isort
\<Learder>gd | YCM跳转的定义
Ctrl+c | 补全模板
\<Leader>h | 水平分割
\<Leader>v | 竖直分割
\<Leader>ga | 添加到git
\<Leader>gc | 创建commit
\<Leader>gsh | git push
\<Leader>gll | git pull
\<Leader>gs | git status
\<Leader>gb | git blame
\<Leader>gd | git diff
\<Leader>gr | 移除文件
\<Leader>ea | 对齐
\<Leader>d | indent

## 附注

使用了Youcomplete，所以得做两件事情：

1. 复制`.ycm_extra_conf.py`到用户目录下
2. 创建一个空的`.tern_project`文件

