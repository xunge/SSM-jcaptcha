package com.xunge.springemp.service.impl;

/**
 * Created by xunge on 2017/7/10.
 */
import com.octo.captcha.engine.CaptchaEngine;
import com.octo.captcha.service.CaptchaServiceException;
import com.octo.captcha.service.multitype.GenericManageableCaptchaService;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年11月24日 下午1:21:50
 * @version V1.0
 */
public class CustomGenericManageableCaptchaService extends GenericManageableCaptchaService{

    /**
     * @param captchaEngine
     * @param minGuarantedStorageDelayInSeconds
     * @param maxCaptchaStoreSize
     */
    public CustomGenericManageableCaptchaService(CaptchaEngine captchaEngine, int minGuarantedStorageDelayInSeconds,
                                                 int maxCaptchaStoreSize) {
        super(captchaEngine, minGuarantedStorageDelayInSeconds, maxCaptchaStoreSize);
        // TODO Auto-generated constructor stub
    }
    /**
     * 修改验证码校验逻辑，默认的是执行了该方法后，就把sessionid从store当中移除<br/>
     * 然而在ajax校验的时候，如果第一次验证失败，第二次还得重新刷新验证码，这种逻辑不合理<br/>
     * 现在修改逻辑，只有校验通过以后，才移除sessionid。 Method Name：validateResponseForID .
     *
     * @param ID
     * @param response
     * @return
     * @throws CaptchaServiceException
     *             the return type：Boolean
     */
    @Override
    public Boolean validateResponseForID(String ID, Object response)
            throws CaptchaServiceException {
        if (!this.store.hasCaptcha(ID)) {
            throw new CaptchaServiceException(
                    "Invalid ID, could not validate unexisting or already validated captcha");
        }
        Boolean valid = this.store.getCaptcha(ID).validateResponse(response);
        //源码的这一句是没被注释的，这里我们注释掉，在下面暴露一个方法给我们自己来移除sessionId
        //this.store.removeCaptcha(ID);
        return valid;
    }

    /**
     * 移除session绑定的验证码信息.
     * Method Name：removeCaptcha .
     * @param sessionId
     * the return type：void
     */
    public void removeCaptcha(String sessionId){
        if(sessionId!=null && this.store.hasCaptcha(sessionId)){
            this.store.removeCaptcha(sessionId);
        }
    }

}