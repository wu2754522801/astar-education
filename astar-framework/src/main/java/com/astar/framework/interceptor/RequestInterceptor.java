package com.astar.framework.interceptor;

import com.alibaba.fastjson2.JSON;
import com.astar.common.config.AstarConfig;
import com.astar.common.core.domain.AjaxResult;
import com.astar.common.core.domain.entity.SysUser;
import com.astar.common.core.domain.model.LoginUser;
import com.astar.common.utils.SecurityUtils;
import com.astar.common.utils.ServletUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class RequestInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 检查是否是演示环境
        boolean isDemoEnv = AstarConfig.getDemo();
        try {
            LoginUser loginUser = SecurityUtils.getLoginUser();
            SysUser user = loginUser.getUser();
            String userType = user.getUserType();
            if ("00".equals(userType) && isDemoEnv  && !user.getUserName().equals("admin")) {
                // 获取请求的方法类型
                String method = request.getMethod();
                // 检查是否是DELETE或UPDATE请求
                if (isDemoEnv && ("DELETE".equalsIgnoreCase(method) || "PUT".equalsIgnoreCase(method))) {
                    // 演示环境不允许执行DELETE或UPDATE操作
                    AjaxResult ajaxResult = AjaxResult.error("不允许在演示环境中执行此操作。");
                    ServletUtils.renderString(response, JSON.toJSONString(ajaxResult));
                    return false;
                }
            }
        } catch (Exception e) {

        }
        // 如果不是DELETE或UPDATE请求，或者不是演示环境，正常处理
        return true;
    }
}