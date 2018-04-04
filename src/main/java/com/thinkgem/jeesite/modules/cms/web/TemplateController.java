package com.thinkgem.jeesite.modules.cms.web;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.io.IOUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.FileTpl;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.service.FileTplService;
import com.thinkgem.jeesite.modules.cms.service.SiteService;

/**
 * 站点Controller
 * @author SongLai
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/template")
public class TemplateController extends BaseController {

    @Autowired
   	private FileTplService fileTplService;
    @Autowired
   	private SiteService siteService;

    @RequiresPermissions("cms:template:edit")
   	@RequestMapping(value = "")
   	public String index() {
   		return "modules/cms/tplIndex";
   	}

    @RequiresPermissions("cms:template:edit")
   	@RequestMapping(value = "tree")
   	public String tree(Model model) {
        Site site = siteService.get(Site.getCurrentSiteId());
   		model.addAttribute("templateList", fileTplService.getListForEdit(site.getSolutionPath()));
   		return "modules/cms/tplTree";
   	}

    @RequiresPermissions("cms:template:edit")
   	@RequestMapping(value = "form")
   	public String form(String name, Model model) {
        model.addAttribute("template", fileTplService.get(name));
        model.addAttribute("tmpname", name);
   		return "modules/cms/tplForm";
   	}

    @RequiresPermissions("cms:template:edit")
   	@RequestMapping(value = "help")
   	public String help() {
   		return "modules/cms/tplHelp";
   	}
    
    @RequiresPermissions("cms:template:edit")
   	@RequestMapping(value = "save")
   	public String save(FileTpl template , Model model) {
    	String name = template.getTmpname();
    	FileTpl file = fileTplService.get(name);
    	OutputStream out = null;
    	String sourceCode = file.getSource();
    	String targetCode = template.getCode();
    	
    	try {
	    	
	    	if(!targetCode.equals(sourceCode)){
	    		out = new FileOutputStream(file.getFile());
	    	
					IOUtils.write(targetCode, out, "UTF-8");
					System.out.println("~~~~~~~~~~~内容更改了~~~~~~~");
	    	}else{
	    		System.out.println("！！！！！！！！！！！！！！内容没有更改！！！！！！！！！！");
	    	}
	    	

    	} catch (IOException e) {
			e.printStackTrace();
		}finally{
			IOUtils.closeQuietly(out);
		}
    	
    	
 /*   	System.out.println("*******filename*******"+file.getName());
    	//1、根据文件名读取原来的文件内容
    	InputStream oldInput = IOUtils.toInputStream(file.getSource());
    	
    	//2、获取更改有的模版内容
    	InputStream newInput = IOUtils.toInputStream(template.getCode());
    	
    	//3、比较内容是否一样
    	OutputStream out = null;
    	try {
    		out = new FileOutputStream(file.getFile());
			if(!IOUtils.contentEquals(oldInput , newInput)){
				IOUtils.copy(newInput, out);
				System.out.println("~~~~~~~~~~~内容更改了~~~~~~~");
			}else{
				System.out.println("！！！！！！！！！！！！！！内容没有更改！！！！！！！！！！");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			IOUtils.closeQuietly(oldInput);
			IOUtils.closeQuietly(newInput);
			IOUtils.closeQuietly(out);
		}*/
        model.addAttribute("template", fileTplService.get(name));
        model.addAttribute("tmpname", name);
   		return "modules/cms/tplForm";
   	}
}
