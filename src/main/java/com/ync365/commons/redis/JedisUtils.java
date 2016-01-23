package com.ync365.commons.redis;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.exceptions.JedisException;

import com.ync365.commons.redis.JedisTemplate.JedisAction;
import com.ync365.commons.redis.pool.JedisPool;

public class JedisUtils {

	private static final String OK_CODE = "OK";
	private static final String OK_MULTI_CODE = "+OK";

	/**
	 * 判断 返回值是否ok.
	 */
	public static boolean isStatusOk(String status) {
		return (status != null) && (OK_CODE.equals(status) || OK_MULTI_CODE.equals(status));
	}

	/**
	 * 在Pool以外强行销毁Jedis.
	 */
	public static void destroyJedis(Jedis jedis) {
		if ((jedis != null) && jedis.isConnected()) {
			try {
				try {
					jedis.quit();
				} catch (Exception e) {
				}
				jedis.disconnect();
			} catch (Exception e) {
			}
		}
	}

	/**
	 * Ping the jedis instance, return true is the result is PONG.
	 */
	public static boolean ping(JedisPool pool) {
		JedisTemplate template = new JedisTemplate(pool);
		try {
			String result = template.execute(new JedisAction<String>() {
				@Override
				public String action(Jedis jedis) {
					return jedis.ping();
				}
			});
			return (result != null) && result.equals("PONG");
		} catch (JedisException e) {
			return false;
		}
	}
}
