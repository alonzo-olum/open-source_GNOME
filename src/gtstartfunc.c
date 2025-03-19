#include <gtk/gtk.h>

#include "gtstart.h"

static gint
delete_event_cb(GtkWidget* window, GdkEventAny* e,gpointer data)
{
	gtk_main_quit();
	return FALSE;
}

static void
button_click_cb(GtkWidget* w, gpointer data)
{
	GtkWidget* label;
	gchar* text;
	gchar* tmp;

	label=GTK_WIDGET(data);
	gtk_label_get(GTK_LABEL(label), &text);
	tmp=g_strdup(text);

	g_strreverse(tmp);

	gtk_label_set_text(GTK_LABEL(label), tmp);
	g_free(tmp);
}
