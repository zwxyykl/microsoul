package com.hust.microsoul.service;

import com.github.pagehelper.PageInfo;
import com.hust.microsoul.model.ContentsModel;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author LemonLin
 * @Description :ContentService
 * @date 2018/3/3-17:38
 */
@Service
public interface ContentService {
    ContentsModel addContent(ContentsModel contentsModel,String upLoadedImgUrl);


//    管理员后台分页显示商品首页内容
    PageInfo<ContentsModel> showContentsList(Integer page, Integer rows);
    //通过cid获取内容
    List<ContentsModel> selectContentVByCid(Integer cid);

    //管理员后台删除商品首页内容
    public void deleteByPrimaryKeySelective(Integer contentId) ;

//管理员后台修改商品首页内容
    public int updateByExampleSelective(ContentsModel record);
}
