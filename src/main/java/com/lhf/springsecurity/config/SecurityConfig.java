package com.lhf.springsecurity.config;

import com.lhf.springsecurity.service.SysUserService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.annotation.Resource;
import java.io.PrintWriter;

/**
 * <p></p>
 *
 * @author zy 刘会发
 * @version 1.0
 * @since 2020/5/3
 */
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Resource
    private SysUserService userService;

    /**
     * 密码比对器
     * <p>后续添加用户还会用到，直接将他交给spring管理</p>
     *
     * @return
     */
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    /**
     * 配置用户
     *
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService).passwordEncoder(passwordEncoder());//配置用户提供者，并配置密码比对器
    }

    /**
     * 配置web
     *
     * @param web
     * @throws Exception
     */
    @Override
    public void configure(WebSecurity web) throws Exception {
        super.configure(web);
    }

//    /**
//     * 安全配置
//     *
//     * @param http
//     * @throws Exception
//     */
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests()
//                .antMatchers("/**").permitAll()//所有接口给予任何权限
//                .antMatchers("/hello").hasAuthority("PER_SYSTEM")
//                .antMatchers("/look").hasAuthority("LOOK")
//                .anyRequest().authenticated()
//                .and()
//                .formLogin()
//                .permitAll()
//                .and()
//                .csrf().disable()
//                .cors().disable();
//    }

    /**
     * 安全配置
     *
     * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login.html")//自定义登录页面的url
                .loginProcessingUrl("/login")//登录请求的url
                .successHandler(new LoginSuccessHandler())//添加自定义登陆成功返回
//                .successForwardUrl("/index.html")//登录成功转发url
                .failureHandler(new LoginFailureHandler())//添加自定义登录失败页面
                .permitAll()
                .and()
                .exceptionHandling()
                .accessDeniedHandler((request, response, e) -> {
//                    自定义无权访问返回
                    request.setCharacterEncoding("utf-8");
                    response.setCharacterEncoding("utf-8");
                    PrintWriter writer = response.getWriter();
                    writer.write("hello,you don't have permission");
                    writer.flush();
                    writer.close();
                })
                .authenticationEntryPoint((request, response, e) -> {
//                    自定义未登录时返回
                    request.setCharacterEncoding("utf-8");
                    response.setCharacterEncoding("utf-8");
                    PrintWriter writer = response.getWriter();
                    writer.write("hello,you need login");
                    writer.flush();
                    writer.close();
                })
                .and()
                .csrf().disable()
                .cors().disable();
    }
}
