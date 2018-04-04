package com.thinkgem.jeesite.modules.cms.entity;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import org.apache.commons.io.FileUtils;


/**
 * User: songlai
 */
public class FileTpl {

    private File file;
   	// 应用的根目录
   	private String root;
   	
   	private String code;

   	private String tmpname;

   	public FileTpl() {}
   	
   	public FileTpl(File file, String root) {
   		this.file = file;
   		this.root = root;
   	}

    public File getFile() {
        return file;
    }
    public void setFile(File file) {
        this.file = file;
    }
	
    public String getRoot() {
        return root;
    }
    public void setRoot(String root) {
        this.root = root;
    }
    

	public String getTmpname() {
		return tmpname;
	}

	public void setTmpname(String tmpname) {
		this.tmpname = tmpname;
	}
	
   	public String getFilename() {
   		return file.getName();
   	}
   	
	public String getName() {
   		String ap = file.getAbsolutePath().substring(root.length());
   		ap = ap.replace(File.separatorChar, '/');
   		// 在resin里root的结尾是带'/'的，这样会导致getName返回的名称不以'/'开头。
   		if (!ap.startsWith("/")) {
   			ap = "/" + ap;
   		}
   		return ap;
   	}

	
    public String getParent(){
        String ap = file.getParent().substring(root.length());
        ap = ap.replace(File.separatorChar, '/');
        // 在resin里root的结尾是带'/'的，这样会导致getName返回的名称不以'/'开头。
        if (!ap.startsWith("/")) {
            ap = "/" + ap;
        }
        return ap;
    }
	
   	public String getPath() {
   		String name = getName();
   		return name.substring(0, name.lastIndexOf('/'));
   	}


   	public String getSource() {
   		if (file.isDirectory()) {
   			return null;
   		}
   		try {
   			return FileUtils.readFileToString(this.file, "UTF-8");
   		} catch (IOException e) {
   			throw new RuntimeException(e);
   		}
   	}
   	//获取用户更新的代码
   	public void setSource(String code){
   		this.code = code;
   	}
    public String getCode(){
    	return code;
    }
   	
   	
   	public long getLastModified() {
   		return file.lastModified();
   	}

   	public Date getLastModifiedDate() {
   		return new Timestamp(getLastModified());
   	}

   	public long getLength() {
   		return file.length();
   	}

   	public int getSize() {
   		return (int) (getLength() / 1024) + 1;
   	}

   	public boolean isDirectory() {
   		return file.isDirectory();
   	}
	
}
