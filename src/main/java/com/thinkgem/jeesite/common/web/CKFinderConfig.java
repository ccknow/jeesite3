package com.thinkgem.jeesite.common.web;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;

import com.ckfinder.connector.ServletContextFactory;
import com.ckfinder.connector.configuration.Configuration;
import com.ckfinder.connector.data.AccessControlLevel;
import com.ckfinder.connector.utils.AccessControlUtil;
import com.thinkgem.jeesite.modules.sys.security.SystemAuthorizingRealm.Principal;

/**
 * CKFinder配置
 * @author ThinkGem
 */
public class CKFinderConfig extends Configuration {

	public static final String CK_BASH_URL = "/userfiles/";

	public CKFinderConfig(ServletConfig servletConfig) {
        super(servletConfig);  
    }
	
	@Override
    protected Configuration createConfigurationInstance() {
		boolean isView = SecurityUtils.getSubject().isPermitted("cms:ckfinder:view");
		boolean isUpload = SecurityUtils.getSubject().isPermitted("cms:ckfinder:upload");
		boolean isEdit = SecurityUtils.getSubject().isPermitted("cms:ckfinder:edit");
		AccessControlLevel alc = this.getAccessConrolLevels().get(0);
		alc.setFolderView(isView);
		alc.setFolderCreate(isEdit);
		alc.setFolderRename(isEdit);
		alc.setFolderDelete(isEdit);
		alc.setFileView(isView);
		alc.setFileUpload(isUpload);
		alc.setFileRename(isEdit);
		alc.setFileDelete(isEdit);

		AccessControlUtil.getInstance(this).loadACLConfig();
		try {
			Principal principal = (Principal)SecurityUtils.getSubject().getPrincipal();
			this.baseURL = ServletContextFactory.getServletContext().getContextPath()+"/userfiles/"+
					(principal!=null?principal.getId():0)+"/";

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return new CKFinderConfig(this.servletConf);
    }

    @Override  
    public boolean checkAuthentication(final HttpServletRequest request) {
        return SecurityUtils.getSubject().getPrincipal()!=null;
    }
	
	
	
	
	
	
	
	
	
	
	
	
}
