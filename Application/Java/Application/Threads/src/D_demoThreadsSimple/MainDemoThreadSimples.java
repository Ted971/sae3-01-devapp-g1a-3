package D_demoThreadsSimple;


class MyRunnable implements Runnable {

	@Override
	public void run() {
		int i = 0;
		while (i<1000) {
			System.out.println("R2 : "+Thread.currentThread()+ " : " +i);
			i++;

//			try { 
//				Thread.sleep((long)(Math.random()*3));
//			} catch (InterruptedException e) { e.printStackTrace(); }
		}
	}
}


public class MainDemoThreadSimples {

	public static void main(String[] args) {
		
		Runnable r1 = new Runnable() {
			
			@Override
			public void run() {
				int i = 0;
				while (i<1000) {
					System.out.println("R1 : "+Thread.currentThread()+ " : " +i);
					i++;
					
//					try { 
//						Thread.sleep((long)(Math.random()*3));
//					} catch (InterruptedException e) { e.printStackTrace(); }
				}
			}
		};
		
		Runnable r2 = new MyRunnable();
		
		/* A NE PAS FAIRE
		  
		r1.run();
		r2.run();
		
		*/
		
		/*
		// Points arrêts : ici et sur les i++
		
		Thread t1 = new Thread(r1);
		Thread t2 = new Thread(r2);
	
		t1.start();
		t2.start();
		
		*/
	}
}
