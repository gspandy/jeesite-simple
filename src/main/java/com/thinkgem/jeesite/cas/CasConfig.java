/**
 * 
 */
package com.thinkgem.jeesite.cas;

/**
 * @author Administrator
 *
 */
public class CasConfig {

	/*
	 * cas.server.url=http://10.148.16.27:8580/cas/
	 * client.project.url=http://192.168.6.99:8080/product_admin
	 */
	private String casUrl;

	private String clientUrl;

	public String getCasUrl() {
		return casUrl;
	}

	public void setCasUrl(String casUrl) {
		this.casUrl = casUrl;
	}

	public String getClientUrl() {
		return clientUrl;
	}

	public void setClientUrl(String clientUrl) {
		this.clientUrl = clientUrl;
	}

}
