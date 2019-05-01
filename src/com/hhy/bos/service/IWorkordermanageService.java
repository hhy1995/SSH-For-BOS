package com.hhy.bos.service;

import java.util.List;

import com.hhy.bos.domain.Workordermanage;

public interface IWorkordermanageService{

	public void save(Workordermanage model);

	public List<Workordermanage> findListNotStart();

	public void start(String id);

	public Workordermanage findById(String workordermanageId);

	public void checkWorkordermanage(String taskId, Integer check, String workordermanageId);

}
