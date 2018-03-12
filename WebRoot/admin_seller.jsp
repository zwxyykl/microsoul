<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>灵微网卖家个人中心</title>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
    <!--vue核心库-->
    <!-- 引入样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui@2.0.11/lib/theme-chalk/index.css">
    <!-- 引入组件库 -->
    <script src="https://unpkg.com/element-ui@2.0.11/lib/index.js"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
     </script>

</head>

<body>
    <div id="app">

        <el-container>
            <el-aside width="300px">
                <myaside></myaside>
            </el-aside>
            <el-main>
                <goods_manage></goods_manage>
            </el-main>
        </el-container>
        <el-footer></el-footer>
        </el-container>
    </div>
</body>

<script type="text/x-template" id='aside'>
    <el-row>
        <el-col :span="24">
            <el-menu default-active="1" class="el-menu-vertical-demo" :unique-opened="true" @open="handleOpen" @close="handleClose" :router='true'>
                <el-submenu index="1">
                    <template slot="title">
            <i class="el-icon-location"></i>
            <span>用户管理</span>
          </template>
                    <el-menu-item index="2-1"><a href="/admin_buyers.jsp">买家管理</a></el-menu-item>
                    <el-menu-item index="2-2"><a href="/admin_seller.jsp">卖家管理</a></el-menu-item>
                    </el-menu-item>
                </el-submenu>
                <el-submenu index="2">
                    <template slot="title">
            <i class="el-icon-menu"></i>
            <span>广告管理</span>
          </template>
                    <el-menu-item index="2-1"><a href="/admin_advertise.jsp">广告管理</a></el-menu-item>
                </el-submenu>

            </el-menu>
        </el-col>
    </el-row>
</script>
<script type="text/x-template" id="goods_manage">
    <div>
        <h1>卖家管理</h1>
        <el-table :data="goods_info" :stripe="true" style="width: 100%">
            <el-table-column prop="name" label="用户名" width="180px"></el-table-column>
            <el-table-column prop="adv" label="地点" width="180px"></el-table-column>
            <el-table-column prop="time" label="经营时长" width="100px"></el-table-column>
            <el-table-column prop="e_male" label="邮箱" width="180px"></el-table-column>
            <el-table-column label="操作">
                <template slot-scope="scope">
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
            </el-table-column>
        </el-table>
    </div>
</script>
<script>
    Vue.component('myaside', {
        template: '#aside',
        data() {
            return {
                isCollapse: true
            }
        },
        methods: {
            handleOpen(key, keyPath) {
                console.log(key, keyPath);
            },
            handleClose(key, keyPath) {
                console.log(key, keyPath);
            }
        }
    });
    Vue.component('goods_manage', {
        template: '#goods_manage',
        data() {
            return {
                goods_info: [ //需要传入的数据
                    {
                        name: '精品女装',
                        adv: '广州',
                        time: '5',
                        e_male: '34441334@163.com'
                    }, {
                        name: 'iphone专营店',
                        adv: '杭州',
                        time: '10',
                        e_male: 'leifenga123@163.com'
                    }, {
                        name: '精品饰品',
                        adv: '深圳',
                        time: '6',
                        e_male: '53313236@qq.com'
                    }, {
                        name: '街头男装',
                        adv: '天津',
                        time: '13',
                        e_male: 'leixiaojun33@yahoo.com'
                    }, {
                        name: '笔记本专营店',
                        adv: '广州',
                        time: '9',
                        e_male: '977663873@qq.com'
                    }
                ]

            }
        },
        methods: {
            handleEdit(index, row) {

            },
            handleDelete(index, row) {
                this.$confirm('此操作将会删除用户信息，是否继续？', '警告', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {

                    this.$message({
                        type: 'success',
                        message: '删除成功!'
                    });
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                })
            }
        }

    });


    new Vue({
        el: '#app',
        created: function() { //挂载数据
            axios.get()
        }
    });
</script>

</html>