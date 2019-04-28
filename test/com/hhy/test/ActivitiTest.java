package com.hhy.test;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.junit.Test;

public class ActivitiTest {
	@Test
	public void test01(){
		//引擎配置
		ProcessEngineConfiguration pec = ProcessEngineConfiguration.createProcessEngineConfigurationFromResource("activiti.cfg.xml");
		//获取流程引擎对象
		ProcessEngine processEngine = pec.buildProcessEngine();
	}
}
