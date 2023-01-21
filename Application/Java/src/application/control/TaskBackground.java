package application.control;

import java.io.IOException;
import java.util.TimerTask;

import application.view.MainFrameController;
import javafx.application.Platform;

//Code d'une tâche gérée par Timer qui met à jour aléatoirement un quartier des LineChart.

public class TaskBackground extends TimerTask {

	// Controller pour la mise à jour des LineChart
	private MainFrameController mf;

	// Constructeur
	// _mf : le controller contenant les LineChart
	public TaskBackground(MainFrameController _mf) {
		this.mf = _mf;
	}

	// Corps de la tâche lorsque elle est activée
	@Override
	public void run() {
		// Mise en file d'attente (dans un Runnable) de la mise à jour des LineChart via mf.doGraphique()
		// Ce Runnable sera exécuté par le thread GUI "dès que possible"
		Platform.runLater(new Runnable() {
			@Override
			public void run() {
				try {
					TaskBackground.this.mf.doGraphique();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		});
	}
}
