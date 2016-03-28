package logic;
public class LineGraph {
	public LineNodeSet getLineNodeSet(String strKey){
		
		LineNodeSet nodeSet = new LineNodeSet();
		
		int hash = strKey.hashCode();
		int flag = 8191;
		
		int start = 6000;
		int addOrSub = hash & 1;
		if(addOrSub == 1){
			start = start + (hash & 1023);
		}else{
			start = start - (hash & 1023);
		}
		nodeSet.setNode(0, start);
		//1
		for(int i=1;i<7;i++){
			int incd = hash & flag;
			if(incd == 0) incd = 2000;
			while(incd < 2000) incd = incd << 1;
			hash = hash >>> 2;
			nodeSet.setNode(i, nodeSet.getNode(i-1)+incd);
		}
		
		if(nodeSet.getNode(6) > 40000){
			int coefficient = hash & 15;
			double ratio = ((double)nodeSet.getNode(6)+coefficient)/40000;
			for(int i=0;i<7;i++){
				nodeSet.setNode(i, (int)(nodeSet.getNode(i)/ratio));
			}
		}else if(nodeSet.getNode(6) < 20000){
			int coefficient = hash & 15;
			double ratio = ((double)nodeSet.getNode(6)+coefficient)/20000;
			for(int i=0;i<7;i++){
				nodeSet.setNode(i, (int)(nodeSet.getNode(i)/ratio));
			}
		}
		
		return nodeSet;
	}
	
	public static void main(String[] args){
		LineGraph lineGraph = new LineGraph();
		LineNodeSet nodeSet =  lineGraph.getLineNodeSet("123123ffdsafdsafdsafsad");
		for(int i=0;i<7;i++){
			System.out.println(nodeSet.getNode(i));
		}
	}
}
