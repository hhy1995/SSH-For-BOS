package com.hhy.test;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.junit.Test;

public class ActivitiTest {
	@Test
	public void test01(){
		//��������
		ProcessEngineConfiguration pec = ProcessEngineConfiguration.createProcessEngineConfigurationFromResource("activiti.cfg.xml");
		//��ȡ�����������
		ProcessEngine processEngine = pec.buildProcessEngine();
	}
}
