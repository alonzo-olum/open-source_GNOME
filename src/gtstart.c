#include<gtk/gtk.h>

#include "gtstart.h"

int main(int argc, char** argv){
	GtkWidget* window;
	GtkWidget* button;
	GtkWidget* label;
	
	gtk_init(&argc,&argv);
	window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	button= gtk_button_new();

	label = gtk_label_new("Start 101!");
	gtk_container_add(GTK_CONTAINER(button),label);
	gtk_container_add(GTK_CONTAINER(window),button);

	gtk_window_set_title(GTK_WINDOW(window),"Start X");
	gtk_container_set_border_width(GTK_CONTAINER(button),10);

	gtk_signal_connect(GTK_OBJECT(window),
			"delete_event",
			GTK_SIGNAL_FUNC(delete_event_cb),
			NULL);
	gtk_signal_connect(GTK_OBJECT(button),
			"clicked",
			GTK_SIGNAL_FUNC(button_click_cb),
			label);

	gtk_widget_show_all(window);
	gtk_main();
	return 0;
}
