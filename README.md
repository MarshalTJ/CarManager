注意须知:
1.包名:命名以com.carmanager.webapp始,最后名(bean,controller,iDao,mapping,service,service.impl),方便spring
    查找,避免各自配置过多,原则上spring-mybatis.xml尽量少修改<br>
2.iDao与mapping包下内容统一用mybatis-generator生成,iDao层统一以Dao命名结尾,同理 service以及serviceImpl命名相同<br>
3.jdbc中 mysql数据库账套就用 root , 空 的形式存了,避免过多修改<br>
4.版本基于1.7,注意project facets中java版本的设置,以及编译版本的设置<br>
                         待续。。。。
