package spring.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.slf4j.Logger;

@Aspect

@Component

public class LoggingAspect {

	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Before("execution(* spring.model.PersonJDBCTemplate.*(..))")

	public void logBeforeAllMethods(JoinPoint joinPoint) {

		LOGGER.debug("****LoggingAspect."

				+ "logBeforeAllMethods() : "

				+ joinPoint.getSignature().getName());

	}

	@Before("execution(* spring.model.PersonJDBCTemplate.getPerson(..))")

	public void logBeforeGetPerson(JoinPoint joinPoint) {

		LOGGER.debug("****LoggingAspect."

				+ "logBeforeGetPerson() : "

				+ joinPoint.getSignature().getName());

	}

	@Before("execution(* spring.model.PersonJDBCTemplate.create(..))")

	public void logBeforeAddPerson(JoinPoint joinPoint) {

		LOGGER.debug("****LoggingAspect." + "logBeforeCreatePerson() : "

				+ joinPoint.getSignature().getName());

	}

	@After("execution(* spring.model.PersonJDBCTemplate.*(..))")

	public void logAfterAllMethods(JoinPoint joinPoint) {

		LOGGER.debug("****LoggingAspect." + "logAfterAllMethods() : "

				+ joinPoint.getSignature().getName());

	}

	@After("execution(* spring.model.PersonJDBCTemplate.getPerson(..))")

	public void logAfterGetPerson(JoinPoint joinPoint) {

		LOGGER.debug("****LoggingAspect." + "logAfterGetPerson() : "

				+ joinPoint.getSignature().getName());

	}

	@After("execution(* spring.model.PersonJDBCTemplate.create(..))")

	public void logAfterAddPerson(JoinPoint joinPoint) {

		LOGGER.debug("****LoggingAspect." + "logAfterCreatePerson() : "

				+ joinPoint.getSignature().getName());

	}

}