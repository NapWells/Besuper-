package com.liu.takeout.aopLog;

import com.liu.takeout.dao.ManagerMapper;
import com.liu.takeout.entity.Manager;
import com.liu.takeout.service.impl.ManagerServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class ManagerLogTest {
    @Resource
    ManagerServiceImpl managerService;

    @Resource
    private ManagerMapper managerMapper;

@Test
public void testAround() throws Exception {
    Manager manager = new Manager();
    manager.setId(2);
    manager.setPassword("1");
    manager.setName("哈哈");
    System.out.println(managerService.updateManager(manager));
    System.out.println(managerMapper.selectByPrimaryKey(2));
}


} 
