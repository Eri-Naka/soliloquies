package com.internousdev.soliloquies.util;

import java.util.List;
import java.util.Map;

import com.internousdev.soliloquies.dao.TweetDAO;
import com.internousdev.soliloquies.dto.TweetDTO;

public class TweetUtil {

	public static boolean select(int userId, Map<String, Object> session){

		TweetDAO tweetDao = new TweetDAO();
		List<TweetDTO> tweets = tweetDao.select(userId);

		if (tweets != null){
			session.put("tweets", tweets);
			return true;
		}else{
			return false;
		}
	}
}
