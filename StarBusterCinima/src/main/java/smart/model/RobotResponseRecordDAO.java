package smart.model;

import java.util.List;
import java.util.Map;

public interface RobotResponseRecordDAO {
	//insert
	boolean insert(RobotResponseRecordBean bean);
	//select
	//計算年齡層統計 select 6-18 19-
	List<Map<String,Object>> selectAgeLevelCount();
	//計算男女數量
	List<Map<String, Object>> selectBoyGirlCount();
	//收尋各(種類+關鍵字)問題次數
	List<List> selectTypeKeyCount();
	//機器人進行運算匹配
}
