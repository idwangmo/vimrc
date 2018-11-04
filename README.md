# Vim配置

此配置使用的[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)作为补全的
后端，最近我用lsp重新更新了我的vim的配置，并且吸收了
[MaskRay](https://github.com/MaskRay/Config/tree/master/home)
的配置管理思想，将我的配置移动到了我的
[dotfiles](https://github.com/idwangmo/dotfiles)
配置仓库中，此镜像我将不再维护。


## 键位配置

键位 | 含义
--- | ---
\<F3> | 开启NerdTree
\<F4> | 开启tagbar
\<Leader>l | 重新绘制
\<Leader>y | 局部使用yapf
\<Leader>Y | 对文件使用YAPF
\<Leader>I | 使用isort
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
\<Leader>gdf | git diff
\<Leader>gr | 移除文件
\<Leader>ea | 对齐
\<Leader>d | indent
Ctrl+y | Emment的补全键位

## 附注

使用了Youcomplete，所以得做两件事情：

1. 复制`.ycm_extra_conf.py`到用户目录下
2. 创建一个空的`.tern_project`文件

需要额外下载的工具：

1. yapf
2. flake8
3. fzf

### Mac的环境

1. 在Mac上面使用，请注意键位
2. 需要下载nerd-font


